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

-- DATE "11/22/2023 15:41:30"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	first IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	andOut : OUT std_logic;
	orOut : OUT std_logic;
	notOut : OUT std_logic
	);
END first;

-- Design Ports Information
-- andOut	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- orOut	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notOut	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF first IS
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
SIGNAL ww_b : std_logic;
SIGNAL ww_andOut : std_logic;
SIGNAL ww_orOut : std_logic;
SIGNAL ww_notOut : std_logic;
SIGNAL \andOut~output_o\ : std_logic;
SIGNAL \orOut~output_o\ : std_logic;
SIGNAL \notOut~output_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \andOut~0_combout\ : std_logic;
SIGNAL \orOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
andOut <= ww_andOut;
orOut <= ww_orOut;
notOut <= ww_notOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;

-- Location: IOOBUF_X23_Y24_N23
\andOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \andOut~0_combout\,
	devoe => ww_devoe,
	o => \andOut~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\orOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \orOut~0_combout\,
	devoe => ww_devoe,
	o => \orOut~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\notOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_a~input_o\,
	devoe => ww_devoe,
	o => \notOut~output_o\);

-- Location: IOIBUF_X18_Y0_N15
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X22_Y23_N0
\andOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \andOut~0_combout\ = (\b~input_o\ & \a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datac => \a~input_o\,
	combout => \andOut~0_combout\);

-- Location: LCCOMB_X22_Y23_N2
\orOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \orOut~0_combout\ = (\b~input_o\) # (\a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datac => \a~input_o\,
	combout => \orOut~0_combout\);

ww_andOut <= \andOut~output_o\;

ww_orOut <= \orOut~output_o\;

ww_notOut <= \notOut~output_o\;
END structure;


