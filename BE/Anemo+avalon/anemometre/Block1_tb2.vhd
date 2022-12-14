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
-- Generated on "10/18/2022 11:25:27"
                                                            
-- Vhdl Test Bench template for design  :  Block1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Block1_tb2 IS
END Block1_tb2;

ARCHITECTURE Block1_arch OF Block1_tb2 IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_50M : STD_LOGIC :='0';
SIGNAL continu : STD_LOGIC := '1';
SIGNAL data_anemometre : STD_LOGIC_VECTOR(7 DOWNTO 0):= "00001000";
SIGNAL data_valid : STD_LOGIC :='0';
SIGNAL in_freq_anemometre : STD_LOGIC :='0';
SIGNAL raz_n : STD_LOGIC :='0';
SIGNAL start_stop : STD_LOGIC :='0';


COMPONENT Block1
	PORT (
	CLK_50M : IN STD_LOGIC;
	continu : IN STD_LOGIC;
	data_anemometre : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_valid : BUFFER STD_LOGIC;
	in_freq_anemometre : IN STD_LOGIC;
	raz_n : IN STD_LOGIC;
	start_stop : IN STD_LOGIC
	);
END COMPONENT;


--clock period
	constant clk_period: time := 20 ns;
	-- freq period
	constant frq_period: time := 5 ms;
	
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
--init : PROCESS                                               
-- variable declarations                                     
                                                        
        -- code that executes only once   

-- clock process 
		clk_process : process 
		begin 
			CLK_50M <= '0';
			wait for clk_period/2;
			CLK_50M <= '1';
			wait for clk_period/2;
		end process;

-- freq process
		frq_process : process
		begin
		 
			in_freq_anemometre <= '0';
			wait for frq_period/2;
			in_freq_anemometre <= '1';
			wait for frq_period/2;

		end process;	
		
	--	stim_proc : process
	--	begin
			
		
			
	--	end process;
		
--WAIT;                                                       
--END PROCESS init;                                           
--always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
--BEGIN                                                         
        -- code executes for every event on sensitivity list  
--WAIT;                                                        
--END PROCESS always;                                          
END Block1_arch;
