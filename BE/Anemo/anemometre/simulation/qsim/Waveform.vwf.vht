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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/11/2022 14:28:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Block1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Block1_vhd_vec_tst IS
END Block1_vhd_vec_tst;
ARCHITECTURE Block1_arch OF Block1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_50M : STD_LOGIC;
SIGNAL continu : STD_LOGIC;
SIGNAL data_anemometre : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_valid : STD_LOGIC;
SIGNAL in_freq_anemometre : STD_LOGIC;
SIGNAL raz_n : STD_LOGIC;
SIGNAL start_stop : STD_LOGIC;
COMPONENT Block1
	PORT (
	CLK_50M : IN STD_LOGIC;
	continu : IN STD_LOGIC;
	data_anemometre : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_valid : OUT STD_LOGIC;
	in_freq_anemometre : IN STD_LOGIC;
	raz_n : IN STD_LOGIC;
	start_stop : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Block1
	PORT MAP (
-- list connections between master ports and signals
	CLK_50M => CLK_50M,
	continu => continu,
	data_anemometre => data_anemometre,
	data_valid => data_valid,
	in_freq_anemometre => in_freq_anemometre,
	raz_n => raz_n,
	start_stop => start_stop
	);

-- CLK_50M
t_prcs_CLK_50M: PROCESS
BEGIN
	CLK_50M <= '1';
	WAIT FOR 1000000 ps;
	FOR i IN 1 TO 49
	LOOP
		CLK_50M <= '0';
		WAIT FOR 1000000 ps;
		CLK_50M <= '1';
		WAIT FOR 1000000 ps;
	END LOOP;
	CLK_50M <= '0';
WAIT;
END PROCESS t_prcs_CLK_50M;

-- start_stop
t_prcs_start_stop: PROCESS
BEGIN
	start_stop <= '0';
	WAIT FOR 7680000 ps;
	start_stop <= '1';
	WAIT FOR 55040000 ps;
	start_stop <= '0';
WAIT;
END PROCESS t_prcs_start_stop;

-- continu
t_prcs_continu: PROCESS
BEGIN
	continu <= '0';
	WAIT FOR 150000 ps;
	continu <= '1';
	WAIT FOR 560000 ps;
	continu <= '0';
	WAIT FOR 50490000 ps;
	continu <= '1';
	WAIT FOR 11520000 ps;
	continu <= '0';
WAIT;
END PROCESS t_prcs_continu;

-- raz_n
t_prcs_raz_n: PROCESS
BEGIN
	raz_n <= '0';
	WAIT FOR 51200000 ps;
	raz_n <= '1';
	WAIT FOR 5120000 ps;
	raz_n <= '0';
WAIT;
END PROCESS t_prcs_raz_n;

-- in_freq_anemometre
t_prcs_in_freq_anemometre: PROCESS
BEGIN
	in_freq_anemometre <= '1';
	WAIT FOR 87040000 ps;
	in_freq_anemometre <= '0';
WAIT;
END PROCESS t_prcs_in_freq_anemometre;
END Block1_arch;
