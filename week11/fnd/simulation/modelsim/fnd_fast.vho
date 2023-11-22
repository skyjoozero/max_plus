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

-- DATE "11/22/2023 14:07:07"

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

ENTITY 	fnd IS
    PORT (
	a : OUT std_logic;
	\1Hz\ : IN std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic
	);
END fnd;

-- Design Ports Information
-- a	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- e	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- 1Hz	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fnd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL \ww_1Hz\ : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \1Hz~combout\ : std_logic;
SIGNAL \1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \inst|43~0_combout\ : std_logic;
SIGNAL \inst|43~regout\ : std_logic;
SIGNAL \inst|45~0_combout\ : std_logic;
SIGNAL \inst|45~regout\ : std_logic;
SIGNAL \inst|46~0_combout\ : std_logic;
SIGNAL \inst|46~regout\ : std_logic;
SIGNAL \inst|44~0_combout\ : std_logic;
SIGNAL \inst|44~regout\ : std_logic;
SIGNAL \inst1|69~0_combout\ : std_logic;
SIGNAL \inst1|68~0_combout\ : std_logic;
SIGNAL \inst1|70~combout\ : std_logic;
SIGNAL \inst1|67~0_combout\ : std_logic;
SIGNAL \inst1|71~combout\ : std_logic;
SIGNAL \inst1|66~0_combout\ : std_logic;
SIGNAL \inst1|72~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_72~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_66~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_71~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_67~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_70~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_68~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_69~0_combout\ : std_logic;

BEGIN

a <= ww_a;
\ww_1Hz\ <= \1Hz\;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\1Hz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \1Hz~combout\);
\inst1|ALT_INV_72~combout\ <= NOT \inst1|72~combout\;
\inst1|ALT_INV_66~0_combout\ <= NOT \inst1|66~0_combout\;
\inst1|ALT_INV_71~combout\ <= NOT \inst1|71~combout\;
\inst1|ALT_INV_67~0_combout\ <= NOT \inst1|67~0_combout\;
\inst1|ALT_INV_70~combout\ <= NOT \inst1|70~combout\;
\inst1|ALT_INV_68~0_combout\ <= NOT \inst1|68~0_combout\;
\inst1|ALT_INV_69~0_combout\ <= NOT \inst1|69~0_combout\;

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\1Hz~I\ : cycloneii_io
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
	padio => \ww_1Hz\,
	combout => \1Hz~combout\);

-- Location: CLKCTRL_G7
\1Hz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \1Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \1Hz~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y8_N6
\inst|43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|43~0_combout\ = !\inst|43~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|43~regout\,
	combout => \inst|43~0_combout\);

-- Location: LCFF_X1_Y8_N7
\inst|43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \1Hz~clkctrl_outclk\,
	datain => \inst|43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|43~regout\);

-- Location: LCCOMB_X1_Y8_N0
\inst|45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|45~0_combout\ = \inst|45~regout\ $ (((\inst|44~regout\ & \inst|43~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|44~regout\,
	datac => \inst|45~regout\,
	datad => \inst|43~regout\,
	combout => \inst|45~0_combout\);

-- Location: LCFF_X1_Y8_N1
\inst|45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \1Hz~clkctrl_outclk\,
	datain => \inst|45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|45~regout\);

-- Location: LCCOMB_X1_Y8_N30
\inst|46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|46~0_combout\ = (\inst|43~regout\ & (\inst|44~regout\ & (\inst|45~regout\))) # (!\inst|43~regout\ & (((\inst|46~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|44~regout\,
	datab => \inst|45~regout\,
	datac => \inst|46~regout\,
	datad => \inst|43~regout\,
	combout => \inst|46~0_combout\);

-- Location: LCFF_X1_Y8_N31
\inst|46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \1Hz~clkctrl_outclk\,
	datain => \inst|46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|46~regout\);

-- Location: LCCOMB_X1_Y8_N12
\inst|44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|44~0_combout\ = \inst|44~regout\ $ (((!\inst|46~regout\ & \inst|43~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|46~regout\,
	datac => \inst|44~regout\,
	datad => \inst|43~regout\,
	combout => \inst|44~0_combout\);

-- Location: LCFF_X1_Y8_N13
\inst|44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \1Hz~clkctrl_outclk\,
	datain => \inst|44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|44~regout\);

-- Location: LCCOMB_X1_Y8_N8
\inst1|69~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|69~0_combout\ = (\inst|46~regout\ & ((\inst|44~regout\) # ((\inst|45~regout\ & !\inst|43~regout\)))) # (!\inst|46~regout\ & ((\inst|45~regout\ & ((!\inst|43~regout\))) # (!\inst|45~regout\ & (!\inst|44~regout\ & \inst|43~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|46~regout\,
	datab => \inst|44~regout\,
	datac => \inst|45~regout\,
	datad => \inst|43~regout\,
	combout => \inst1|69~0_combout\);

-- Location: LCCOMB_X1_Y8_N10
\inst1|68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|68~0_combout\ = (\inst|44~regout\ & ((\inst|46~regout\) # ((\inst|45~regout\ & !\inst|43~regout\)))) # (!\inst|44~regout\ & (((\inst|45~regout\ & \inst|43~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|46~regout\,
	datab => \inst|44~regout\,
	datac => \inst|45~regout\,
	datad => \inst|43~regout\,
	combout => \inst1|68~0_combout\);

-- Location: LCCOMB_X1_Y8_N28
\inst1|70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|70~combout\ = (\inst|45~regout\ & (\inst|46~regout\)) # (!\inst|45~regout\ & (((\inst|44~regout\ & !\inst|43~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|46~regout\,
	datab => \inst|44~regout\,
	datac => \inst|45~regout\,
	datad => \inst|43~regout\,
	combout => \inst1|70~combout\);

-- Location: LCCOMB_X1_Y8_N22
\inst1|67~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|67~0_combout\ = (\inst|44~regout\ & (\inst|45~regout\ & \inst|43~regout\)) # (!\inst|44~regout\ & (\inst|45~regout\ $ (\inst|43~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|44~regout\,
	datac => \inst|45~regout\,
	datad => \inst|43~regout\,
	combout => \inst1|67~0_combout\);

-- Location: LCCOMB_X1_Y8_N16
\inst1|71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|71~combout\ = (\inst|43~regout\) # ((!\inst|44~regout\ & \inst|45~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|44~regout\,
	datac => \inst|45~regout\,
	datad => \inst|43~regout\,
	combout => \inst1|71~combout\);

-- Location: LCCOMB_X1_Y8_N26
\inst1|66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|66~0_combout\ = (\inst|44~regout\ & (((\inst|43~regout\) # (!\inst|45~regout\)))) # (!\inst|44~regout\ & (!\inst|46~regout\ & (!\inst|45~regout\ & \inst|43~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|46~regout\,
	datab => \inst|44~regout\,
	datac => \inst|45~regout\,
	datad => \inst|43~regout\,
	combout => \inst1|66~0_combout\);

-- Location: LCCOMB_X1_Y8_N20
\inst1|72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|72~combout\ = (\inst|44~regout\ & (((\inst|45~regout\ & \inst|43~regout\)))) # (!\inst|44~regout\ & (!\inst|46~regout\ & (!\inst|45~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|46~regout\,
	datab => \inst|44~regout\,
	datac => \inst|45~regout\,
	datad => \inst|43~regout\,
	combout => \inst1|72~combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_a);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_b);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_70~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\e~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_71~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_e);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_72~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g);
END structure;


