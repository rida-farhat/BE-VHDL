-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Tue Nov 08 08:24:12 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY anemometre2 IS 
	PORT
	(
		raz_n :  IN  STD_LOGIC;
		clk_50 :  IN  STD_LOGIC;
		continu :  IN  STD_LOGIC;
		start_stop :  IN  STD_LOGIC;
		in_freq :  IN  STD_LOGIC;
		data_valid :  OUT  STD_LOGIC;
		hz :  OUT  STD_LOGIC;
		data_anemometre :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END anemometre2;

ARCHITECTURE bdf_type OF anemometre2 IS 

COMPONENT counter2
	PORT(clk_50 : IN STD_LOGIC;
		 in_freq : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 frq : OUT  integer range 0 to 255
	);
END COMPONENT;

COMPONENT anemo
	PORT(HZ : IN STD_LOGIC;
		 clk_50 : IN STD_LOGIC;
		 continu : IN STD_LOGIC;
		 start_stop : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 frq : IN  integer range 0 to 255;
		 data_valid : OUT STD_LOGIC;
		 data_anemometre : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT diviseur2
	PORT(clk_50 : IN STD_LOGIC;
		 hz : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :   integer range 0 to 255;


BEGIN 
hz <= SYNTHESIZED_WIRE_0;



b2v_inst : counter2
PORT MAP(clk_50 => clk_50,
		 in_freq => in_freq,
		 raz_n => raz_n,
		 frq => SYNTHESIZED_WIRE_1);


b2v_inst1 : anemo
PORT MAP(HZ => SYNTHESIZED_WIRE_0,
		 clk_50 => clk_50,
		 continu => continu,
		 start_stop => start_stop,
		 raz_n => raz_n,
		 frq => SYNTHESIZED_WIRE_1,
		 data_valid => data_valid,
		 data_anemometre => data_anemometre);


b2v_inst2 : diviseur2
PORT MAP(clk_50 => clk_50,
		 hz => SYNTHESIZED_WIRE_0);


END bdf_type;