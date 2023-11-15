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

-- DATE "11/15/2023 15:58:30"

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
	in5 : IN std_logic;
	in0 : IN std_logic;
	in1 : IN std_logic;
	in2 : IN std_logic;
	in3 : IN std_logic;
	in4 : IN std_logic;
	in6 : IN std_logic;
	in7 : IN std_logic;
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
-- in0	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- e	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- in7	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in5	=>  Location: PIN_116,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in4	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in6	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_in5 : std_logic;
SIGNAL ww_in0 : std_logic;
SIGNAL ww_in1 : std_logic;
SIGNAL ww_in2 : std_logic;
SIGNAL ww_in3 : std_logic;
SIGNAL ww_in4 : std_logic;
SIGNAL ww_in6 : std_logic;
SIGNAL ww_in7 : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \in7~combout\ : std_logic;
SIGNAL \in2~combout\ : std_logic;
SIGNAL \in1~combout\ : std_logic;
SIGNAL \in3~combout\ : std_logic;
SIGNAL \inst1|69~3_combout\ : std_logic;
SIGNAL \in5~combout\ : std_logic;
SIGNAL \in6~combout\ : std_logic;
SIGNAL \inst1|69~combout\ : std_logic;
SIGNAL \inst1|68~0_combout\ : std_logic;
SIGNAL \inst1|4~3_combout\ : std_logic;
SIGNAL \in4~combout\ : std_logic;
SIGNAL \inst1|4~12_combout\ : std_logic;
SIGNAL \inst1|67~3_combout\ : std_logic;
SIGNAL \inst1|67~15_combout\ : std_logic;
SIGNAL \inst1|71~3_combout\ : std_logic;
SIGNAL \inst1|71~combout\ : std_logic;
SIGNAL \inst1|66~3_combout\ : std_logic;
SIGNAL \inst1|66~15_combout\ : std_logic;
SIGNAL \inst1|72~0_combout\ : std_logic;
SIGNAL \inst1|72~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_66~15_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_71~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_4~12_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_69~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_72~1_combout\ : std_logic;

BEGIN

a <= ww_a;
ww_in5 <= in5;
ww_in0 <= in0;
ww_in1 <= in1;
ww_in2 <= in2;
ww_in3 <= in3;
ww_in4 <= in4;
ww_in6 <= in6;
ww_in7 <= in7;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|ALT_INV_66~15_combout\ <= NOT \inst1|66~15_combout\;
\inst1|ALT_INV_71~combout\ <= NOT \inst1|71~combout\;
\inst1|ALT_INV_4~12_combout\ <= NOT \inst1|4~12_combout\;
\inst1|ALT_INV_69~combout\ <= NOT \inst1|69~combout\;
\inst1|ALT_INV_72~1_combout\ <= NOT \inst1|72~1_combout\;

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in7~I\ : cycloneii_io
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
	padio => ww_in7,
	combout => \in7~combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2~I\ : cycloneii_io
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
	padio => ww_in2,
	combout => \in2~combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1~I\ : cycloneii_io
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
	padio => ww_in1,
	combout => \in1~combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3~I\ : cycloneii_io
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
	padio => ww_in3,
	combout => \in3~combout\);

-- Location: LCCOMB_X1_Y7_N8
\inst1|69~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|69~3_combout\ = ((\in2~combout\ & (!\in1~combout\ & \in3~combout\))) # (!\in4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in4~combout\,
	datab => \in2~combout\,
	datac => \in1~combout\,
	datad => \in3~combout\,
	combout => \inst1|69~3_combout\);

-- Location: PIN_116,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in5~I\ : cycloneii_io
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
	padio => ww_in5,
	combout => \in5~combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in6~I\ : cycloneii_io
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
	padio => ww_in6,
	combout => \in6~combout\);

-- Location: LCCOMB_X1_Y7_N22
\inst1|69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|69~combout\ = (\in7~combout\ & (((\inst1|69~3_combout\ & \in5~combout\)) # (!\in6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in7~combout\,
	datab => \inst1|69~3_combout\,
	datac => \in5~combout\,
	datad => \in6~combout\,
	combout => \inst1|69~combout\);

-- Location: LCCOMB_X1_Y7_N0
\inst1|68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|68~0_combout\ = ((\in5~combout\ & \in6~combout\)) # (!\in7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in7~combout\,
	datac => \in5~combout\,
	datad => \in6~combout\,
	combout => \inst1|68~0_combout\);

