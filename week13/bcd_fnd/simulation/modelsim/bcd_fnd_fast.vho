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

-- DATE "11/29/2023 17:15:18"

-- 
-- Device: Altera EP2C8Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
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
-- qd	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- qc	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- qb	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- qa	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- RCO	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- FND[0]	=>  Location: PIN_37,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- FND[1]	=>  Location: PIN_35,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- FND[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- FND[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- FND[4]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- FND[5]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- FND[6]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- d	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \d~combout\ : std_logic;
SIGNAL \load~combout\ : std_logic;
SIGNAL \b~combout\ : std_logic;
SIGNAL \a~combout\ : std_logic;
SIGNAL \TMP~6_combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \TMP~4_combout\ : std_logic;
SIGNAL \TMP~5_combout\ : std_logic;
SIGNAL \TMP~2_combout\ : std_logic;
SIGNAL \TMP~3_combout\ : std_logic;
SIGNAL \TMP~0_combout\ : std_logic;
SIGNAL \TMP~1_combout\ : std_logic;
SIGNAL \RCO~0_combout\ : std_logic;
SIGNAL \RCO~1_combout\ : std_logic;
SIGNAL \RCO~reg0_regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL TMP : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clr~combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

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

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clr~combout\ <= NOT \clr~combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;

-- Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
\c~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_c,
	combout => \c~combout\);

-- Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G7
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
\d~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_d,
	combout => \d~combout\);

-- Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
\load~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_load,
	combout => \load~combout\);

-- Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
\b~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b,
	combout => \b~combout\);

-- Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
\a~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a,
	combout => \a~combout\);

-- Location: LCCOMB_X1_Y4_N22
\TMP~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TMP~6_combout\ = (\load~combout\ & (!TMP(0))) # (!\load~combout\ & ((\a~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~combout\,
	datac => TMP(0),
	datad => \a~combout\,
	combout => \TMP~6_combout\);

-- Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
\clr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clr,
	combout => \clr~combout\);

-- Location: LCFF_X1_Y4_N23
\TMP[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TMP~6_combout\,
	aclr => \ALT_INV_clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TMP(0));

-- Location: LCCOMB_X1_Y4_N12
\TMP~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TMP~4_combout\ = (TMP(1) & (((!TMP(0))))) # (!TMP(1) & (TMP(0) & ((TMP(2)) # (!TMP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(3),
	datac => TMP(2),
	datad => TMP(0),
	combout => \TMP~4_combout\);

-- Location: LCCOMB_X1_Y4_N16
\TMP~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TMP~5_combout\ = (\load~combout\ & ((\TMP~4_combout\))) # (!\load~combout\ & (\b~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\,
	datac => \load~combout\,
	datad => \TMP~4_combout\,
	combout => \TMP~5_combout\);

-- Location: LCFF_X1_Y4_N17
\TMP[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TMP~5_combout\,
	aclr => \ALT_INV_clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TMP(1));

-- Location: LCCOMB_X1_Y4_N18
\TMP~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TMP~2_combout\ = (!TMP(0)) # (!TMP(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TMP(1),
	datad => TMP(0),
	combout => \TMP~2_combout\);

-- Location: LCCOMB_X1_Y4_N14
\TMP~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TMP~3_combout\ = (\load~combout\ & ((TMP(2) $ (!\TMP~2_combout\)))) # (!\load~combout\ & (\c~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~combout\,
	datab => \load~combout\,
	datac => TMP(2),
	datad => \TMP~2_combout\,
	combout => \TMP~3_combout\);

-- Location: LCFF_X1_Y4_N15
\TMP[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TMP~3_combout\,
	aclr => \ALT_INV_clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TMP(2));

-- Location: LCCOMB_X1_Y4_N28
\TMP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TMP~0_combout\ = (TMP(1) & (TMP(3) $ (((TMP(2) & TMP(0)))))) # (!TMP(1) & (TMP(3) & ((TMP(2)) # (!TMP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(3),
	datac => TMP(2),
	datad => TMP(0),
	combout => \TMP~0_combout\);

-- Location: LCCOMB_X1_Y4_N8
\TMP~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TMP~1_combout\ = (\load~combout\ & ((\TMP~0_combout\))) # (!\load~combout\ & (\d~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d~combout\,
	datac => \load~combout\,
	datad => \TMP~0_combout\,
	combout => \TMP~1_combout\);

-- Location: LCFF_X1_Y4_N9
\TMP[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TMP~1_combout\,
	aclr => \ALT_INV_clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TMP(3));

-- Location: LCCOMB_X1_Y4_N30
\RCO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RCO~0_combout\ = ((!TMP(1) & !TMP(2))) # (!\load~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~combout\,
	datac => TMP(1),
	datad => TMP(2),
	combout => \RCO~0_combout\);

-- Location: LCCOMB_X1_Y4_N4
\RCO~1\ : cycloneii_lcell_comb
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

-- Location: LCFF_X1_Y4_N5
\RCO~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RCO~1_combout\,
	aclr => \ALT_INV_clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RCO~reg0_regout\);

-- Location: LCCOMB_X1_Y4_N6
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (TMP(3)) # ((TMP(1) & ((!TMP(2)) # (!TMP(0)))) # (!TMP(1) & ((TMP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(3),
	datad => TMP(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y4_N20
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (TMP(1) & ((TMP(0) & (!TMP(3))) # (!TMP(0) & ((!TMP(2)))))) # (!TMP(1) & ((TMP(3) & ((TMP(2)))) # (!TMP(3) & (TMP(0) & !TMP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(3),
	datad => TMP(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (TMP(1) & (TMP(0) & (!TMP(3)))) # (!TMP(1) & ((TMP(2) & ((!TMP(3)))) # (!TMP(2) & (TMP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(3),
	datad => TMP(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y4_N24
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (TMP(0) & (TMP(1) $ (((!TMP(2)))))) # (!TMP(0) & (!TMP(1) & (!TMP(3) & TMP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(3),
	datad => TMP(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y4_N2
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (TMP(3) & (TMP(2) & ((TMP(1)) # (!TMP(0))))) # (!TMP(3) & (TMP(1) & (!TMP(0) & !TMP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(3),
	datad => TMP(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y4_N0
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (TMP(2) & (TMP(1) $ (TMP(0) $ (TMP(3))))) # (!TMP(2) & (TMP(1) & (TMP(0) & TMP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(3),
	datad => TMP(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y4_N10
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (TMP(1) & (TMP(0) & (TMP(3) & !TMP(2)))) # (!TMP(1) & (TMP(2) $ (((TMP(0) & !TMP(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TMP(1),
	datab => TMP(0),
	datac => TMP(3),
	datad => TMP(2),
	combout => \Mux0~0_combout\);

-- Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\qd~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => TMP(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_qd);

-- Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\qc~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => TMP(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_qc);

-- Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\qb~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => TMP(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_qb);

-- Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\qa~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => TMP(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_qa);

-- Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\RCO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RCO~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RCO);

-- Location: PIN_37,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\FND[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FND(0));

-- Location: PIN_35,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\FND[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FND(1));

-- Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\FND[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FND(2));

-- Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\FND[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FND(3));

-- Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\FND[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FND(4));

-- Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\FND[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FND(5));

-- Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\FND[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FND(6));
END structure;


