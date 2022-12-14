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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/18/2022 14:02:40"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block1 IS
    PORT (
	CLK_50M : IN std_logic;
	continu : IN std_logic;
	start_stop : IN std_logic;
	in_freq_anemometre : IN std_logic;
	raz_n : IN std_logic;
	data_valid : BUFFER std_logic;
	data_anemometre : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Block1;

-- Design Ports Information
-- data_valid	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- continu	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_stop	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50M	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_freq_anemometre	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- raz_n	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50M : std_logic;
SIGNAL ww_continu : std_logic;
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_in_freq_anemometre : std_logic;
SIGNAL ww_raz_n : std_logic;
SIGNAL ww_data_valid : std_logic;
SIGNAL ww_data_anemometre : std_logic_vector(7 DOWNTO 0);
SIGNAL \in_freq_anemometre~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_valid~output_o\ : std_logic;
SIGNAL \data_anemometre[0]~output_o\ : std_logic;
SIGNAL \data_anemometre[1]~output_o\ : std_logic;
SIGNAL \data_anemometre[2]~output_o\ : std_logic;
SIGNAL \data_anemometre[3]~output_o\ : std_logic;
SIGNAL \data_anemometre[4]~output_o\ : std_logic;
SIGNAL \data_anemometre[5]~output_o\ : std_logic;
SIGNAL \data_anemometre[6]~output_o\ : std_logic;
SIGNAL \data_anemometre[7]~output_o\ : std_logic;
SIGNAL \CLK_50M~input_o\ : std_logic;
SIGNAL \CLK_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \start_stop~input_o\ : std_logic;
SIGNAL \continu~input_o\ : std_logic;
SIGNAL \b2v_inst4|tmp~0_combout\ : std_logic;
SIGNAL \b2v_inst4|data_valid~q\ : std_logic;
SIGNAL \in_freq_anemometre~input_o\ : std_logic;
SIGNAL \in_freq_anemometre~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|cpt[0]~21_combout\ : std_logic;
SIGNAL \raz_n~input_o\ : std_logic;
SIGNAL \b2v_inst2|cpt[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|cpt~0_combout\ : std_logic;
SIGNAL \b2v_inst2|cpt~1_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|clk_1hz~0_combout\ : std_logic;
SIGNAL \b2v_inst2|clk_1hz~1_combout\ : std_logic;
SIGNAL \b2v_inst2|clk_1hz~q\ : std_logic;
SIGNAL \b2v_inst6|etat[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|edge~0_combout\ : std_logic;
SIGNAL \b2v_inst6|edge~q\ : std_logic;
SIGNAL \b2v_inst4|tmp1[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp~1_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp~2_combout\ : std_logic;
SIGNAL \b2v_inst4|data_anemometre~0_combout\ : std_logic;
SIGNAL \b2v_inst4|data_anemometre[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|cpt[1]~7_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp1[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp~3_combout\ : std_logic;
SIGNAL \b2v_inst4|data_anemometre~2_combout\ : std_logic;
SIGNAL \b2v_inst|cpt[1]~8\ : std_logic;
SIGNAL \b2v_inst|cpt[2]~9_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp1[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp~4_combout\ : std_logic;
SIGNAL \b2v_inst4|data_anemometre~3_combout\ : std_logic;
SIGNAL \b2v_inst|cpt[2]~10\ : std_logic;
SIGNAL \b2v_inst|cpt[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp1[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp~5_combout\ : std_logic;
SIGNAL \b2v_inst4|data_anemometre~4_combout\ : std_logic;
SIGNAL \b2v_inst|cpt[3]~12\ : std_logic;
SIGNAL \b2v_inst|cpt[4]~13_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp1[4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp~6_combout\ : std_logic;
SIGNAL \b2v_inst4|data_anemometre~5_combout\ : std_logic;
SIGNAL \b2v_inst|cpt[4]~14\ : std_logic;
SIGNAL \b2v_inst|cpt[5]~15_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp1[5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp~7_combout\ : std_logic;
SIGNAL \b2v_inst4|data_anemometre~6_combout\ : std_logic;
SIGNAL \b2v_inst|cpt[5]~16\ : std_logic;
SIGNAL \b2v_inst|cpt[6]~17_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp1[6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp~8_combout\ : std_logic;
SIGNAL \b2v_inst4|data_anemometre~7_combout\ : std_logic;
SIGNAL \b2v_inst|cpt[6]~18\ : std_logic;
SIGNAL \b2v_inst|cpt[7]~19_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp1[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|tmp~9_combout\ : std_logic;
SIGNAL \b2v_inst4|data_anemometre~8_combout\ : std_logic;
SIGNAL \b2v_inst|cpt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst4|data_anemometre\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst4|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst4|tmp1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst6|etat\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst2|cpt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_raz_n~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_50M <= CLK_50M;
ww_continu <= continu;
ww_start_stop <= start_stop;
ww_in_freq_anemometre <= in_freq_anemometre;
ww_raz_n <= raz_n;
data_valid <= ww_data_valid;
data_anemometre <= ww_data_anemometre;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\in_freq_anemometre~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \in_freq_anemometre~input_o\);

\CLK_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50M~input_o\);
\ALT_INV_raz_n~input_o\ <= NOT \raz_n~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y34_N16
\data_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|data_valid~q\,
	devoe => ww_devoe,
	o => \data_valid~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\data_anemometre[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|data_anemometre\(0),
	devoe => ww_devoe,
	o => \data_anemometre[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\data_anemometre[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|data_anemometre\(1),
	devoe => ww_devoe,
	o => \data_anemometre[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\data_anemometre[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|data_anemometre\(2),
	devoe => ww_devoe,
	o => \data_anemometre[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\data_anemometre[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|data_anemometre\(3),
	devoe => ww_devoe,
	o => \data_anemometre[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\data_anemometre[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|data_anemometre\(4),
	devoe => ww_devoe,
	o => \data_anemometre[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\data_anemometre[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|data_anemometre\(5),
	devoe => ww_devoe,
	o => \data_anemometre[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\data_anemometre[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|data_anemometre\(6),
	devoe => ww_devoe,
	o => \data_anemometre[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\data_anemometre[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|data_anemometre\(7),
	devoe => ww_devoe,
	o => \data_anemometre[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLK_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50M,
	o => \CLK_50M~input_o\);

-- Location: CLKCTRL_G18
\CLK_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50M~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N8
\start_stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_stop,
	o => \start_stop~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\continu~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_continu,
	o => \continu~input_o\);

-- Location: LCCOMB_X4_Y31_N0
\b2v_inst4|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp~0_combout\ = (\start_stop~input_o\) # (\continu~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start_stop~input_o\,
	datad => \continu~input_o\,
	combout => \b2v_inst4|tmp~0_combout\);

-- Location: FF_X4_Y31_N1
\b2v_inst4|data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|data_valid~q\);

-- Location: IOIBUF_X0_Y16_N15
\in_freq_anemometre~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_freq_anemometre,
	o => \in_freq_anemometre~input_o\);

-- Location: CLKCTRL_G4
\in_freq_anemometre~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \in_freq_anemometre~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \in_freq_anemometre~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y31_N6
\b2v_inst|cpt[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cpt[0]~21_combout\ = !\b2v_inst|cpt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cpt\(0),
	combout => \b2v_inst|cpt[0]~21_combout\);

-- Location: IOIBUF_X53_Y14_N1
\raz_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_raz_n,
	o => \raz_n~input_o\);

-- Location: FF_X3_Y31_N31
\b2v_inst|cpt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemometre~inputclkctrl_outclk\,
	asdata => \b2v_inst|cpt[0]~21_combout\,
	clrn => \ALT_INV_raz_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cpt\(0));

-- Location: LCCOMB_X5_Y31_N2
\b2v_inst2|cpt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|cpt[0]~2_combout\ = !\b2v_inst2|cpt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|cpt\(0),
	combout => \b2v_inst2|cpt[0]~2_combout\);

-- Location: FF_X5_Y31_N3
\b2v_inst2|cpt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst2|cpt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|cpt\(0));

-- Location: LCCOMB_X5_Y31_N18
\b2v_inst2|cpt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|cpt~0_combout\ = (\b2v_inst2|cpt\(2) & (\b2v_inst2|cpt\(3) $ (((\b2v_inst2|cpt\(1) & \b2v_inst2|cpt\(0)))))) # (!\b2v_inst2|cpt\(2) & (\b2v_inst2|cpt\(3) & ((\b2v_inst2|cpt\(1)) # (!\b2v_inst2|cpt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cpt\(2),
	datab => \b2v_inst2|cpt\(1),
	datac => \b2v_inst2|cpt\(3),
	datad => \b2v_inst2|cpt\(0),
	combout => \b2v_inst2|cpt~0_combout\);

-- Location: FF_X5_Y31_N19
\b2v_inst2|cpt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst2|cpt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|cpt\(3));

-- Location: LCCOMB_X5_Y31_N4
\b2v_inst2|cpt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|cpt~1_combout\ = (\b2v_inst2|cpt\(0) & (!\b2v_inst2|cpt\(1) & ((\b2v_inst2|cpt\(2)) # (!\b2v_inst2|cpt\(3))))) # (!\b2v_inst2|cpt\(0) & (((\b2v_inst2|cpt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cpt\(2),
	datab => \b2v_inst2|cpt\(0),
	datac => \b2v_inst2|cpt\(1),
	datad => \b2v_inst2|cpt\(3),
	combout => \b2v_inst2|cpt~1_combout\);

-- Location: FF_X5_Y31_N5
\b2v_inst2|cpt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst2|cpt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|cpt\(1));

-- Location: LCCOMB_X5_Y31_N12
\b2v_inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~0_combout\ = \b2v_inst2|cpt\(2) $ (((\b2v_inst2|cpt\(1) & \b2v_inst2|cpt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|cpt\(1),
	datac => \b2v_inst2|cpt\(2),
	datad => \b2v_inst2|cpt\(0),
	combout => \b2v_inst2|Add0~0_combout\);

-- Location: FF_X5_Y31_N13
\b2v_inst2|cpt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|cpt\(2));

-- Location: LCCOMB_X5_Y31_N10
\b2v_inst2|clk_1hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|clk_1hz~0_combout\ = (\b2v_inst2|cpt\(0) & ((\b2v_inst2|cpt\(1)) # (!\b2v_inst2|cpt\(2)))) # (!\b2v_inst2|cpt\(0) & (\b2v_inst2|cpt\(1) & !\b2v_inst2|cpt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|cpt\(0),
	datac => \b2v_inst2|cpt\(1),
	datad => \b2v_inst2|cpt\(2),
	combout => \b2v_inst2|clk_1hz~0_combout\);

-- Location: LCCOMB_X5_Y31_N28
\b2v_inst2|clk_1hz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|clk_1hz~1_combout\ = (\b2v_inst2|cpt\(2) & (\b2v_inst2|cpt\(3) & ((\b2v_inst2|clk_1hz~q\) # (\b2v_inst2|clk_1hz~0_combout\)))) # (!\b2v_inst2|cpt\(2) & (((\b2v_inst2|clk_1hz~q\ & \b2v_inst2|clk_1hz~0_combout\)) # (!\b2v_inst2|cpt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cpt\(2),
	datab => \b2v_inst2|cpt\(3),
	datac => \b2v_inst2|clk_1hz~q\,
	datad => \b2v_inst2|clk_1hz~0_combout\,
	combout => \b2v_inst2|clk_1hz~1_combout\);

-- Location: FF_X5_Y31_N29
\b2v_inst2|clk_1hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst2|clk_1hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|clk_1hz~q\);

-- Location: LCCOMB_X2_Y31_N30
\b2v_inst6|etat[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|etat[1]~0_combout\ = (\b2v_inst6|edge~q\ & (\b2v_inst6|etat\(1))) # (!\b2v_inst6|edge~q\ & ((\b2v_inst2|clk_1hz~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|edge~q\,
	datac => \b2v_inst6|etat\(1),
	datad => \b2v_inst2|clk_1hz~q\,
	combout => \b2v_inst6|etat[1]~0_combout\);

-- Location: FF_X2_Y31_N31
\b2v_inst6|etat[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst6|etat[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|etat\(1));

-- Location: LCCOMB_X4_Y31_N18
\b2v_inst6|edge~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|edge~0_combout\ = (!\b2v_inst6|etat\(1) & ((\b2v_inst6|edge~q\) # (\b2v_inst2|clk_1hz~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|etat\(1),
	datac => \b2v_inst6|edge~q\,
	datad => \b2v_inst2|clk_1hz~q\,
	combout => \b2v_inst6|edge~0_combout\);

-- Location: FF_X4_Y31_N19
\b2v_inst6|edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst6|edge~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|edge~q\);

-- Location: LCCOMB_X2_Y31_N28
\b2v_inst4|tmp1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp1[0]~0_combout\ = (!\continu~input_o\ & (!\start_stop~input_o\ & !\b2v_inst6|edge~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datab => \start_stop~input_o\,
	datad => \b2v_inst6|edge~q\,
	combout => \b2v_inst4|tmp1[0]~0_combout\);

-- Location: FF_X2_Y31_N29
\b2v_inst4|tmp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	asdata => \b2v_inst|cpt\(0),
	sload => VCC,
	ena => \b2v_inst4|tmp1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp1\(0));

-- Location: LCCOMB_X3_Y31_N0
\b2v_inst4|tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp~1_combout\ = (\continu~input_o\ & ((\b2v_inst|cpt\(0)))) # (!\continu~input_o\ & (\b2v_inst4|tmp1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datab => \b2v_inst4|tmp1\(0),
	datad => \b2v_inst|cpt\(0),
	combout => \b2v_inst4|tmp~1_combout\);

-- Location: LCCOMB_X3_Y31_N30
\b2v_inst4|tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp~2_combout\ = (\continu~input_o\ & ((!\b2v_inst6|edge~q\))) # (!\continu~input_o\ & (!\start_stop~input_o\ & \b2v_inst6|edge~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datab => \start_stop~input_o\,
	datad => \b2v_inst6|edge~q\,
	combout => \b2v_inst4|tmp~2_combout\);

-- Location: FF_X3_Y31_N1
\b2v_inst4|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp~1_combout\,
	ena => \b2v_inst4|tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp\(0));

-- Location: LCCOMB_X4_Y31_N6
\b2v_inst4|data_anemometre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_anemometre~0_combout\ = (\b2v_inst4|tmp\(0) & ((\continu~input_o\ & (\b2v_inst6|edge~q\)) # (!\continu~input_o\ & ((\start_stop~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|tmp\(0),
	datab => \b2v_inst6|edge~q\,
	datac => \start_stop~input_o\,
	datad => \continu~input_o\,
	combout => \b2v_inst4|data_anemometre~0_combout\);

-- Location: LCCOMB_X4_Y31_N4
\b2v_inst4|data_anemometre[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_anemometre[0]~1_combout\ = (\b2v_inst6|edge~q\) # (!\continu~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datad => \b2v_inst6|edge~q\,
	combout => \b2v_inst4|data_anemometre[0]~1_combout\);

-- Location: FF_X4_Y31_N7
\b2v_inst4|data_anemometre[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|data_anemometre~0_combout\,
	ena => \b2v_inst4|data_anemometre[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|data_anemometre\(0));

-- Location: LCCOMB_X3_Y31_N6
\b2v_inst|cpt[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cpt[1]~7_combout\ = (\b2v_inst|cpt\(1) & (\b2v_inst|cpt\(0) $ (VCC))) # (!\b2v_inst|cpt\(1) & (\b2v_inst|cpt\(0) & VCC))
-- \b2v_inst|cpt[1]~8\ = CARRY((\b2v_inst|cpt\(1) & \b2v_inst|cpt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cpt\(1),
	datab => \b2v_inst|cpt\(0),
	datad => VCC,
	combout => \b2v_inst|cpt[1]~7_combout\,
	cout => \b2v_inst|cpt[1]~8\);

-- Location: FF_X3_Y31_N7
\b2v_inst|cpt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemometre~inputclkctrl_outclk\,
	d => \b2v_inst|cpt[1]~7_combout\,
	clrn => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cpt\(1));

-- Location: LCCOMB_X2_Y31_N8
\b2v_inst4|tmp1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp1[1]~feeder_combout\ = \b2v_inst|cpt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|cpt\(1),
	combout => \b2v_inst4|tmp1[1]~feeder_combout\);

-- Location: FF_X2_Y31_N9
\b2v_inst4|tmp1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp1[1]~feeder_combout\,
	ena => \b2v_inst4|tmp1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp1\(1));

-- Location: LCCOMB_X3_Y31_N2
\b2v_inst4|tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp~3_combout\ = (\continu~input_o\ & (\b2v_inst|cpt\(1))) # (!\continu~input_o\ & ((\b2v_inst4|tmp1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cpt\(1),
	datac => \continu~input_o\,
	datad => \b2v_inst4|tmp1\(1),
	combout => \b2v_inst4|tmp~3_combout\);

-- Location: FF_X3_Y31_N3
\b2v_inst4|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp~3_combout\,
	ena => \b2v_inst4|tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp\(1));

-- Location: LCCOMB_X4_Y31_N8
\b2v_inst4|data_anemometre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_anemometre~2_combout\ = (\b2v_inst4|tmp\(1) & ((\continu~input_o\ & (\b2v_inst6|edge~q\)) # (!\continu~input_o\ & ((\start_stop~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|tmp\(1),
	datab => \b2v_inst6|edge~q\,
	datac => \start_stop~input_o\,
	datad => \continu~input_o\,
	combout => \b2v_inst4|data_anemometre~2_combout\);

-- Location: FF_X4_Y31_N9
\b2v_inst4|data_anemometre[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|data_anemometre~2_combout\,
	ena => \b2v_inst4|data_anemometre[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|data_anemometre\(1));

-- Location: LCCOMB_X3_Y31_N8
\b2v_inst|cpt[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cpt[2]~9_combout\ = (\b2v_inst|cpt\(2) & (!\b2v_inst|cpt[1]~8\)) # (!\b2v_inst|cpt\(2) & ((\b2v_inst|cpt[1]~8\) # (GND)))
-- \b2v_inst|cpt[2]~10\ = CARRY((!\b2v_inst|cpt[1]~8\) # (!\b2v_inst|cpt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cpt\(2),
	datad => VCC,
	cin => \b2v_inst|cpt[1]~8\,
	combout => \b2v_inst|cpt[2]~9_combout\,
	cout => \b2v_inst|cpt[2]~10\);

-- Location: FF_X3_Y31_N9
\b2v_inst|cpt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemometre~inputclkctrl_outclk\,
	d => \b2v_inst|cpt[2]~9_combout\,
	clrn => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cpt\(2));

-- Location: LCCOMB_X2_Y31_N14
\b2v_inst4|tmp1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp1[2]~feeder_combout\ = \b2v_inst|cpt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cpt\(2),
	combout => \b2v_inst4|tmp1[2]~feeder_combout\);

-- Location: FF_X2_Y31_N15
\b2v_inst4|tmp1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp1[2]~feeder_combout\,
	ena => \b2v_inst4|tmp1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp1\(2));

-- Location: LCCOMB_X3_Y31_N28
\b2v_inst4|tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp~4_combout\ = (\continu~input_o\ & (\b2v_inst|cpt\(2))) # (!\continu~input_o\ & ((\b2v_inst4|tmp1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datac => \b2v_inst|cpt\(2),
	datad => \b2v_inst4|tmp1\(2),
	combout => \b2v_inst4|tmp~4_combout\);

-- Location: FF_X3_Y31_N29
\b2v_inst4|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp~4_combout\,
	ena => \b2v_inst4|tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp\(2));

-- Location: LCCOMB_X4_Y31_N26
\b2v_inst4|data_anemometre~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_anemometre~3_combout\ = (\b2v_inst4|tmp\(2) & ((\continu~input_o\ & (\b2v_inst6|edge~q\)) # (!\continu~input_o\ & ((\start_stop~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datab => \b2v_inst6|edge~q\,
	datac => \start_stop~input_o\,
	datad => \b2v_inst4|tmp\(2),
	combout => \b2v_inst4|data_anemometre~3_combout\);

-- Location: FF_X4_Y31_N27
\b2v_inst4|data_anemometre[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|data_anemometre~3_combout\,
	ena => \b2v_inst4|data_anemometre[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|data_anemometre\(2));

-- Location: LCCOMB_X3_Y31_N10
\b2v_inst|cpt[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cpt[3]~11_combout\ = (\b2v_inst|cpt\(3) & (\b2v_inst|cpt[2]~10\ $ (GND))) # (!\b2v_inst|cpt\(3) & (!\b2v_inst|cpt[2]~10\ & VCC))
-- \b2v_inst|cpt[3]~12\ = CARRY((\b2v_inst|cpt\(3) & !\b2v_inst|cpt[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cpt\(3),
	datad => VCC,
	cin => \b2v_inst|cpt[2]~10\,
	combout => \b2v_inst|cpt[3]~11_combout\,
	cout => \b2v_inst|cpt[3]~12\);

-- Location: FF_X3_Y31_N11
\b2v_inst|cpt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemometre~inputclkctrl_outclk\,
	d => \b2v_inst|cpt[3]~11_combout\,
	clrn => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cpt\(3));

-- Location: LCCOMB_X2_Y31_N20
\b2v_inst4|tmp1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp1[3]~feeder_combout\ = \b2v_inst|cpt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cpt\(3),
	combout => \b2v_inst4|tmp1[3]~feeder_combout\);

-- Location: FF_X2_Y31_N21
\b2v_inst4|tmp1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp1[3]~feeder_combout\,
	ena => \b2v_inst4|tmp1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp1\(3));

-- Location: LCCOMB_X3_Y31_N20
\b2v_inst4|tmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp~5_combout\ = (\continu~input_o\ & (\b2v_inst|cpt\(3))) # (!\continu~input_o\ & ((\b2v_inst4|tmp1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cpt\(3),
	datac => \continu~input_o\,
	datad => \b2v_inst4|tmp1\(3),
	combout => \b2v_inst4|tmp~5_combout\);

-- Location: FF_X3_Y31_N21
\b2v_inst4|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp~5_combout\,
	ena => \b2v_inst4|tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp\(3));

-- Location: LCCOMB_X4_Y31_N24
\b2v_inst4|data_anemometre~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_anemometre~4_combout\ = (\b2v_inst4|tmp\(3) & ((\continu~input_o\ & (\b2v_inst6|edge~q\)) # (!\continu~input_o\ & ((\start_stop~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datab => \b2v_inst6|edge~q\,
	datac => \start_stop~input_o\,
	datad => \b2v_inst4|tmp\(3),
	combout => \b2v_inst4|data_anemometre~4_combout\);

-- Location: FF_X4_Y31_N25
\b2v_inst4|data_anemometre[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|data_anemometre~4_combout\,
	ena => \b2v_inst4|data_anemometre[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|data_anemometre\(3));

-- Location: LCCOMB_X3_Y31_N12
\b2v_inst|cpt[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cpt[4]~13_combout\ = (\b2v_inst|cpt\(4) & (!\b2v_inst|cpt[3]~12\)) # (!\b2v_inst|cpt\(4) & ((\b2v_inst|cpt[3]~12\) # (GND)))
-- \b2v_inst|cpt[4]~14\ = CARRY((!\b2v_inst|cpt[3]~12\) # (!\b2v_inst|cpt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cpt\(4),
	datad => VCC,
	cin => \b2v_inst|cpt[3]~12\,
	combout => \b2v_inst|cpt[4]~13_combout\,
	cout => \b2v_inst|cpt[4]~14\);

-- Location: FF_X3_Y31_N13
\b2v_inst|cpt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemometre~inputclkctrl_outclk\,
	d => \b2v_inst|cpt[4]~13_combout\,
	clrn => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cpt\(4));

-- Location: LCCOMB_X2_Y31_N10
\b2v_inst4|tmp1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp1[4]~feeder_combout\ = \b2v_inst|cpt\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cpt\(4),
	combout => \b2v_inst4|tmp1[4]~feeder_combout\);

-- Location: FF_X2_Y31_N11
\b2v_inst4|tmp1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp1[4]~feeder_combout\,
	ena => \b2v_inst4|tmp1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp1\(4));

-- Location: LCCOMB_X3_Y31_N22
\b2v_inst4|tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp~6_combout\ = (\continu~input_o\ & (\b2v_inst|cpt\(4))) # (!\continu~input_o\ & ((\b2v_inst4|tmp1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cpt\(4),
	datac => \continu~input_o\,
	datad => \b2v_inst4|tmp1\(4),
	combout => \b2v_inst4|tmp~6_combout\);

-- Location: FF_X3_Y31_N23
\b2v_inst4|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp~6_combout\,
	ena => \b2v_inst4|tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp\(4));

-- Location: LCCOMB_X4_Y31_N22
\b2v_inst4|data_anemometre~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_anemometre~5_combout\ = (\b2v_inst4|tmp\(4) & ((\continu~input_o\ & (\b2v_inst6|edge~q\)) # (!\continu~input_o\ & ((\start_stop~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datab => \b2v_inst6|edge~q\,
	datac => \start_stop~input_o\,
	datad => \b2v_inst4|tmp\(4),
	combout => \b2v_inst4|data_anemometre~5_combout\);

-- Location: FF_X4_Y31_N23
\b2v_inst4|data_anemometre[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|data_anemometre~5_combout\,
	ena => \b2v_inst4|data_anemometre[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|data_anemometre\(4));

-- Location: LCCOMB_X3_Y31_N14
\b2v_inst|cpt[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cpt[5]~15_combout\ = (\b2v_inst|cpt\(5) & (\b2v_inst|cpt[4]~14\ $ (GND))) # (!\b2v_inst|cpt\(5) & (!\b2v_inst|cpt[4]~14\ & VCC))
-- \b2v_inst|cpt[5]~16\ = CARRY((\b2v_inst|cpt\(5) & !\b2v_inst|cpt[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cpt\(5),
	datad => VCC,
	cin => \b2v_inst|cpt[4]~14\,
	combout => \b2v_inst|cpt[5]~15_combout\,
	cout => \b2v_inst|cpt[5]~16\);

-- Location: FF_X3_Y31_N15
\b2v_inst|cpt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemometre~inputclkctrl_outclk\,
	d => \b2v_inst|cpt[5]~15_combout\,
	clrn => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cpt\(5));

-- Location: LCCOMB_X2_Y31_N12
\b2v_inst4|tmp1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp1[5]~feeder_combout\ = \b2v_inst|cpt\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cpt\(5),
	combout => \b2v_inst4|tmp1[5]~feeder_combout\);

-- Location: FF_X2_Y31_N13
\b2v_inst4|tmp1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp1[5]~feeder_combout\,
	ena => \b2v_inst4|tmp1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp1\(5));

-- Location: LCCOMB_X3_Y31_N4
\b2v_inst4|tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp~7_combout\ = (\continu~input_o\ & (\b2v_inst|cpt\(5))) # (!\continu~input_o\ & ((\b2v_inst4|tmp1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datac => \b2v_inst|cpt\(5),
	datad => \b2v_inst4|tmp1\(5),
	combout => \b2v_inst4|tmp~7_combout\);

-- Location: FF_X3_Y31_N5
\b2v_inst4|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp~7_combout\,
	ena => \b2v_inst4|tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp\(5));

-- Location: LCCOMB_X4_Y31_N16
\b2v_inst4|data_anemometre~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_anemometre~6_combout\ = (\b2v_inst4|tmp\(5) & ((\continu~input_o\ & ((\b2v_inst6|edge~q\))) # (!\continu~input_o\ & (\start_stop~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datab => \start_stop~input_o\,
	datac => \b2v_inst4|tmp\(5),
	datad => \b2v_inst6|edge~q\,
	combout => \b2v_inst4|data_anemometre~6_combout\);

-- Location: FF_X4_Y31_N17
\b2v_inst4|data_anemometre[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|data_anemometre~6_combout\,
	ena => \b2v_inst4|data_anemometre[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|data_anemometre\(5));

-- Location: LCCOMB_X3_Y31_N16
\b2v_inst|cpt[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cpt[6]~17_combout\ = (\b2v_inst|cpt\(6) & (!\b2v_inst|cpt[5]~16\)) # (!\b2v_inst|cpt\(6) & ((\b2v_inst|cpt[5]~16\) # (GND)))
-- \b2v_inst|cpt[6]~18\ = CARRY((!\b2v_inst|cpt[5]~16\) # (!\b2v_inst|cpt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cpt\(6),
	datad => VCC,
	cin => \b2v_inst|cpt[5]~16\,
	combout => \b2v_inst|cpt[6]~17_combout\,
	cout => \b2v_inst|cpt[6]~18\);

-- Location: FF_X3_Y31_N17
\b2v_inst|cpt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemometre~inputclkctrl_outclk\,
	d => \b2v_inst|cpt[6]~17_combout\,
	clrn => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cpt\(6));

-- Location: LCCOMB_X2_Y31_N26
\b2v_inst4|tmp1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp1[6]~feeder_combout\ = \b2v_inst|cpt\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|cpt\(6),
	combout => \b2v_inst4|tmp1[6]~feeder_combout\);

-- Location: FF_X2_Y31_N27
\b2v_inst4|tmp1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp1[6]~feeder_combout\,
	ena => \b2v_inst4|tmp1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp1\(6));

-- Location: LCCOMB_X3_Y31_N26
\b2v_inst4|tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp~8_combout\ = (\continu~input_o\ & (\b2v_inst|cpt\(6))) # (!\continu~input_o\ & ((\b2v_inst4|tmp1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datab => \b2v_inst|cpt\(6),
	datac => \b2v_inst4|tmp1\(6),
	combout => \b2v_inst4|tmp~8_combout\);

-- Location: FF_X3_Y31_N27
\b2v_inst4|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp~8_combout\,
	ena => \b2v_inst4|tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp\(6));

-- Location: LCCOMB_X4_Y31_N30
\b2v_inst4|data_anemometre~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_anemometre~7_combout\ = (\b2v_inst4|tmp\(6) & ((\continu~input_o\ & (\b2v_inst6|edge~q\)) # (!\continu~input_o\ & ((\start_stop~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datab => \b2v_inst6|edge~q\,
	datac => \b2v_inst4|tmp\(6),
	datad => \start_stop~input_o\,
	combout => \b2v_inst4|data_anemometre~7_combout\);

-- Location: FF_X4_Y31_N31
\b2v_inst4|data_anemometre[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|data_anemometre~7_combout\,
	ena => \b2v_inst4|data_anemometre[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|data_anemometre\(6));

-- Location: LCCOMB_X3_Y31_N18
\b2v_inst|cpt[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cpt[7]~19_combout\ = \b2v_inst|cpt[6]~18\ $ (!\b2v_inst|cpt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|cpt\(7),
	cin => \b2v_inst|cpt[6]~18\,
	combout => \b2v_inst|cpt[7]~19_combout\);

-- Location: FF_X3_Y31_N19
\b2v_inst|cpt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_freq_anemometre~inputclkctrl_outclk\,
	d => \b2v_inst|cpt[7]~19_combout\,
	clrn => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cpt\(7));

-- Location: LCCOMB_X2_Y31_N24
\b2v_inst4|tmp1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp1[7]~feeder_combout\ = \b2v_inst|cpt\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|cpt\(7),
	combout => \b2v_inst4|tmp1[7]~feeder_combout\);

-- Location: FF_X2_Y31_N25
\b2v_inst4|tmp1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp1[7]~feeder_combout\,
	ena => \b2v_inst4|tmp1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp1\(7));

-- Location: LCCOMB_X3_Y31_N24
\b2v_inst4|tmp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|tmp~9_combout\ = (\continu~input_o\ & (\b2v_inst|cpt\(7))) # (!\continu~input_o\ & ((\b2v_inst4|tmp1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cpt\(7),
	datac => \continu~input_o\,
	datad => \b2v_inst4|tmp1\(7),
	combout => \b2v_inst4|tmp~9_combout\);

-- Location: FF_X3_Y31_N25
\b2v_inst4|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|tmp~9_combout\,
	ena => \b2v_inst4|tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|tmp\(7));

-- Location: LCCOMB_X4_Y31_N12
\b2v_inst4|data_anemometre~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_anemometre~8_combout\ = (\b2v_inst4|tmp\(7) & ((\continu~input_o\ & (\b2v_inst6|edge~q\)) # (!\continu~input_o\ & ((\start_stop~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu~input_o\,
	datab => \b2v_inst6|edge~q\,
	datac => \start_stop~input_o\,
	datad => \b2v_inst4|tmp\(7),
	combout => \b2v_inst4|data_anemometre~8_combout\);

-- Location: FF_X4_Y31_N13
\b2v_inst4|data_anemometre[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \b2v_inst4|data_anemometre~8_combout\,
	ena => \b2v_inst4|data_anemometre[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|data_anemometre\(7));

ww_data_valid <= \data_valid~output_o\;

ww_data_anemometre(0) <= \data_anemometre[0]~output_o\;

ww_data_anemometre(1) <= \data_anemometre[1]~output_o\;

ww_data_anemometre(2) <= \data_anemometre[2]~output_o\;

ww_data_anemometre(3) <= \data_anemometre[3]~output_o\;

ww_data_anemometre(4) <= \data_anemometre[4]~output_o\;

ww_data_anemometre(5) <= \data_anemometre[5]~output_o\;

ww_data_anemometre(6) <= \data_anemometre[6]~output_o\;

ww_data_anemometre(7) <= \data_anemometre[7]~output_o\;
END structure;