-- Location: LCCOMB_X1_Y7_N12
\inst1|4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|4~3_combout\ = (\in7~combout\ & (!\in2~combout\ & \in6~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in7~combout\,
	datac => \in2~combout\,
	datad => \in6~combout\,
	combout => \inst1|4~3_combout\);

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in4~I\ : cycloneii_io
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
	padio => ww_in4,
	combout => \in4~combout\);

-- Location: LCCOMB_X1_Y7_N2
\inst1|4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|4~12_combout\ = (\inst1|4~3_combout\ & (\in3~combout\ & (\in5~combout\ & \in4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|4~3_combout\,
	datab => \in3~combout\,
	datac => \in5~combout\,
	datad => \in4~combout\,
	combout => \inst1|4~12_combout\);

-- Location: LCCOMB_X1_Y7_N24
\inst1|67~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|67~3_combout\ = (\in4~combout\ & (((\in1~combout\) # (!\in3~combout\)) # (!\in2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in4~combout\,
	datab => \in2~combout\,
	datac => \in1~combout\,
	datad => \in3~combout\,
	combout => \inst1|67~3_combout\);

-- Location: LCCOMB_X1_Y7_N6
\inst1|67~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|67~15_combout\ = (\in7~combout\ & (((\inst1|67~3_combout\) # (!\in6~combout\)) # (!\in5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in7~combout\,
	datab => \in5~combout\,
	datac => \inst1|67~3_combout\,
	datad => \in6~combout\,
	combout => \inst1|67~15_combout\);

-- Location: LCCOMB_X1_Y7_N28
\inst1|71~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|71~3_combout\ = (((!\in1~combout\ & \in2~combout\)) # (!\in3~combout\)) # (!\in5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1~combout\,
	datab => \in2~combout\,
	datac => \in5~combout\,
	datad => \in3~combout\,
	combout => \inst1|71~3_combout\);

-- Location: LCCOMB_X1_Y7_N10
\inst1|71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|71~combout\ = ((\in6~combout\ & ((\inst1|71~3_combout\) # (!\in4~combout\)))) # (!\in7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in7~combout\,
	datab => \inst1|71~3_combout\,
	datac => \in6~combout\,
	datad => \in4~combout\,
	combout => \inst1|71~combout\);

-- Location: LCCOMB_X1_Y7_N16
\inst1|66~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|66~3_combout\ = (\in6~combout\ & (((!\in3~combout\) # (!\in1~combout\)) # (!\in2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in6~combout\,
	datab => \in2~combout\,
	datac => \in1~combout\,
	datad => \in3~combout\,
	combout => \inst1|66~3_combout\);

-- Location: LCCOMB_X1_Y7_N30
\inst1|66~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|66~15_combout\ = ((\inst1|66~3_combout\ & (\in5~combout\ & \in4~combout\))) # (!\in7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|66~3_combout\,
	datab => \in5~combout\,
	datac => \in7~combout\,
	datad => \in4~combout\,
	combout => \inst1|66~15_combout\);

-- Location: LCCOMB_X1_Y7_N18
\inst1|72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|72~0_combout\ = (\in6~combout\ & (\in5~combout\ & \in4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in6~combout\,
	datac => \in5~combout\,
	datad => \in4~combout\,
	combout => \inst1|72~0_combout\);

-- Location: LCCOMB_X1_Y7_N20
\inst1|72~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|72~1_combout\ = ((\inst1|72~0_combout\ & (\in2~combout\ & \in3~combout\))) # (!\in7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in7~combout\,
	datab => \inst1|72~0_combout\,
	datac => \in2~combout\,
	datad => \in3~combout\,
	combout => \inst1|72~1_combout\);

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
	datain => \inst1|ALT_INV_69~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_a);

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0~I\ : cycloneii_io
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
	padio => ww_in0);

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
	datain => \inst1|68~0_combout\,
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
	datain => \inst1|ALT_INV_4~12_combout\,
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
	datain => \inst1|67~15_combout\,
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
	datain => \inst1|ALT_INV_66~15_combout\,
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
	datain => \inst1|ALT_INV_72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g);
END structure;


