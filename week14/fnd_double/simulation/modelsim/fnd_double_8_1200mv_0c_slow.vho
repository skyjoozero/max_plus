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

-- DATE "12/06/2023 15:22:20"

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

ENTITY 	fnd_double IS
    PORT (
	clk : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	FND : OUT std_logic_vector(6 DOWNTO 0);
	FNDSel2 : OUT std_logic;
	FNDSel1 : OUT std_logic
	);
END fnd_double;

-- Design Ports Information
-- FND[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FND[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FNDSel2	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FNDSel1	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fnd_double IS
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
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FND : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_FNDSel2 : std_logic;
SIGNAL ww_FNDSel1 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m[5]~42_combout\ : std_logic;
SIGNAL \m[6]~44_combout\ : std_logic;
SIGNAL \m[14]~60_combout\ : std_logic;
SIGNAL \m[19]~70_combout\ : std_logic;
SIGNAL \m[22]~76_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FND[0]~output_o\ : std_logic;
SIGNAL \FND[1]~output_o\ : std_logic;
SIGNAL \FND[2]~output_o\ : std_logic;
SIGNAL \FND[3]~output_o\ : std_logic;
SIGNAL \FND[4]~output_o\ : std_logic;
SIGNAL \FND[5]~output_o\ : std_logic;
SIGNAL \FND[6]~output_o\ : std_logic;
SIGNAL \FNDSel2~output_o\ : std_logic;
SIGNAL \FNDSel1~output_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \m[0]~32_combout\ : std_logic;
SIGNAL \m[0]~33\ : std_logic;
SIGNAL \m[1]~34_combout\ : std_logic;
SIGNAL \m[1]~35\ : std_logic;
SIGNAL \m[2]~36_combout\ : std_logic;
SIGNAL \m[2]~37\ : std_logic;
SIGNAL \m[3]~39\ : std_logic;
SIGNAL \m[4]~40_combout\ : std_logic;
SIGNAL \m[4]~41\ : std_logic;
SIGNAL \m[5]~43\ : std_logic;
SIGNAL \m[6]~45\ : std_logic;
SIGNAL \m[7]~46_combout\ : std_logic;
SIGNAL \m[7]~47\ : std_logic;
SIGNAL \m[8]~48_combout\ : std_logic;
SIGNAL \m[8]~49\ : std_logic;
SIGNAL \m[9]~50_combout\ : std_logic;
SIGNAL \m[9]~51\ : std_logic;
SIGNAL \m[10]~52_combout\ : std_logic;
SIGNAL \m[10]~53\ : std_logic;
SIGNAL \m[11]~55\ : std_logic;
SIGNAL \m[12]~56_combout\ : std_logic;
SIGNAL \m[12]~57\ : std_logic;
SIGNAL \m[13]~59\ : std_logic;
SIGNAL \m[14]~61\ : std_logic;
SIGNAL \m[15]~63\ : std_logic;
SIGNAL \m[16]~64_combout\ : std_logic;
SIGNAL \m[16]~65\ : std_logic;
SIGNAL \m[17]~66_combout\ : std_logic;
SIGNAL \m[17]~67\ : std_logic;
SIGNAL \m[18]~68_combout\ : std_logic;
SIGNAL \m[18]~69\ : std_logic;
SIGNAL \m[19]~71\ : std_logic;
SIGNAL \m[20]~72_combout\ : std_logic;
SIGNAL \m[20]~73\ : std_logic;
SIGNAL \m[21]~75\ : std_logic;
SIGNAL \m[22]~77\ : std_logic;
SIGNAL \m[23]~78_combout\ : std_logic;
SIGNAL \m[23]~79\ : std_logic;
SIGNAL \m[24]~80_combout\ : std_logic;
SIGNAL \m[24]~81\ : std_logic;
SIGNAL \m[25]~82_combout\ : std_logic;
SIGNAL \m[25]~83\ : std_logic;
SIGNAL \m[26]~84_combout\ : std_logic;
SIGNAL \m[26]~85\ : std_logic;
SIGNAL \m[27]~87\ : std_logic;
SIGNAL \m[28]~88_combout\ : std_logic;
SIGNAL \m[28]~89\ : std_logic;
SIGNAL \m[29]~91\ : std_logic;
SIGNAL \m[30]~92_combout\ : std_logic;
SIGNAL \m[30]~93\ : std_logic;
SIGNAL \m[31]~94_combout\ : std_logic;
SIGNAL \m[11]~54_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \m[3]~38_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \m[29]~90_combout\ : std_logic;
SIGNAL \m[15]~62_combout\ : std_logic;
SIGNAL \m[13]~58_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \m[27]~86_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \m[21]~74_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \clk100Hz~0_combout\ : std_logic;
SIGNAL \clk100Hz~q\ : std_logic;
SIGNAL \FND~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \FND~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \FND~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \FND~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \FND~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \FND~5_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \FND~6_combout\ : std_logic;
SIGNAL m : std_logic_vector(31 DOWNTO 0);
SIGNAL FNDb : std_logic_vector(6 DOWNTO 0);
SIGNAL FNDa : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_clk100Hz~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_a <= a;
ww_b <= b;
FND <= ww_FND;
FNDSel2 <= ww_FNDSel2;
FNDSel1 <= ww_FNDSel1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk100Hz~q\ <= NOT \clk100Hz~q\;

-- Location: FF_X28_Y17_N1
\m[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m[14]~60_combout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(14));

-- Location: FF_X29_Y17_N7
\m[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[19]~70_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(19));

-- Location: FF_X29_Y17_N13
\m[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[22]~76_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(22));

-- Location: FF_X29_Y18_N11
\m[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[5]~42_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(5));

-- Location: FF_X29_Y18_N13
\m[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[6]~44_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(6));

-- Location: LCCOMB_X29_Y18_N10
\m[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[5]~42_combout\ = (m(5) & (!\m[4]~41\)) # (!m(5) & ((\m[4]~41\) # (GND)))
-- \m[5]~43\ = CARRY((!\m[4]~41\) # (!m(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(5),
	datad => VCC,
	cin => \m[4]~41\,
	combout => \m[5]~42_combout\,
	cout => \m[5]~43\);

-- Location: LCCOMB_X29_Y18_N12
\m[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[6]~44_combout\ = (m(6) & (\m[5]~43\ $ (GND))) # (!m(6) & (!\m[5]~43\ & VCC))
-- \m[6]~45\ = CARRY((m(6) & !\m[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(6),
	datad => VCC,
	cin => \m[5]~43\,
	combout => \m[6]~44_combout\,
	cout => \m[6]~45\);

-- Location: LCCOMB_X29_Y18_N28
\m[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[14]~60_combout\ = (m(14) & (\m[13]~59\ $ (GND))) # (!m(14) & (!\m[13]~59\ & VCC))
-- \m[14]~61\ = CARRY((m(14) & !\m[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(14),
	datad => VCC,
	cin => \m[13]~59\,
	combout => \m[14]~60_combout\,
	cout => \m[14]~61\);

-- Location: LCCOMB_X29_Y17_N6
\m[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[19]~70_combout\ = (m(19) & (!\m[18]~69\)) # (!m(19) & ((\m[18]~69\) # (GND)))
-- \m[19]~71\ = CARRY((!\m[18]~69\) # (!m(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(19),
	datad => VCC,
	cin => \m[18]~69\,
	combout => \m[19]~70_combout\,
	cout => \m[19]~71\);

-- Location: LCCOMB_X29_Y17_N12
\m[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[22]~76_combout\ = (m(22) & (\m[21]~75\ $ (GND))) # (!m(22) & (!\m[21]~75\ & VCC))
-- \m[22]~77\ = CARRY((m(22) & !\m[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(22),
	datad => VCC,
	cin => \m[21]~75\,
	combout => \m[22]~76_combout\,
	cout => \m[22]~77\);

-- Location: LCCOMB_X28_Y17_N26
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!m(19) & (!m(20) & (!m(18) & !m(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(19),
	datab => m(20),
	datac => m(18),
	datad => m(17),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y17_N12
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!m(11) & !m(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(11),
	datad => m(10),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X28_Y17_N6
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~6_combout\ & (((!m(9)) # (!m(8))) # (!m(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(7),
	datab => m(8),
	datac => m(9),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: IOIBUF_X21_Y0_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: CLKCTRL_G7
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

-- Location: IOOBUF_X28_Y24_N2
\FND[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND~0_combout\,
	devoe => ww_devoe,
	o => \FND[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\FND[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND~1_combout\,
	devoe => ww_devoe,
	o => \FND[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\FND[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND~2_combout\,
	devoe => ww_devoe,
	o => \FND[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\FND[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND~3_combout\,
	devoe => ww_devoe,
	o => \FND[3]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\FND[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND~4_combout\,
	devoe => ww_devoe,
	o => \FND[4]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\FND[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND~5_combout\,
	devoe => ww_devoe,
	o => \FND[5]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\FND[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FND~6_combout\,
	devoe => ww_devoe,
	o => \FND[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\FNDSel2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk100Hz~q\,
	devoe => ww_devoe,
	o => \FNDSel2~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\FNDSel1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clk100Hz~q\,
	devoe => ww_devoe,
	o => \FNDSel1~output_o\);

-- Location: IOIBUF_X18_Y0_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X23_Y22_N8
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\a[3]~input_o\) # ((\a[1]~input_o\ & ((!\a[0]~input_o\) # (!\a[2]~input_o\))) # (!\a[1]~input_o\ & (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: FF_X23_Y22_N9
\FNDa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDa(0));

-- Location: IOIBUF_X21_Y0_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X24_Y22_N0
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\b[3]~input_o\) # ((\b[2]~input_o\ & ((!\b[0]~input_o\) # (!\b[1]~input_o\))) # (!\b[2]~input_o\ & (\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: FF_X24_Y22_N1
\FNDb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDb(0));

-- Location: LCCOMB_X29_Y18_N0
\m[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[0]~32_combout\ = m(0) $ (VCC)
-- \m[0]~33\ = CARRY(m(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(0),
	datad => VCC,
	combout => \m[0]~32_combout\,
	cout => \m[0]~33\);

-- Location: FF_X29_Y18_N1
\m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[0]~32_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(0));

-- Location: LCCOMB_X29_Y18_N2
\m[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[1]~34_combout\ = (m(1) & (!\m[0]~33\)) # (!m(1) & ((\m[0]~33\) # (GND)))
-- \m[1]~35\ = CARRY((!\m[0]~33\) # (!m(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(1),
	datad => VCC,
	cin => \m[0]~33\,
	combout => \m[1]~34_combout\,
	cout => \m[1]~35\);

-- Location: FF_X29_Y18_N3
\m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[1]~34_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(1));

-- Location: LCCOMB_X29_Y18_N4
\m[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[2]~36_combout\ = (m(2) & (\m[1]~35\ $ (GND))) # (!m(2) & (!\m[1]~35\ & VCC))
-- \m[2]~37\ = CARRY((m(2) & !\m[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(2),
	datad => VCC,
	cin => \m[1]~35\,
	combout => \m[2]~36_combout\,
	cout => \m[2]~37\);

-- Location: FF_X29_Y18_N5
\m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[2]~36_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(2));

-- Location: LCCOMB_X29_Y18_N6
\m[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[3]~38_combout\ = (m(3) & (!\m[2]~37\)) # (!m(3) & ((\m[2]~37\) # (GND)))
-- \m[3]~39\ = CARRY((!\m[2]~37\) # (!m(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(3),
	datad => VCC,
	cin => \m[2]~37\,
	combout => \m[3]~38_combout\,
	cout => \m[3]~39\);

-- Location: LCCOMB_X29_Y18_N8
\m[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[4]~40_combout\ = (m(4) & (\m[3]~39\ $ (GND))) # (!m(4) & (!\m[3]~39\ & VCC))
-- \m[4]~41\ = CARRY((m(4) & !\m[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(4),
	datad => VCC,
	cin => \m[3]~39\,
	combout => \m[4]~40_combout\,
	cout => \m[4]~41\);

-- Location: FF_X29_Y18_N9
\m[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[4]~40_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(4));

-- Location: LCCOMB_X29_Y18_N14
\m[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[7]~46_combout\ = (m(7) & (!\m[6]~45\)) # (!m(7) & ((\m[6]~45\) # (GND)))
-- \m[7]~47\ = CARRY((!\m[6]~45\) # (!m(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(7),
	datad => VCC,
	cin => \m[6]~45\,
	combout => \m[7]~46_combout\,
	cout => \m[7]~47\);

-- Location: FF_X29_Y18_N15
\m[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[7]~46_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(7));

-- Location: LCCOMB_X29_Y18_N16
\m[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[8]~48_combout\ = (m(8) & (\m[7]~47\ $ (GND))) # (!m(8) & (!\m[7]~47\ & VCC))
-- \m[8]~49\ = CARRY((m(8) & !\m[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(8),
	datad => VCC,
	cin => \m[7]~47\,
	combout => \m[8]~48_combout\,
	cout => \m[8]~49\);

-- Location: FF_X29_Y18_N17
\m[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[8]~48_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(8));

-- Location: LCCOMB_X29_Y18_N18
\m[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[9]~50_combout\ = (m(9) & (!\m[8]~49\)) # (!m(9) & ((\m[8]~49\) # (GND)))
-- \m[9]~51\ = CARRY((!\m[8]~49\) # (!m(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(9),
	datad => VCC,
	cin => \m[8]~49\,
	combout => \m[9]~50_combout\,
	cout => \m[9]~51\);

-- Location: FF_X29_Y18_N19
\m[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[9]~50_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(9));

-- Location: LCCOMB_X29_Y18_N20
\m[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[10]~52_combout\ = (m(10) & (\m[9]~51\ $ (GND))) # (!m(10) & (!\m[9]~51\ & VCC))
-- \m[10]~53\ = CARRY((m(10) & !\m[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(10),
	datad => VCC,
	cin => \m[9]~51\,
	combout => \m[10]~52_combout\,
	cout => \m[10]~53\);

-- Location: FF_X29_Y18_N21
\m[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[10]~52_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(10));

-- Location: LCCOMB_X29_Y18_N22
\m[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[11]~54_combout\ = (m(11) & (!\m[10]~53\)) # (!m(11) & ((\m[10]~53\) # (GND)))
-- \m[11]~55\ = CARRY((!\m[10]~53\) # (!m(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(11),
	datad => VCC,
	cin => \m[10]~53\,
	combout => \m[11]~54_combout\,
	cout => \m[11]~55\);

-- Location: LCCOMB_X29_Y18_N24
\m[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[12]~56_combout\ = (m(12) & (\m[11]~55\ $ (GND))) # (!m(12) & (!\m[11]~55\ & VCC))
-- \m[12]~57\ = CARRY((m(12) & !\m[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(12),
	datad => VCC,
	cin => \m[11]~55\,
	combout => \m[12]~56_combout\,
	cout => \m[12]~57\);

-- Location: FF_X29_Y18_N25
\m[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[12]~56_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(12));

-- Location: LCCOMB_X29_Y18_N26
\m[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[13]~58_combout\ = (m(13) & (!\m[12]~57\)) # (!m(13) & ((\m[12]~57\) # (GND)))
-- \m[13]~59\ = CARRY((!\m[12]~57\) # (!m(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(13),
	datad => VCC,
	cin => \m[12]~57\,
	combout => \m[13]~58_combout\,
	cout => \m[13]~59\);

-- Location: LCCOMB_X29_Y18_N30
\m[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[15]~62_combout\ = (m(15) & (!\m[14]~61\)) # (!m(15) & ((\m[14]~61\) # (GND)))
-- \m[15]~63\ = CARRY((!\m[14]~61\) # (!m(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(15),
	datad => VCC,
	cin => \m[14]~61\,
	combout => \m[15]~62_combout\,
	cout => \m[15]~63\);

-- Location: LCCOMB_X29_Y17_N0
\m[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[16]~64_combout\ = (m(16) & (\m[15]~63\ $ (GND))) # (!m(16) & (!\m[15]~63\ & VCC))
-- \m[16]~65\ = CARRY((m(16) & !\m[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(16),
	datad => VCC,
	cin => \m[15]~63\,
	combout => \m[16]~64_combout\,
	cout => \m[16]~65\);

-- Location: FF_X29_Y17_N1
\m[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[16]~64_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(16));

-- Location: LCCOMB_X29_Y17_N2
\m[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[17]~66_combout\ = (m(17) & (!\m[16]~65\)) # (!m(17) & ((\m[16]~65\) # (GND)))
-- \m[17]~67\ = CARRY((!\m[16]~65\) # (!m(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(17),
	datad => VCC,
	cin => \m[16]~65\,
	combout => \m[17]~66_combout\,
	cout => \m[17]~67\);

-- Location: FF_X29_Y17_N3
\m[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[17]~66_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(17));

-- Location: LCCOMB_X29_Y17_N4
\m[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[18]~68_combout\ = (m(18) & (\m[17]~67\ $ (GND))) # (!m(18) & (!\m[17]~67\ & VCC))
-- \m[18]~69\ = CARRY((m(18) & !\m[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(18),
	datad => VCC,
	cin => \m[17]~67\,
	combout => \m[18]~68_combout\,
	cout => \m[18]~69\);

-- Location: FF_X29_Y17_N5
\m[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[18]~68_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(18));

-- Location: LCCOMB_X29_Y17_N8
\m[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[20]~72_combout\ = (m(20) & (\m[19]~71\ $ (GND))) # (!m(20) & (!\m[19]~71\ & VCC))
-- \m[20]~73\ = CARRY((m(20) & !\m[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(20),
	datad => VCC,
	cin => \m[19]~71\,
	combout => \m[20]~72_combout\,
	cout => \m[20]~73\);

-- Location: FF_X29_Y17_N9
\m[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[20]~72_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(20));

-- Location: LCCOMB_X29_Y17_N10
\m[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[21]~74_combout\ = (m(21) & (!\m[20]~73\)) # (!m(21) & ((\m[20]~73\) # (GND)))
-- \m[21]~75\ = CARRY((!\m[20]~73\) # (!m(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(21),
	datad => VCC,
	cin => \m[20]~73\,
	combout => \m[21]~74_combout\,
	cout => \m[21]~75\);

-- Location: LCCOMB_X29_Y17_N14
\m[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[23]~78_combout\ = (m(23) & (!\m[22]~77\)) # (!m(23) & ((\m[22]~77\) # (GND)))
-- \m[23]~79\ = CARRY((!\m[22]~77\) # (!m(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(23),
	datad => VCC,
	cin => \m[22]~77\,
	combout => \m[23]~78_combout\,
	cout => \m[23]~79\);

-- Location: FF_X29_Y17_N15
\m[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[23]~78_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(23));

-- Location: LCCOMB_X29_Y17_N16
\m[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[24]~80_combout\ = (m(24) & (\m[23]~79\ $ (GND))) # (!m(24) & (!\m[23]~79\ & VCC))
-- \m[24]~81\ = CARRY((m(24) & !\m[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(24),
	datad => VCC,
	cin => \m[23]~79\,
	combout => \m[24]~80_combout\,
	cout => \m[24]~81\);

-- Location: FF_X29_Y17_N17
\m[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[24]~80_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(24));

-- Location: LCCOMB_X29_Y17_N18
\m[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[25]~82_combout\ = (m(25) & (!\m[24]~81\)) # (!m(25) & ((\m[24]~81\) # (GND)))
-- \m[25]~83\ = CARRY((!\m[24]~81\) # (!m(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(25),
	datad => VCC,
	cin => \m[24]~81\,
	combout => \m[25]~82_combout\,
	cout => \m[25]~83\);

-- Location: FF_X29_Y17_N19
\m[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[25]~82_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(25));

-- Location: LCCOMB_X29_Y17_N20
\m[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[26]~84_combout\ = (m(26) & (\m[25]~83\ $ (GND))) # (!m(26) & (!\m[25]~83\ & VCC))
-- \m[26]~85\ = CARRY((m(26) & !\m[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(26),
	datad => VCC,
	cin => \m[25]~83\,
	combout => \m[26]~84_combout\,
	cout => \m[26]~85\);

-- Location: FF_X29_Y17_N21
\m[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[26]~84_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(26));

-- Location: LCCOMB_X29_Y17_N22
\m[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[27]~86_combout\ = (m(27) & (!\m[26]~85\)) # (!m(27) & ((\m[26]~85\) # (GND)))
-- \m[27]~87\ = CARRY((!\m[26]~85\) # (!m(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(27),
	datad => VCC,
	cin => \m[26]~85\,
	combout => \m[27]~86_combout\,
	cout => \m[27]~87\);

-- Location: LCCOMB_X29_Y17_N24
\m[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[28]~88_combout\ = (m(28) & (\m[27]~87\ $ (GND))) # (!m(28) & (!\m[27]~87\ & VCC))
-- \m[28]~89\ = CARRY((m(28) & !\m[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(28),
	datad => VCC,
	cin => \m[27]~87\,
	combout => \m[28]~88_combout\,
	cout => \m[28]~89\);

-- Location: FF_X29_Y17_N25
\m[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[28]~88_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(28));

-- Location: LCCOMB_X29_Y17_N26
\m[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[29]~90_combout\ = (m(29) & (!\m[28]~89\)) # (!m(29) & ((\m[28]~89\) # (GND)))
-- \m[29]~91\ = CARRY((!\m[28]~89\) # (!m(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(29),
	datad => VCC,
	cin => \m[28]~89\,
	combout => \m[29]~90_combout\,
	cout => \m[29]~91\);

-- Location: LCCOMB_X29_Y17_N28
\m[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[30]~92_combout\ = (m(30) & (\m[29]~91\ $ (GND))) # (!m(30) & (!\m[29]~91\ & VCC))
-- \m[30]~93\ = CARRY((m(30) & !\m[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(30),
	datad => VCC,
	cin => \m[29]~91\,
	combout => \m[30]~92_combout\,
	cout => \m[30]~93\);

-- Location: FF_X29_Y17_N29
\m[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[30]~92_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(30));

-- Location: LCCOMB_X29_Y17_N30
\m[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \m[31]~94_combout\ = m(31) $ (\m[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(31),
	cin => \m[30]~93\,
	combout => \m[31]~94_combout\);

-- Location: FF_X29_Y17_N31
\m[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[31]~94_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(31));

-- Location: FF_X29_Y18_N23
\m[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[11]~54_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(11));

-- Location: LCCOMB_X28_Y17_N22
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!m(5) & (!m(11) & (!m(4) & !m(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(5),
	datab => m(11),
	datac => m(4),
	datad => m(10),
	combout => \LessThan0~9_combout\);

-- Location: FF_X29_Y18_N7
\m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[3]~38_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(3));

-- Location: LCCOMB_X28_Y17_N24
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!m(3) & (((!m(2)) # (!m(0))) # (!m(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(1),
	datab => m(3),
	datac => m(0),
	datad => m(2),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X28_Y17_N4
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ((!m(6) & (\LessThan0~9_combout\ & \LessThan0~8_combout\))) # (!m(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(6),
	datab => m(12),
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X29_Y17_N27
\m[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[29]~90_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(29));

-- Location: FF_X29_Y18_N31
\m[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[15]~62_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(15));

-- Location: FF_X29_Y18_N27
\m[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[13]~58_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(13));

-- Location: LCCOMB_X28_Y17_N28
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!m(14) & (!m(16) & (!m(15) & !m(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(14),
	datab => m(16),
	datac => m(15),
	datad => m(13),
	combout => \LessThan0~0_combout\);

-- Location: FF_X29_Y17_N23
\m[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[27]~86_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(27));

-- Location: LCCOMB_X28_Y17_N30
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!m(26) & (!m(27) & (!m(28) & !m(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(26),
	datab => m(27),
	datac => m(28),
	datad => m(25),
	combout => \LessThan0~3_combout\);

-- Location: FF_X29_Y17_N11
\m[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m[21]~74_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(21));

-- Location: LCCOMB_X28_Y17_N16
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!m(22) & (!m(21) & (!m(23) & !m(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(22),
	datab => m(21),
	datac => m(23),
	datad => m(24),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y17_N20
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\ & (\LessThan0~0_combout\ & (\LessThan0~3_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X28_Y17_N18
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!m(29) & (!m(30) & \LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(29),
	datac => m(30),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X28_Y17_N2
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (!m(31) & (((!\LessThan0~7_combout\ & !\LessThan0~10_combout\)) # (!\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => m(31),
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X28_Y17_N10
\clk100Hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk100Hz~0_combout\ = \clk100Hz~q\ $ (\LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk100Hz~q\,
	datad => \LessThan0~11_combout\,
	combout => \clk100Hz~0_combout\);

-- Location: FF_X28_Y17_N11
clk100Hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk100Hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk100Hz~q\);

-- Location: LCCOMB_X24_Y22_N14
\FND~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND~0_combout\ = (\clk100Hz~q\ & ((FNDb(0)))) # (!\clk100Hz~q\ & (FNDa(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDa(0),
	datab => FNDb(0),
	datad => \clk100Hz~q\,
	combout => \FND~0_combout\);

-- Location: LCCOMB_X24_Y22_N16
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\b[2]~input_o\ & ((\b[1]~input_o\ & ((\b[3]~input_o\) # (!\b[0]~input_o\))) # (!\b[1]~input_o\ & ((!\b[3]~input_o\))))) # (!\b[2]~input_o\ & ((\b[0]~input_o\ & ((\b[3]~input_o\))) # (!\b[0]~input_o\ & (!\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: FF_X24_Y22_N17
\FNDb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDb(1));

-- Location: LCCOMB_X23_Y22_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\a[1]~input_o\ & ((\a[0]~input_o\ & ((\a[3]~input_o\))) # (!\a[0]~input_o\ & (\a[2]~input_o\)))) # (!\a[1]~input_o\ & ((\a[2]~input_o\ & ((!\a[3]~input_o\))) # (!\a[2]~input_o\ & ((\a[3]~input_o\) # (!\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: FF_X23_Y22_N7
\FNDa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDa(1));

-- Location: LCCOMB_X24_Y22_N6
\FND~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND~1_combout\ = (\clk100Hz~q\ & (FNDb(1))) # (!\clk100Hz~q\ & ((FNDa(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk100Hz~q\,
	datab => FNDb(1),
	datac => FNDa(1),
	combout => \FND~1_combout\);

-- Location: LCCOMB_X24_Y22_N12
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\b[1]~input_o\ & (((\b[3]~input_o\) # (!\b[0]~input_o\)))) # (!\b[1]~input_o\ & ((\b[2]~input_o\ & ((\b[3]~input_o\))) # (!\b[2]~input_o\ & (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: FF_X24_Y22_N13
\FNDb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDb(2));

-- Location: LCCOMB_X23_Y22_N4
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\a[1]~input_o\ & (((\a[3]~input_o\) # (!\a[0]~input_o\)))) # (!\a[1]~input_o\ & ((\a[2]~input_o\ & ((\a[3]~input_o\))) # (!\a[2]~input_o\ & (!\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: FF_X23_Y22_N5
\FNDa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDa(2));

-- Location: LCCOMB_X24_Y22_N10
\FND~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND~2_combout\ = (\clk100Hz~q\ & (FNDb(2))) # (!\clk100Hz~q\ & ((FNDa(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDb(2),
	datac => FNDa(2),
	datad => \clk100Hz~q\,
	combout => \FND~2_combout\);

-- Location: LCCOMB_X23_Y22_N10
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\a[0]~input_o\ & (\a[1]~input_o\ $ ((\a[2]~input_o\)))) # (!\a[0]~input_o\ & ((\a[1]~input_o\) # ((\a[3]~input_o\) # (!\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: FF_X23_Y22_N11
\FNDa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDa(3));

-- Location: LCCOMB_X24_Y22_N28
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\b[0]~input_o\ & (\b[2]~input_o\ $ ((\b[1]~input_o\)))) # (!\b[0]~input_o\ & (((\b[1]~input_o\) # (\b[3]~input_o\)) # (!\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: FF_X24_Y22_N29
\FNDb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDb(3));

-- Location: LCCOMB_X24_Y22_N22
\FND~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND~3_combout\ = (\clk100Hz~q\ & ((FNDb(3)))) # (!\clk100Hz~q\ & (FNDa(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDa(3),
	datab => FNDb(3),
	datad => \clk100Hz~q\,
	combout => \FND~3_combout\);

-- Location: LCCOMB_X23_Y22_N12
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\a[2]~input_o\ & (((!\a[1]~input_o\ & \a[0]~input_o\)) # (!\a[3]~input_o\))) # (!\a[2]~input_o\ & (((\a[0]~input_o\) # (\a[3]~input_o\)) # (!\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X23_Y22_N13
\FNDa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDa(4));

-- Location: LCCOMB_X24_Y22_N20
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\b[2]~input_o\ & (((!\b[1]~input_o\ & \b[0]~input_o\)) # (!\b[3]~input_o\))) # (!\b[2]~input_o\ & (((\b[0]~input_o\) # (\b[3]~input_o\)) # (!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: FF_X24_Y22_N21
\FNDb[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDb(4));

-- Location: LCCOMB_X24_Y22_N26
\FND~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND~4_combout\ = (\clk100Hz~q\ & ((FNDb(4)))) # (!\clk100Hz~q\ & (FNDa(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDa(4),
	datab => FNDb(4),
	datad => \clk100Hz~q\,
	combout => \FND~4_combout\);

-- Location: LCCOMB_X23_Y22_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\a[2]~input_o\ & (\a[1]~input_o\ $ (\a[0]~input_o\ $ (!\a[3]~input_o\)))) # (!\a[2]~input_o\ & (((!\a[3]~input_o\) # (!\a[0]~input_o\)) # (!\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X23_Y22_N15
\FNDa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDa(5));

-- Location: LCCOMB_X24_Y22_N8
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\b[2]~input_o\ & (\b[1]~input_o\ $ (\b[0]~input_o\ $ (!\b[3]~input_o\)))) # (!\b[2]~input_o\ & (((!\b[3]~input_o\) # (!\b[0]~input_o\)) # (!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: FF_X24_Y22_N9
\FNDb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDb(5));

-- Location: LCCOMB_X24_Y22_N18
\FND~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND~5_combout\ = (\clk100Hz~q\ & ((FNDb(5)))) # (!\clk100Hz~q\ & (FNDa(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDa(5),
	datac => FNDb(5),
	datad => \clk100Hz~q\,
	combout => \FND~5_combout\);

-- Location: LCCOMB_X23_Y22_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\a[1]~input_o\ & ((\a[2]~input_o\) # ((!\a[3]~input_o\) # (!\a[0]~input_o\)))) # (!\a[1]~input_o\ & (\a[2]~input_o\ $ (((\a[3]~input_o\) # (!\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X23_Y22_N25
\FNDa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDa(6));

-- Location: LCCOMB_X24_Y22_N4
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\b[2]~input_o\ & ((\b[1]~input_o\) # ((\b[0]~input_o\ & !\b[3]~input_o\)))) # (!\b[2]~input_o\ & ((\b[1]~input_o\ $ (\b[3]~input_o\)) # (!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: FF_X24_Y22_N5
\FNDb[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDb(6));

-- Location: LCCOMB_X24_Y22_N30
\FND~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FND~6_combout\ = (\clk100Hz~q\ & ((FNDb(6)))) # (!\clk100Hz~q\ & (FNDa(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FNDa(6),
	datac => FNDb(6),
	datad => \clk100Hz~q\,
	combout => \FND~6_combout\);

ww_FND(0) <= \FND[0]~output_o\;

ww_FND(1) <= \FND[1]~output_o\;

ww_FND(2) <= \FND[2]~output_o\;

ww_FND(3) <= \FND[3]~output_o\;

ww_FND(4) <= \FND[4]~output_o\;

ww_FND(5) <= \FND[5]~output_o\;

ww_FND(6) <= \FND[6]~output_o\;

ww_FNDSel2 <= \FNDSel2~output_o\;

ww_FNDSel1 <= \FNDSel1~output_o\;
END structure;


