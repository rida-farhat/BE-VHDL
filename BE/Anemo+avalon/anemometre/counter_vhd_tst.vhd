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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/18/2022 15:27:52"
                                                            
-- Vhdl Test Bench template for design  :  counter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counter_vhd_tst IS
END counter_vhd_tst;
ARCHITECTURE counter_arch OF counter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cnt : STD_LOGIC_VECTOR(7 DOWNTO 0):= "00001000";
SIGNAL in_freq : STD_LOGIC;
SIGNAL raz_n : STD_LOGIC :='0';
COMPONENT counter
	PORT (
	cnt : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	in_freq : IN STD_LOGIC;
	raz_n : IN STD_LOGIC
	);
END COMPONENT;

	constant frq_period: time := 5 ms;


BEGIN
	i1 : counter
	PORT MAP (
-- list connections between master ports and signals
	cnt => cnt,
	in_freq => in_freq,
	raz_n => raz_n
	);

clk_process : process 
		begin 
			in_freq <= '0';
			wait for frq_period/2;
			in_freq <= '1';
			wait for frq_period/2;
		end process;
                                         
END counter_arch;
