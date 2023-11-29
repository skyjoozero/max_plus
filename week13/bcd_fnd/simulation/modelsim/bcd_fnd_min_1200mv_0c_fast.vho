-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/29/2023 17:01:29"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcd_fnd IS
    PORT (
	clk : IN std_logic;
	load : IN std_logic;
	clr : IN std_logic;
	d : IN std_logic;
	c : IN std_logic;
	b : IN std_logic;
	a : IN std_logic;
	qd : OUT std_logic;
	qc : OUT std_logic;
	qb : OUT std_logic;
	qa : OUT std_logic;
	RCO : OUT std_logic;
	FND : OUT std_logic_vector(6 DOWNTO 0)
	);
END bcd_fnd;

-- Design Ports Information
-- qd	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qc	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qb	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qa	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RCO	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[1]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[3]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[4]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[6]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd_fnd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_qd : std_logic;
SIGNAL ww_qc : std_logic;
SIGNAL ww_qb : std_logic;
SIGNAL ww_qa : std_logic;
SIGNAL ww_RCO : std_logic;
SIGNAL ww_FND : std_logic_vector(6 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \qd~output_o\ : std_logic;
SIGNAL \qc~output_o\ : std_logic;
SIGNAL \qb~output_o\ : std_logic;
SIGNAL \qa~output_o\ : std_logic;
SIGNAL \RCO~output_o\ : std_logic;
SIGNAL \FND[0]~output_o\ : std_logic;
SIGNAL \FND[1]~output_o\ : std_logic;
SIGNAL \FND[2]~output_o\ : std_logic;
SIGNAL \FND[3]~output_o\ : std_logic;
SIGNAL \FND[4]~output_o\ : std_logic;
SIGNAL \FND[5]~output_o\ : std_logic;
SIGNAL \FND[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \TMP~5_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \TMP~2_combout\ : std_logic;
SIGNAL \TMP~0_combout\ : std_logic;
SIGNAL \TMP~3_combout\ : std_logic;
SIGNAL \TMP~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \TMP~1_combout\ : std_logic;
SIGNAL \RCO~0_combout\ : std_logic;
SIGNAL \RCO~1_combout\ : std_logic;
SIGNAL \RCO~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL TMP : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_load <= load;
ww_clr <= clr;
ww_d <= d;
ww_c <= c;
ww_b <= b;
ww_a <= a;
qd <= ww_qd;
qc <= ww_qc;
qb <= ww_qb;
qa <= ww_qa;
RCO <= ww_RCO;
FND <= ww_FND;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;

-- Location: IOIBUF_X3_Y24_N22
\d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X3_Y24_N15
\c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOOBUF_X3_Y24_N9
\qd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TMP(3),
	devoe => ww_devoe,
	o => \qd~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\qc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TMP(2),
	devoe => ww_devoe,
	o => \qc~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\qb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TMP(1),
	devoe => ww_devoe,
	o => \qb~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\qa~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TMP(0),
	devoe => ww_devoe,
	o => \qa~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\RCO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RCO~reg0_q\,
	devoe => ww_devoe,
	o => \RCO~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\FND[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \FND[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\FND[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \FND[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\FND[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \FND[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\FND[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \FND[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\FND[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \FND[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\FND[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \FND[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\FND[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \FND[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y24_N1
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X3_Y24_N1
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X1_Y23_N18
\TMP~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TMP~5_combout\ = (\load~input_o\ & (!TMP(0))) # (!\load~input_o\ & ((\a~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => TMP(0),
	datad => \a~input_o\,
	combout => \TMP~5_combout\);

-- Location: IOIBUF_X0_Y11_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G4
\clr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: FF_X1_Y23_N19
\TMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TMP~5_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(0));

-- Location: LCCOMB_X1_Y23_N28
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = TMP(2) $ (((TMP(1) & TMP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datac => TMP(2),
	datad => TMP(0),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y23_N30
\TMP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TMP~2_combout\ = (\load~input_o\ & (((\TMP~0_combout\ & \Add0~1_combout\)))) # (!\load~input_o\ & (\c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~input_o\,
	datab => \load~input_o\,
	datac => \TMP~0_combout\,
	datad => \Add0~1_combout\,
	combout => \TMP~2_combout\);

-- Location: FF_X1_Y23_N31
\TMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TMP~2_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(2));

-- Location: LCCOMB_X1_Y23_N22
\TMP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TMP~0_combout\ = (TMP(1)) # (((TMP(2)) # (!TMP(0))) # (!TMP(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(3),
	datac => TMP(2),
	datad => TMP(0),
	combout => \TMP~0_combout\);

-- Location: LCCOMB_X1_Y23_N10
\TMP~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TMP~3_combout\ = (TMP(0) & (!TMP(1) & ((TMP(2)) # (!TMP(3))))) # (!TMP(0) & (((TMP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(2),
	datab => TMP(0),
	datac => TMP(3),
	datad => TMP(1),
	combout => \TMP~3_combout\);

-- Location: LCCOMB_X1_Y23_N12
\TMP~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TMP~4_combout\ = (\load~input_o\ & ((\TMP~3_combout\))) # (!\load~input_o\ & (\b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datac => \load~input_o\,
	datad => \TMP~3_combout\,
	combout => \TMP~4_combout\);

-- Location: FF_X1_Y23_N13
\TMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TMP~4_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(1));

-- Location: LCCOMB_X1_Y23_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = TMP(3) $ (((TMP(2) & (TMP(1) & TMP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(2),
	datab => TMP(3),
	datac => TMP(1),
	datad => TMP(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\TMP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TMP~1_combout\ = (\load~input_o\ & (((\TMP~0_combout\ & \Add0~0_combout\)))) # (!\load~input_o\ & (\d~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \load~input_o\,
	datac => \TMP~0_combout\,
	datad => \Add0~0_combout\,
	combout => \TMP~1_combout\);

-- Location: FF_X1_Y23_N5
\TMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TMP~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(3));

-- Location: LCCOMB_X1_Y23_N24
\RCO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RCO~0_combout\ = ((!TMP(2) & !TMP(1))) # (!\load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => TMP(2),
	datad => TMP(1),
	combout => \RCO~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\RCO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RCO~1_combout\ = (TMP(3) & (TMP(0) & \RCO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TMP(3),
	datac => TMP(0),
	datad => \RCO~0_combout\,
	combout => \RCO~1_combout\);

-- Location: FF_X1_Y23_N1
\RCO~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RCO~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RCO~reg0_q\);

-- Location: LCCOMB_X1_Y22_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (TMP(3)) # ((TMP(1) & ((!TMP(2)) # (!TMP(0)))) # (!TMP(1) & ((TMP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(2),
	datad => TMP(3),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y23_N14
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (TMP(2) & ((TMP(1) & (TMP(0) & !TMP(3))) # (!TMP(1) & ((TMP(3)))))) # (!TMP(2) & ((TMP(0) & ((!TMP(3)))) # (!TMP(0) & (TMP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(2),
	datab => TMP(1),
	datac => TMP(0),
	datad => TMP(3),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y22_N14
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (TMP(1) & (TMP(0) & ((!TMP(3))))) # (!TMP(1) & ((TMP(2) & ((!TMP(3)))) # (!TMP(2) & (TMP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(2),
	datad => TMP(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (TMP(0) & (TMP(2) $ ((!TMP(1))))) # (!TMP(0) & (TMP(2) & (!TMP(1) & !TMP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(2),
	datab => TMP(1),
	datac => TMP(0),
	datad => TMP(3),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (TMP(2) & (TMP(3) & ((TMP(1)) # (!TMP(0))))) # (!TMP(2) & (TMP(1) & (!TMP(0) & !TMP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(2),
	datab => TMP(1),
	datac => TMP(0),
	datad => TMP(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y22_N16
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (TMP(2) & (TMP(1) $ (TMP(0) $ (TMP(3))))) # (!TMP(2) & (TMP(1) & (TMP(0) & TMP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(2),
	datad => TMP(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y22_N30
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (TMP(1) & (TMP(0) & (!TMP(2) & TMP(3)))) # (!TMP(1) & (TMP(2) $ (((TMP(0) & !TMP(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(2),
	datad => TMP(3),
	combout => \Mux0~0_combout\);

ww_qd <= \qd~output_o\;

ww_qc <= \qc~output_o\;

ww_qb <= \qb~output_o\;

ww_qa <= \qa~output_o\;

ww_RCO <= \RCO~output_o\;

ww_FND(0) <= \FND[0]~output_o\;

ww_FND(1) <= \FND[1]~output_o\;

ww_FND(2) <= \FND[2]~output_o\;

ww_FND(3) <= \FND[3]~output_o\;

ww_FND(4) <= \FND[4]~output_o\;

ww_FND(5) <= \FND[5]~output_o\;

ww_FND(6) <= \FND[6]~output_o\;
END structure;


