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
-- CREATED		"Thu Dec 08 23:40:09 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mcp IS 
	PORT
	(
		raz_n :  IN  STD_LOGIC;
		clk_50 :  IN  STD_LOGIC;
		data_in :  IN  STD_LOGIC;
		sens :  IN  STD_LOGIC;
		butee_d :  IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
		butee_g :  IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
		duty :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		freq :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		cs :  OUT  STD_LOGIC;
		un_M :  OUT  STD_LOGIC;
		out_pwm :  OUT  STD_LOGIC;
		out_sens :  OUT  STD_LOGIC;
		fin_course_g :  OUT  STD_LOGIC;
		fin_course_d :  OUT  STD_LOGIC
	);
END mcp;

ARCHITECTURE bdf_type OF mcp IS 

COMPONENT chip_select
	PORT(start_c : IN STD_LOGIC;
		 clk_1M : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 cs : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT reg_decalage
	PORT(start_conv : IN STD_LOGIC;
		 cs : IN STD_LOGIC;
		 clk_1M : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 data_in : IN STD_LOGIC;
		 data_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

COMPONENT div1m
	PORT(clk_50 : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 clk_1M : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT controle_butees
	PORT(pwm : IN STD_LOGIC;
		 sens : IN STD_LOGIC;
		 angle_barre : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 butee_d : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 butee_g : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 out_pwm : OUT STD_LOGIC;
		 out_sens : OUT STD_LOGIC;
		 fin_course_g : OUT STD_LOGIC;
		 fin_course_d : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT div10
	PORT(raz_n : IN STD_LOGIC;
		 clk_1M : IN STD_LOGIC;
		 start_conv : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pwm
	PORT(clk : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 duty : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 freq : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 pwm_out : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(11 DOWNTO 0);


BEGIN 
cs <= SYNTHESIZED_WIRE_3;
un_M <= SYNTHESIZED_WIRE_9;



b2v_inst : chip_select
PORT MAP(start_c => SYNTHESIZED_WIRE_8,
		 clk_1M => SYNTHESIZED_WIRE_9,
		 raz_n => raz_n,
		 cs => SYNTHESIZED_WIRE_3);


b2v_inst1 : reg_decalage
PORT MAP(start_conv => SYNTHESIZED_WIRE_8,
		 cs => SYNTHESIZED_WIRE_3,
		 clk_1M => SYNTHESIZED_WIRE_9,
		 raz_n => raz_n,
		 data_in => data_in,
		 data_out => SYNTHESIZED_WIRE_6);


b2v_inst2 : div1m
PORT MAP(clk_50 => clk_50,
		 raz_n => raz_n,
		 clk_1M => SYNTHESIZED_WIRE_9);


b2v_inst3 : controle_butees
PORT MAP(pwm => SYNTHESIZED_WIRE_5,
		 sens => sens,
		 angle_barre => SYNTHESIZED_WIRE_6,
		 butee_d => butee_d,
		 butee_g => butee_g,
		 out_pwm => out_pwm,
		 out_sens => out_sens,
		 fin_course_g => fin_course_g,
		 fin_course_d => fin_course_d);


b2v_inst4 : div10
PORT MAP(raz_n => raz_n,
		 clk_1M => SYNTHESIZED_WIRE_9,
		 start_conv => SYNTHESIZED_WIRE_8);


b2v_inst5 : pwm
PORT MAP(clk => clk_50,
		 raz_n => raz_n,
		 duty => duty,
		 freq => freq,
		 pwm_out => SYNTHESIZED_WIRE_5);


END bdf_type;