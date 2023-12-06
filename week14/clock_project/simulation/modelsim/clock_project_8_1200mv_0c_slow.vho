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

-- DATE "12/06/2023 16:06:15"

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

ENTITY 	clock_project IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	hourFND : OUT std_logic_vector(6 DOWNTO 0);
	minFND : OUT std_logic_vector(6 DOWNTO 0);
	secFND : OUT std_logic_vector(6 DOWNTO 0);
	hourFNDSel2 : OUT std_logic;
	hourFNDSel1 : OUT std_logic;
	minFNDSel2 : OUT std_logic;
	minFNDSel1 : OUT std_logic;
	secFNDSel2 : OUT std_logic;
	secFNDSel1 : OUT std_logic
	);
END clock_project;

-- Design Ports Information
-- hourFND[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hourFND[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hourFND[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hourFND[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hourFND[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hourFND[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hourFND[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minFND[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minFND[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minFND[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minFND[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minFND[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minFND[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minFND[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secFND[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secFND[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secFND[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secFND[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secFND[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secFND[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secFND[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hourFNDSel2	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hourFNDSel1	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minFNDSel2	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minFNDSel1	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secFNDSel2	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secFNDSel1	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock_project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_hourFND : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_minFND : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_secFND : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hourFNDSel2 : std_logic;
SIGNAL ww_hourFNDSel1 : std_logic;
SIGNAL ww_minFNDSel2 : std_logic;
SIGNAL ww_minFNDSel1 : std_logic;
SIGNAL ww_secFNDSel2 : std_logic;
SIGNAL ww_secFNDSel1 : std_logic;
SIGNAL \clk1hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \cnt100hz[6]~25_combout\ : std_logic;
SIGNAL \cnt100hz[11]~36\ : std_logic;
SIGNAL \cnt100hz[12]~37_combout\ : std_logic;
SIGNAL \cnt1hz[0]~19_combout\ : std_logic;
SIGNAL \cnt1hz[0]~20\ : std_logic;
SIGNAL \cnt1hz[1]~21_combout\ : std_logic;
SIGNAL \cnt1hz[1]~22\ : std_logic;
SIGNAL \cnt1hz[2]~23_combout\ : std_logic;
SIGNAL \cnt1hz[2]~24\ : std_logic;
SIGNAL \cnt1hz[3]~25_combout\ : std_logic;
SIGNAL \cnt1hz[3]~26\ : std_logic;
SIGNAL \cnt1hz[4]~27_combout\ : std_logic;
SIGNAL \cnt1hz[4]~28\ : std_logic;
SIGNAL \cnt1hz[5]~29_combout\ : std_logic;
SIGNAL \cnt1hz[5]~30\ : std_logic;
SIGNAL \cnt1hz[6]~31_combout\ : std_logic;
SIGNAL \cnt1hz[6]~32\ : std_logic;
SIGNAL \cnt1hz[7]~33_combout\ : std_logic;
SIGNAL \cnt1hz[7]~34\ : std_logic;
SIGNAL \cnt1hz[8]~35_combout\ : std_logic;
SIGNAL \cnt1hz[8]~36\ : std_logic;
SIGNAL \cnt1hz[9]~37_combout\ : std_logic;
SIGNAL \cnt1hz[9]~38\ : std_logic;
SIGNAL \cnt1hz[10]~39_combout\ : std_logic;
SIGNAL \cnt1hz[10]~40\ : std_logic;
SIGNAL \cnt1hz[11]~41_combout\ : std_logic;
SIGNAL \cnt1hz[11]~42\ : std_logic;
SIGNAL \cnt1hz[12]~43_combout\ : std_logic;
SIGNAL \cnt1hz[12]~44\ : std_logic;
SIGNAL \cnt1hz[13]~45_combout\ : std_logic;
SIGNAL \cnt1hz[13]~46\ : std_logic;
SIGNAL \cnt1hz[14]~47_combout\ : std_logic;
SIGNAL \cnt1hz[14]~48\ : std_logic;
SIGNAL \cnt1hz[15]~49_combout\ : std_logic;
SIGNAL \cnt1hz[15]~50\ : std_logic;
SIGNAL \cnt1hz[16]~51_combout\ : std_logic;
SIGNAL \cnt1hz[16]~52\ : std_logic;
SIGNAL \cnt1hz[17]~53_combout\ : std_logic;
SIGNAL \cnt1hz[17]~54\ : std_logic;
SIGNAL \cnt1hz[18]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \clk1hz~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \clk1hz~0_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \Mux18~10_combout\ : std_logic;
SIGNAL \Mux16~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~42_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[27]~43_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk1hz~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk1hz~feeder_combout\ : std_logic;
SIGNAL \hourFND[0]~output_o\ : std_logic;
SIGNAL \hourFND[1]~output_o\ : std_logic;
SIGNAL \hourFND[2]~output_o\ : std_logic;
SIGNAL \hourFND[3]~output_o\ : std_logic;
SIGNAL \hourFND[4]~output_o\ : std_logic;
SIGNAL \hourFND[5]~output_o\ : std_logic;
SIGNAL \hourFND[6]~output_o\ : std_logic;
SIGNAL \minFND[0]~output_o\ : std_logic;
SIGNAL \minFND[1]~output_o\ : std_logic;
SIGNAL \minFND[2]~output_o\ : std_logic;
SIGNAL \minFND[3]~output_o\ : std_logic;
SIGNAL \minFND[4]~output_o\ : std_logic;
SIGNAL \minFND[5]~output_o\ : std_logic;
SIGNAL \minFND[6]~output_o\ : std_logic;
SIGNAL \secFND[0]~output_o\ : std_logic;
SIGNAL \secFND[1]~output_o\ : std_logic;
SIGNAL \secFND[2]~output_o\ : std_logic;
SIGNAL \secFND[3]~output_o\ : std_logic;
SIGNAL \secFND[4]~output_o\ : std_logic;
SIGNAL \secFND[5]~output_o\ : std_logic;
SIGNAL \secFND[6]~output_o\ : std_logic;
SIGNAL \hourFNDSel2~output_o\ : std_logic;
SIGNAL \hourFNDSel1~output_o\ : std_logic;
SIGNAL \minFNDSel2~output_o\ : std_logic;
SIGNAL \minFNDSel1~output_o\ : std_logic;
SIGNAL \secFNDSel2~output_o\ : std_logic;
SIGNAL \secFNDSel1~output_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \FNDhour10[0]~0_combout\ : std_logic;
SIGNAL \hour[0]~5_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \hour[3]~12\ : std_logic;
SIGNAL \hour[4]~13_combout\ : std_logic;
SIGNAL \min[0]~6_combout\ : std_logic;
SIGNAL \min[4]~15\ : std_logic;
SIGNAL \min[5]~16_combout\ : std_logic;
SIGNAL \sec[0]~6_combout\ : std_logic;
SIGNAL \sec[0]~7\ : std_logic;
SIGNAL \sec[1]~9\ : std_logic;
SIGNAL \sec[2]~10_combout\ : std_logic;
SIGNAL \sec[2]~11\ : std_logic;
SIGNAL \sec[3]~13\ : std_logic;
SIGNAL \sec[4]~14_combout\ : std_logic;
SIGNAL \sec[3]~12_combout\ : std_logic;
SIGNAL \sec[1]~8_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \min[0]~7\ : std_logic;
SIGNAL \min[1]~8_combout\ : std_logic;
SIGNAL \min[1]~9\ : std_logic;
SIGNAL \min[2]~10_combout\ : std_logic;
SIGNAL \min[2]~11\ : std_logic;
SIGNAL \min[3]~13\ : std_logic;
SIGNAL \min[4]~14_combout\ : std_logic;
SIGNAL \min[3]~12_combout\ : std_logic;
SIGNAL \sec[4]~15\ : std_logic;
SIGNAL \sec[5]~16_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \hour[4]~15_combout\ : std_logic;
SIGNAL \hour[4]~16_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \hour[0]~6\ : std_logic;
SIGNAL \hour[1]~7_combout\ : std_logic;
SIGNAL \hour[1]~8\ : std_logic;
SIGNAL \hour[2]~9_combout\ : std_logic;
SIGNAL \hour[2]~10\ : std_logic;
SIGNAL \hour[3]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \cnt100hz[0]~13_combout\ : std_logic;
SIGNAL \cnt100hz[0]~14\ : std_logic;
SIGNAL \cnt100hz[1]~15_combout\ : std_logic;
SIGNAL \cnt100hz[1]~16\ : std_logic;
SIGNAL \cnt100hz[2]~18\ : std_logic;
SIGNAL \cnt100hz[3]~19_combout\ : std_logic;
SIGNAL \cnt100hz[3]~20\ : std_logic;
SIGNAL \cnt100hz[4]~21_combout\ : std_logic;
SIGNAL \cnt100hz[4]~22\ : std_logic;
SIGNAL \cnt100hz[5]~23_combout\ : std_logic;
SIGNAL \cnt100hz[5]~24\ : std_logic;
SIGNAL \cnt100hz[6]~26\ : std_logic;
SIGNAL \cnt100hz[7]~27_combout\ : std_logic;
SIGNAL \cnt100hz[7]~28\ : std_logic;
SIGNAL \cnt100hz[8]~29_combout\ : std_logic;
SIGNAL \cnt100hz[8]~30\ : std_logic;
SIGNAL \cnt100hz[9]~32\ : std_logic;
SIGNAL \cnt100hz[10]~33_combout\ : std_logic;
SIGNAL \cnt100hz[10]~34\ : std_logic;
SIGNAL \cnt100hz[11]~35_combout\ : std_logic;
SIGNAL \cnt100hz[9]~31_combout\ : std_logic;
SIGNAL \cnt100hz[2]~17_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \clk100Hz~0_combout\ : std_logic;
SIGNAL \clk100Hz~q\ : std_logic;
SIGNAL \hourFND~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \hourFND~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \FNDhour10[2]~1_combout\ : std_logic;
SIGNAL \hourFND~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \hourFND~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \hourFND~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \hourFND~5_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \hourFND~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \minFND~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \minFND~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux18~8_combout\ : std_logic;
SIGNAL \Mux18~9_combout\ : std_logic;
SIGNAL \minFND~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \minFND~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \minFND~4_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \minFND~5_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \minFND~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \secFND~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \secFND~1_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \secFND~2_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \secFND~3_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \secFND~4_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \secFND~5_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \secFND~6_combout\ : std_logic;
SIGNAL FNDhour10 : std_logic_vector(6 DOWNTO 0);
SIGNAL cnt1hz : std_logic_vector(18 DOWNTO 0);
SIGNAL FNDmin0 : std_logic_vector(6 DOWNTO 0);
SIGNAL min : std_logic_vector(5 DOWNTO 0);
SIGNAL cnt100hz : std_logic_vector(12 DOWNTO 0);
SIGNAL FNDhour0 : std_logic_vector(6 DOWNTO 0);
SIGNAL FNDsec10 : std_logic_vector(6 DOWNTO 0);
SIGNAL sec : std_logic_vector(5 DOWNTO 0);
SIGNAL hour : std_logic_vector(4 DOWNTO 0);
SIGNAL FNDsec0 : std_logic_vector(6 DOWNTO 0);
SIGNAL FNDmin10 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_clk100Hz~q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
hourFND <= ww_hourFND;
minFND <= ww_minFND;
secFND <= ww_secFND;
hourFNDSel2 <= ww_hourFNDSel2;
hourFNDSel1 <= ww_hourFNDSel1;
minFNDSel2 <= ww_minFNDSel2;
minFNDSel1 <= ww_minFNDSel1;
secFNDSel2 <= ww_secFNDSel2;
secFNDSel1 <= ww_secFNDSel1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk1hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1hz~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk100Hz~q\ <= NOT \clk100Hz~q\;

-- Location: LCCOMB_X21_Y19_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = hour(2) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(hour(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X25_Y19_N20
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = hour(2) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(hour(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: FF_X23_Y19_N25
\cnt100hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[12]~37_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(12));

-- Location: FF_X23_Y19_N13
\cnt100hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[6]~25_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(6));

-- Location: LCCOMB_X23_Y21_N2
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = min(3) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(min(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(3),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y21_N6
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (min(5) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!min(5) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((min(5) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(5),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X24_Y21_N8
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X23_Y20_N20
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (min(4) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!min(4) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!min(4) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(4),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y20_N0
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X23_Y20_N4
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X19_Y21_N18
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (sec(4) & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!sec(4) & (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!sec(4) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X17_Y21_N10
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X19_Y20_N14
\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (sec(4) & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!sec(4) & (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!sec(4) & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X19_Y20_N16
\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (sec(5) & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!sec(5) & (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((sec(5) & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(5),
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X18_Y20_N22
\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X23_Y19_N12
\cnt100hz[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[6]~25_combout\ = (cnt100hz(6) & (\cnt100hz[5]~24\ $ (GND))) # (!cnt100hz(6) & (!\cnt100hz[5]~24\ & VCC))
-- \cnt100hz[6]~26\ = CARRY((cnt100hz(6) & !\cnt100hz[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt100hz(6),
	datad => VCC,
	cin => \cnt100hz[5]~24\,
	combout => \cnt100hz[6]~25_combout\,
	cout => \cnt100hz[6]~26\);

-- Location: LCCOMB_X23_Y19_N22
\cnt100hz[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[11]~35_combout\ = (cnt100hz(11) & (!\cnt100hz[10]~34\)) # (!cnt100hz(11) & ((\cnt100hz[10]~34\) # (GND)))
-- \cnt100hz[11]~36\ = CARRY((!\cnt100hz[10]~34\) # (!cnt100hz(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt100hz(11),
	datad => VCC,
	cin => \cnt100hz[10]~34\,
	combout => \cnt100hz[11]~35_combout\,
	cout => \cnt100hz[11]~36\);

-- Location: LCCOMB_X23_Y19_N24
\cnt100hz[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[12]~37_combout\ = \cnt100hz[11]~36\ $ (!cnt100hz(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt100hz(12),
	cin => \cnt100hz[11]~36\,
	combout => \cnt100hz[12]~37_combout\);

-- Location: FF_X33_Y13_N25
\cnt1hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[5]~29_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(5));

-- Location: FF_X33_Y13_N27
\cnt1hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[6]~31_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(6));

-- Location: FF_X33_Y13_N29
\cnt1hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[7]~33_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(7));

-- Location: FF_X33_Y13_N15
\cnt1hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[0]~19_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(0));

-- Location: FF_X33_Y13_N17
\cnt1hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[1]~21_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(1));

-- Location: FF_X33_Y13_N19
\cnt1hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[2]~23_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(2));

-- Location: FF_X33_Y13_N21
\cnt1hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[3]~25_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(3));

-- Location: FF_X33_Y13_N23
\cnt1hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[4]~27_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(4));

-- Location: FF_X33_Y13_N31
\cnt1hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[8]~35_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(8));

-- Location: FF_X33_Y12_N1
\cnt1hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[9]~37_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(9));

-- Location: FF_X33_Y12_N3
\cnt1hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[10]~39_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(10));

-- Location: FF_X33_Y12_N5
\cnt1hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[11]~41_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(11));

-- Location: FF_X33_Y12_N7
\cnt1hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[12]~43_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(12));

-- Location: FF_X33_Y12_N9
\cnt1hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[13]~45_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(13));

-- Location: FF_X33_Y12_N11
\cnt1hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[14]~47_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(14));

-- Location: FF_X33_Y12_N13
\cnt1hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[15]~49_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(15));

-- Location: FF_X33_Y12_N15
\cnt1hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[16]~51_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(16));

-- Location: FF_X33_Y12_N17
\cnt1hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[17]~53_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(17));

-- Location: FF_X33_Y12_N19
\cnt1hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt1hz[18]~55_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt1hz(18));

-- Location: LCCOMB_X33_Y13_N14
\cnt1hz[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[0]~19_combout\ = cnt1hz(0) $ (VCC)
-- \cnt1hz[0]~20\ = CARRY(cnt1hz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(0),
	datad => VCC,
	combout => \cnt1hz[0]~19_combout\,
	cout => \cnt1hz[0]~20\);

-- Location: LCCOMB_X33_Y13_N16
\cnt1hz[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[1]~21_combout\ = (cnt1hz(1) & (!\cnt1hz[0]~20\)) # (!cnt1hz(1) & ((\cnt1hz[0]~20\) # (GND)))
-- \cnt1hz[1]~22\ = CARRY((!\cnt1hz[0]~20\) # (!cnt1hz(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(1),
	datad => VCC,
	cin => \cnt1hz[0]~20\,
	combout => \cnt1hz[1]~21_combout\,
	cout => \cnt1hz[1]~22\);

-- Location: LCCOMB_X33_Y13_N18
\cnt1hz[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[2]~23_combout\ = (cnt1hz(2) & (\cnt1hz[1]~22\ $ (GND))) # (!cnt1hz(2) & (!\cnt1hz[1]~22\ & VCC))
-- \cnt1hz[2]~24\ = CARRY((cnt1hz(2) & !\cnt1hz[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(2),
	datad => VCC,
	cin => \cnt1hz[1]~22\,
	combout => \cnt1hz[2]~23_combout\,
	cout => \cnt1hz[2]~24\);

-- Location: LCCOMB_X33_Y13_N20
\cnt1hz[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[3]~25_combout\ = (cnt1hz(3) & (!\cnt1hz[2]~24\)) # (!cnt1hz(3) & ((\cnt1hz[2]~24\) # (GND)))
-- \cnt1hz[3]~26\ = CARRY((!\cnt1hz[2]~24\) # (!cnt1hz(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(3),
	datad => VCC,
	cin => \cnt1hz[2]~24\,
	combout => \cnt1hz[3]~25_combout\,
	cout => \cnt1hz[3]~26\);

-- Location: LCCOMB_X33_Y13_N22
\cnt1hz[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[4]~27_combout\ = (cnt1hz(4) & (\cnt1hz[3]~26\ $ (GND))) # (!cnt1hz(4) & (!\cnt1hz[3]~26\ & VCC))
-- \cnt1hz[4]~28\ = CARRY((cnt1hz(4) & !\cnt1hz[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(4),
	datad => VCC,
	cin => \cnt1hz[3]~26\,
	combout => \cnt1hz[4]~27_combout\,
	cout => \cnt1hz[4]~28\);

-- Location: LCCOMB_X33_Y13_N24
\cnt1hz[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[5]~29_combout\ = (cnt1hz(5) & (!\cnt1hz[4]~28\)) # (!cnt1hz(5) & ((\cnt1hz[4]~28\) # (GND)))
-- \cnt1hz[5]~30\ = CARRY((!\cnt1hz[4]~28\) # (!cnt1hz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(5),
	datad => VCC,
	cin => \cnt1hz[4]~28\,
	combout => \cnt1hz[5]~29_combout\,
	cout => \cnt1hz[5]~30\);

-- Location: LCCOMB_X33_Y13_N26
\cnt1hz[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[6]~31_combout\ = (cnt1hz(6) & (\cnt1hz[5]~30\ $ (GND))) # (!cnt1hz(6) & (!\cnt1hz[5]~30\ & VCC))
-- \cnt1hz[6]~32\ = CARRY((cnt1hz(6) & !\cnt1hz[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(6),
	datad => VCC,
	cin => \cnt1hz[5]~30\,
	combout => \cnt1hz[6]~31_combout\,
	cout => \cnt1hz[6]~32\);

-- Location: LCCOMB_X33_Y13_N28
\cnt1hz[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[7]~33_combout\ = (cnt1hz(7) & (!\cnt1hz[6]~32\)) # (!cnt1hz(7) & ((\cnt1hz[6]~32\) # (GND)))
-- \cnt1hz[7]~34\ = CARRY((!\cnt1hz[6]~32\) # (!cnt1hz(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1hz(7),
	datad => VCC,
	cin => \cnt1hz[6]~32\,
	combout => \cnt1hz[7]~33_combout\,
	cout => \cnt1hz[7]~34\);

-- Location: LCCOMB_X33_Y13_N30
\cnt1hz[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[8]~35_combout\ = (cnt1hz(8) & (\cnt1hz[7]~34\ $ (GND))) # (!cnt1hz(8) & (!\cnt1hz[7]~34\ & VCC))
-- \cnt1hz[8]~36\ = CARRY((cnt1hz(8) & !\cnt1hz[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1hz(8),
	datad => VCC,
	cin => \cnt1hz[7]~34\,
	combout => \cnt1hz[8]~35_combout\,
	cout => \cnt1hz[8]~36\);

-- Location: LCCOMB_X33_Y12_N0
\cnt1hz[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[9]~37_combout\ = (cnt1hz(9) & (!\cnt1hz[8]~36\)) # (!cnt1hz(9) & ((\cnt1hz[8]~36\) # (GND)))
-- \cnt1hz[9]~38\ = CARRY((!\cnt1hz[8]~36\) # (!cnt1hz(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(9),
	datad => VCC,
	cin => \cnt1hz[8]~36\,
	combout => \cnt1hz[9]~37_combout\,
	cout => \cnt1hz[9]~38\);

-- Location: LCCOMB_X33_Y12_N2
\cnt1hz[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[10]~39_combout\ = (cnt1hz(10) & (\cnt1hz[9]~38\ $ (GND))) # (!cnt1hz(10) & (!\cnt1hz[9]~38\ & VCC))
-- \cnt1hz[10]~40\ = CARRY((cnt1hz(10) & !\cnt1hz[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(10),
	datad => VCC,
	cin => \cnt1hz[9]~38\,
	combout => \cnt1hz[10]~39_combout\,
	cout => \cnt1hz[10]~40\);

-- Location: LCCOMB_X33_Y12_N4
\cnt1hz[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[11]~41_combout\ = (cnt1hz(11) & (!\cnt1hz[10]~40\)) # (!cnt1hz(11) & ((\cnt1hz[10]~40\) # (GND)))
-- \cnt1hz[11]~42\ = CARRY((!\cnt1hz[10]~40\) # (!cnt1hz(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(11),
	datad => VCC,
	cin => \cnt1hz[10]~40\,
	combout => \cnt1hz[11]~41_combout\,
	cout => \cnt1hz[11]~42\);

-- Location: LCCOMB_X33_Y12_N6
\cnt1hz[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[12]~43_combout\ = (cnt1hz(12) & (\cnt1hz[11]~42\ $ (GND))) # (!cnt1hz(12) & (!\cnt1hz[11]~42\ & VCC))
-- \cnt1hz[12]~44\ = CARRY((cnt1hz(12) & !\cnt1hz[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1hz(12),
	datad => VCC,
	cin => \cnt1hz[11]~42\,
	combout => \cnt1hz[12]~43_combout\,
	cout => \cnt1hz[12]~44\);

-- Location: LCCOMB_X33_Y12_N8
\cnt1hz[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[13]~45_combout\ = (cnt1hz(13) & (!\cnt1hz[12]~44\)) # (!cnt1hz(13) & ((\cnt1hz[12]~44\) # (GND)))
-- \cnt1hz[13]~46\ = CARRY((!\cnt1hz[12]~44\) # (!cnt1hz(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(13),
	datad => VCC,
	cin => \cnt1hz[12]~44\,
	combout => \cnt1hz[13]~45_combout\,
	cout => \cnt1hz[13]~46\);

-- Location: LCCOMB_X33_Y12_N10
\cnt1hz[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[14]~47_combout\ = (cnt1hz(14) & (\cnt1hz[13]~46\ $ (GND))) # (!cnt1hz(14) & (!\cnt1hz[13]~46\ & VCC))
-- \cnt1hz[14]~48\ = CARRY((cnt1hz(14) & !\cnt1hz[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1hz(14),
	datad => VCC,
	cin => \cnt1hz[13]~46\,
	combout => \cnt1hz[14]~47_combout\,
	cout => \cnt1hz[14]~48\);

-- Location: LCCOMB_X33_Y12_N12
\cnt1hz[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[15]~49_combout\ = (cnt1hz(15) & (!\cnt1hz[14]~48\)) # (!cnt1hz(15) & ((\cnt1hz[14]~48\) # (GND)))
-- \cnt1hz[15]~50\ = CARRY((!\cnt1hz[14]~48\) # (!cnt1hz(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1hz(15),
	datad => VCC,
	cin => \cnt1hz[14]~48\,
	combout => \cnt1hz[15]~49_combout\,
	cout => \cnt1hz[15]~50\);

-- Location: LCCOMB_X33_Y12_N14
\cnt1hz[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[16]~51_combout\ = (cnt1hz(16) & (\cnt1hz[15]~50\ $ (GND))) # (!cnt1hz(16) & (!\cnt1hz[15]~50\ & VCC))
-- \cnt1hz[16]~52\ = CARRY((cnt1hz(16) & !\cnt1hz[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(16),
	datad => VCC,
	cin => \cnt1hz[15]~50\,
	combout => \cnt1hz[16]~51_combout\,
	cout => \cnt1hz[16]~52\);

-- Location: LCCOMB_X33_Y12_N16
\cnt1hz[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[17]~53_combout\ = (cnt1hz(17) & (!\cnt1hz[16]~52\)) # (!cnt1hz(17) & ((\cnt1hz[16]~52\) # (GND)))
-- \cnt1hz[17]~54\ = CARRY((!\cnt1hz[16]~52\) # (!cnt1hz(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(17),
	datad => VCC,
	cin => \cnt1hz[16]~52\,
	combout => \cnt1hz[17]~53_combout\,
	cout => \cnt1hz[17]~54\);

-- Location: LCCOMB_X33_Y12_N18
\cnt1hz[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1hz[18]~55_combout\ = \cnt1hz[17]~54\ $ (!cnt1hz(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt1hz(18),
	cin => \cnt1hz[17]~54\,
	combout => \cnt1hz[18]~55_combout\);

-- Location: LCCOMB_X21_Y19_N16
\Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (hour(1) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X21_Y19_N28
\Mod0|auto_generated|divider|divider|StageOut[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ = (hour(4) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: LCCOMB_X21_Y19_N30
\Mod0|auto_generated|divider|divider|StageOut[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (hour(3) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X25_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (hour(4) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\Div0|auto_generated|divider|divider|StageOut[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = (hour(3) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X25_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X25_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X24_Y21_N22
\Mod1|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X23_Y21_N16
\Mod1|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ = (min(4) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X23_Y21_N14
\Mod1|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X23_Y21_N12
\Mod1|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & min(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => min(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X24_Y21_N0
\Mod1|auto_generated|divider|divider|StageOut[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\ = (min(1) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X26_Y21_N6
\Mod1|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ = (min(2) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X23_Y20_N10
\Div1|auto_generated|divider|divider|StageOut[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ = (min(5) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(5),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X23_Y20_N12
\Div1|auto_generated|divider|divider|StageOut[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X23_Y20_N26
\Div1|auto_generated|divider|divider|StageOut[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ = (min(3) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X23_Y20_N30
\Div1|auto_generated|divider|divider|StageOut[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ = (min(2) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X22_Y20_N30
\Div1|auto_generated|divider|divider|StageOut[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X22_Y20_N26
\Div1|auto_generated|divider|divider|StageOut[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X22_Y20_N12
\Div1|auto_generated|divider|divider|StageOut[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => min(1),
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X18_Y21_N22
\Mod2|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\ = (sec(5) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(5),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X19_Y21_N24
\Mod2|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X19_Y21_N30
\Mod2|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & sec(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => sec(3),
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X18_Y21_N12
\Mod2|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\ = (sec(2) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X18_Y21_N16
\Mod2|auto_generated|divider|divider|StageOut[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~33_combout\ = (sec(1) & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X19_Y20_N6
\Div2|auto_generated|divider|divider|StageOut[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~17_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X19_Y20_N4
\Div2|auto_generated|divider|divider|StageOut[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X19_Y20_N2
\Div2|auto_generated|divider|divider|StageOut[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X18_Y20_N30
\Div2|auto_generated|divider|divider|StageOut[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~23_combout\ = (sec(2) & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(2),
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X18_Y20_N6
\Div2|auto_generated|divider|divider|StageOut[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~25_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X17_Y20_N26
\Div2|auto_generated|divider|divider|StageOut[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~26_combout\ = (sec(2) & \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(2),
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X17_Y20_N10
\Div2|auto_generated|divider|divider|StageOut[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~28_combout\ = (sec(1) & \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(1),
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: FF_X33_Y12_N27
clk1hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk1hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1hz~q\);

-- Location: LCCOMB_X33_Y13_N12
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!cnt1hz(7) & (!cnt1hz(6) & !cnt1hz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt1hz(7),
	datac => cnt1hz(6),
	datad => cnt1hz(5),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y13_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!cnt1hz(3)) # (!cnt1hz(0))) # (!cnt1hz(2))) # (!cnt1hz(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1hz(1),
	datab => cnt1hz(2),
	datac => cnt1hz(0),
	datad => cnt1hz(3),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y13_N0
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # (!cnt1hz(4))))) # (!cnt1hz(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1hz(8),
	datab => \LessThan0~1_combout\,
	datac => cnt1hz(4),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y12_N22
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!cnt1hz(12) & (!cnt1hz(10) & (!cnt1hz(11) & !cnt1hz(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1hz(12),
	datab => cnt1hz(10),
	datac => cnt1hz(11),
	datad => cnt1hz(9),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y12_N28
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!cnt1hz(14) & (((\LessThan0~3_combout\ & \LessThan0~2_combout\)) # (!cnt1hz(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1hz(14),
	datab => cnt1hz(13),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y12_N30
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!cnt1hz(18)) # (!cnt1hz(16))) # (!cnt1hz(17))) # (!cnt1hz(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1hz(15),
	datab => cnt1hz(17),
	datac => cnt1hz(16),
	datad => cnt1hz(18),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X33_Y12_N20
\clk1hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1hz~0_combout\ = \clk1hz~q\ $ (((!\LessThan0~5_combout\ & !\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datac => \clk1hz~q\,
	datad => \LessThan0~4_combout\,
	combout => \clk1hz~0_combout\);

-- Location: LCCOMB_X33_Y12_N24
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!\LessThan0~5_combout\ & !\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y19_N4
\Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!hour(3)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => hour(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mux6~11_combout\);

-- Location: LCCOMB_X24_Y21_N26
\Mod1|auto_generated|divider|divider|StageOut[28]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(5))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => min(5),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\);

-- Location: LCCOMB_X24_Y21_N16
\Mod1|auto_generated|divider|divider|StageOut[27]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(4))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => min(4),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\);

-- Location: LCCOMB_X24_Y21_N14
\Mod1|auto_generated|divider|divider|StageOut[26]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(3))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => min(3),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\);

-- Location: LCCOMB_X22_Y20_N22
\Div1|auto_generated|divider|divider|StageOut[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((min(3)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => min(3),
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X24_Y20_N20
\Mux18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~10_combout\ = (!min(1) & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (min(2))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(2),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux18~10_combout\);

-- Location: LCCOMB_X24_Y20_N6
\Mux16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~10_combout\ = (min(1) & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!min(2))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(2),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux16~10_combout\);

-- Location: LCCOMB_X18_Y21_N20
\Mod2|auto_generated|divider|divider|StageOut[28]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~42_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((sec(5)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => sec(5),
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~42_combout\);

-- Location: LCCOMB_X16_Y21_N16
\Mod2|auto_generated|divider|divider|StageOut[27]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[27]~43_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((sec(4)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => sec(4),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[27]~43_combout\);

-- Location: LCCOMB_X17_Y20_N30
\Div2|auto_generated|divider|divider|StageOut[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((sec(4)))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => sec(4),
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~30_combout\);

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

-- Location: CLKCTRL_G9
\clk1hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1hz~clkctrl_outclk\);

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

-- Location: LCCOMB_X33_Y12_N26
\clk1hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1hz~feeder_combout\ = \clk1hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1hz~0_combout\,
	combout => \clk1hz~feeder_combout\);

-- Location: IOOBUF_X11_Y24_N2
\hourFND[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hourFND~0_combout\,
	devoe => ww_devoe,
	o => \hourFND[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\hourFND[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hourFND~1_combout\,
	devoe => ww_devoe,
	o => \hourFND[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\hourFND[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hourFND~2_combout\,
	devoe => ww_devoe,
	o => \hourFND[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\hourFND[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hourFND~3_combout\,
	devoe => ww_devoe,
	o => \hourFND[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\hourFND[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hourFND~4_combout\,
	devoe => ww_devoe,
	o => \hourFND[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\hourFND[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hourFND~5_combout\,
	devoe => ww_devoe,
	o => \hourFND[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\hourFND[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hourFND~6_combout\,
	devoe => ww_devoe,
	o => \hourFND[6]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\minFND[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \minFND~0_combout\,
	devoe => ww_devoe,
	o => \minFND[0]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\minFND[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \minFND~1_combout\,
	devoe => ww_devoe,
	o => \minFND[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\minFND[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \minFND~2_combout\,
	devoe => ww_devoe,
	o => \minFND[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\minFND[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \minFND~3_combout\,
	devoe => ww_devoe,
	o => \minFND[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\minFND[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \minFND~4_combout\,
	devoe => ww_devoe,
	o => \minFND[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\minFND[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \minFND~5_combout\,
	devoe => ww_devoe,
	o => \minFND[5]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\minFND[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \minFND~6_combout\,
	devoe => ww_devoe,
	o => \minFND[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\secFND[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secFND~0_combout\,
	devoe => ww_devoe,
	o => \secFND[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\secFND[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secFND~1_combout\,
	devoe => ww_devoe,
	o => \secFND[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\secFND[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secFND~2_combout\,
	devoe => ww_devoe,
	o => \secFND[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\secFND[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secFND~3_combout\,
	devoe => ww_devoe,
	o => \secFND[3]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\secFND[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secFND~4_combout\,
	devoe => ww_devoe,
	o => \secFND[4]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\secFND[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secFND~5_combout\,
	devoe => ww_devoe,
	o => \secFND[5]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\secFND[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secFND~6_combout\,
	devoe => ww_devoe,
	o => \secFND[6]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\hourFNDSel2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk100Hz~q\,
	devoe => ww_devoe,
	o => \hourFNDSel2~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\hourFNDSel1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clk100Hz~q\,
	devoe => ww_devoe,
	o => \hourFNDSel1~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\minFNDSel2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk100Hz~q\,
	devoe => ww_devoe,
	o => \minFNDSel2~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\minFNDSel1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clk100Hz~q\,
	devoe => ww_devoe,
	o => \minFNDSel1~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\secFNDSel2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk100Hz~q\,
	devoe => ww_devoe,
	o => \secFNDSel2~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\secFNDSel1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clk100Hz~q\,
	devoe => ww_devoe,
	o => \secFNDSel1~output_o\);

-- Location: LCCOMB_X25_Y19_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (hour(3) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!hour(3) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!hour(3) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X25_Y19_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (hour(4) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!hour(4) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((hour(4) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X25_Y19_N26
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X24_Y19_N12
\FNDhour10[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FNDhour10[0]~0_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \FNDhour10[0]~0_combout\);

-- Location: FF_X24_Y19_N13
\FNDhour10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FNDhour10[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDhour10(0));

-- Location: LCCOMB_X21_Y19_N18
\hour[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[0]~5_combout\ = hour(0) $ (VCC)
-- \hour[0]~6\ = CARRY(hour(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(0),
	datad => VCC,
	combout => \hour[0]~5_combout\,
	cout => \hour[0]~6\);

-- Location: IOIBUF_X13_Y0_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X21_Y19_N24
\hour[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[3]~11_combout\ = (hour(3) & (!\hour[2]~10\)) # (!hour(3) & ((\hour[2]~10\) # (GND)))
-- \hour[3]~12\ = CARRY((!\hour[2]~10\) # (!hour(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datad => VCC,
	cin => \hour[2]~10\,
	combout => \hour[3]~11_combout\,
	cout => \hour[3]~12\);

-- Location: LCCOMB_X21_Y19_N26
\hour[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~13_combout\ = hour(4) $ (!\hour[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	cin => \hour[3]~12\,
	combout => \hour[4]~13_combout\);

-- Location: LCCOMB_X23_Y21_N18
\min[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~6_combout\ = min(0) $ (VCC)
-- \min[0]~7\ = CARRY(min(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(0),
	datad => VCC,
	combout => \min[0]~6_combout\,
	cout => \min[0]~7\);

-- Location: LCCOMB_X23_Y21_N26
\min[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[4]~14_combout\ = (min(4) & (\min[3]~13\ $ (GND))) # (!min(4) & (!\min[3]~13\ & VCC))
-- \min[4]~15\ = CARRY((min(4) & !\min[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datad => VCC,
	cin => \min[3]~13\,
	combout => \min[4]~14_combout\,
	cout => \min[4]~15\);

-- Location: LCCOMB_X23_Y21_N28
\min[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[5]~16_combout\ = \min[4]~15\ $ (min(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => min(5),
	cin => \min[4]~15\,
	combout => \min[5]~16_combout\);

-- Location: LCCOMB_X19_Y21_N4
\sec[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[0]~6_combout\ = sec(0) $ (VCC)
-- \sec[0]~7\ = CARRY(sec(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(0),
	datad => VCC,
	combout => \sec[0]~6_combout\,
	cout => \sec[0]~7\);

-- Location: FF_X19_Y21_N5
\sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \sec[0]~6_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(0));

-- Location: LCCOMB_X19_Y21_N6
\sec[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[1]~8_combout\ = (sec(1) & (!\sec[0]~7\)) # (!sec(1) & ((\sec[0]~7\) # (GND)))
-- \sec[1]~9\ = CARRY((!\sec[0]~7\) # (!sec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datad => VCC,
	cin => \sec[0]~7\,
	combout => \sec[1]~8_combout\,
	cout => \sec[1]~9\);

-- Location: LCCOMB_X19_Y21_N8
\sec[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[2]~10_combout\ = (sec(2) & (\sec[1]~9\ $ (GND))) # (!sec(2) & (!\sec[1]~9\ & VCC))
-- \sec[2]~11\ = CARRY((sec(2) & !\sec[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(2),
	datad => VCC,
	cin => \sec[1]~9\,
	combout => \sec[2]~10_combout\,
	cout => \sec[2]~11\);

-- Location: FF_X19_Y21_N9
\sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \sec[2]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(2));

-- Location: LCCOMB_X19_Y21_N10
\sec[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[3]~12_combout\ = (sec(3) & (!\sec[2]~11\)) # (!sec(3) & ((\sec[2]~11\) # (GND)))
-- \sec[3]~13\ = CARRY((!\sec[2]~11\) # (!sec(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datad => VCC,
	cin => \sec[2]~11\,
	combout => \sec[3]~12_combout\,
	cout => \sec[3]~13\);

-- Location: LCCOMB_X19_Y21_N12
\sec[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[4]~14_combout\ = (sec(4) & (\sec[3]~13\ $ (GND))) # (!sec(4) & (!\sec[3]~13\ & VCC))
-- \sec[4]~15\ = CARRY((sec(4) & !\sec[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(4),
	datad => VCC,
	cin => \sec[3]~13\,
	combout => \sec[4]~14_combout\,
	cout => \sec[4]~15\);

-- Location: FF_X19_Y21_N13
\sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \sec[4]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(4));

-- Location: FF_X19_Y21_N11
\sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \sec[3]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(3));

-- Location: FF_X21_Y21_N17
\sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	asdata => \sec[1]~8_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan2~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(1));

-- Location: LCCOMB_X21_Y21_N18
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!sec(2) & ((!sec(0)) # (!sec(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(1),
	datac => sec(0),
	datad => sec(2),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y21_N24
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (sec(5) & (sec(4) & (sec(3) & !\LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => sec(4),
	datac => sec(3),
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: FF_X23_Y21_N29
\min[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \min[5]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan3~3_combout\,
	ena => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(5));

-- Location: LCCOMB_X23_Y21_N10
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = ((!min(2) & ((!min(1)) # (!min(0))))) # (!min(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datab => min(0),
	datac => min(1),
	datad => min(5),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X23_Y21_N0
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (min(3) & (min(4) & !\LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datac => min(4),
	datad => \LessThan3~2_combout\,
	combout => \LessThan3~3_combout\);

-- Location: FF_X23_Y21_N19
\min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \min[0]~6_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan3~3_combout\,
	ena => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(0));

-- Location: LCCOMB_X23_Y21_N20
\min[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[1]~8_combout\ = (min(1) & (!\min[0]~7\)) # (!min(1) & ((\min[0]~7\) # (GND)))
-- \min[1]~9\ = CARRY((!\min[0]~7\) # (!min(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(1),
	datad => VCC,
	cin => \min[0]~7\,
	combout => \min[1]~8_combout\,
	cout => \min[1]~9\);

-- Location: FF_X23_Y21_N21
\min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \min[1]~8_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan3~3_combout\,
	ena => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(1));

-- Location: LCCOMB_X23_Y21_N22
\min[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[2]~10_combout\ = (min(2) & (\min[1]~9\ $ (GND))) # (!min(2) & (!\min[1]~9\ & VCC))
-- \min[2]~11\ = CARRY((min(2) & !\min[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(2),
	datad => VCC,
	cin => \min[1]~9\,
	combout => \min[2]~10_combout\,
	cout => \min[2]~11\);

-- Location: FF_X23_Y21_N23
\min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \min[2]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan3~3_combout\,
	ena => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(2));

-- Location: LCCOMB_X23_Y21_N24
\min[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[3]~12_combout\ = (min(3) & (!\min[2]~11\)) # (!min(3) & ((\min[2]~11\) # (GND)))
-- \min[3]~13\ = CARRY((!\min[2]~11\) # (!min(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => VCC,
	cin => \min[2]~11\,
	combout => \min[3]~12_combout\,
	cout => \min[3]~13\);

-- Location: FF_X23_Y21_N27
\min[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \min[4]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan3~3_combout\,
	ena => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(4));

-- Location: FF_X23_Y21_N25
\min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \min[3]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan3~3_combout\,
	ena => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(3));

-- Location: LCCOMB_X19_Y21_N14
\sec[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[5]~16_combout\ = \sec[4]~15\ $ (sec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sec(5),
	cin => \sec[4]~15\,
	combout => \sec[5]~16_combout\);

-- Location: FF_X19_Y21_N15
\sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \sec[5]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(5));

-- Location: LCCOMB_X22_Y21_N0
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((!sec(2) & ((!sec(0)) # (!sec(1))))) # (!sec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(0),
	datac => sec(5),
	datad => sec(2),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y21_N2
\hour[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~15_combout\ = (((\LessThan3~2_combout\) # (\LessThan2~0_combout\)) # (!min(3))) # (!sec(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => min(3),
	datac => \LessThan3~2_combout\,
	datad => \LessThan2~0_combout\,
	combout => \hour[4]~15_combout\);

-- Location: LCCOMB_X22_Y21_N16
\hour[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~16_combout\ = (!\hour[4]~15_combout\ & (((min(4) & sec(3))) # (!min(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(4),
	datac => sec(3),
	datad => \hour[4]~15_combout\,
	combout => \hour[4]~16_combout\);

-- Location: FF_X21_Y19_N27
\hour[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \hour[4]~13_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan4~1_combout\,
	ena => \hour[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(4));

-- Location: LCCOMB_X18_Y19_N0
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!hour(3) & (((!hour(0)) # (!hour(2))) # (!hour(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(2),
	datac => hour(3),
	datad => hour(0),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X18_Y19_N2
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (hour(4) & !\LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(4),
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: FF_X21_Y19_N19
\hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \hour[0]~5_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan4~1_combout\,
	ena => \hour[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(0));

-- Location: LCCOMB_X21_Y19_N20
\hour[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[1]~7_combout\ = (hour(1) & (!\hour[0]~6\)) # (!hour(1) & ((\hour[0]~6\) # (GND)))
-- \hour[1]~8\ = CARRY((!\hour[0]~6\) # (!hour(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(1),
	datad => VCC,
	cin => \hour[0]~6\,
	combout => \hour[1]~7_combout\,
	cout => \hour[1]~8\);

-- Location: FF_X21_Y19_N21
\hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \hour[1]~7_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan4~1_combout\,
	ena => \hour[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(1));

-- Location: LCCOMB_X21_Y19_N22
\hour[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[2]~9_combout\ = (hour(2) & (\hour[1]~8\ $ (GND))) # (!hour(2) & (!\hour[1]~8\ & VCC))
-- \hour[2]~10\ = CARRY((hour(2) & !\hour[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(2),
	datad => VCC,
	cin => \hour[1]~8\,
	combout => \hour[2]~9_combout\,
	cout => \hour[2]~10\);

-- Location: FF_X21_Y19_N23
\hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \hour[2]~9_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan4~1_combout\,
	ena => \hour[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(2));

-- Location: FF_X21_Y19_N25
\hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \hour[3]~11_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan4~1_combout\,
	ena => \hour[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(3));

-- Location: LCCOMB_X21_Y19_N8
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (hour(3) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!hour(3) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!hour(3) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(3),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X21_Y19_N10
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (hour(4) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!hour(4) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((hour(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X21_Y19_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X21_Y19_N4
\Mod0|auto_generated|divider|divider|StageOut[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X21_Y19_N0
\Mod0|auto_generated|divider|divider|StageOut[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (hour(2) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X21_Y19_N2
\Mod0|auto_generated|divider|divider|StageOut[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ = (hour(1) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\);

-- Location: LCCOMB_X19_Y19_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X19_Y19_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X19_Y19_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X22_Y19_N0
\Mod0|auto_generated|divider|divider|StageOut[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X19_Y19_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y19_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y19_N4
\Mod0|auto_generated|divider|divider|StageOut[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\);

-- Location: LCCOMB_X19_Y19_N14
\Mod0|auto_generated|divider|divider|StageOut[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((hour(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => hour(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\);

-- Location: LCCOMB_X19_Y19_N10
\Mod0|auto_generated|divider|divider|StageOut[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\);

-- Location: LCCOMB_X19_Y19_N28
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\) # (!hour(0)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X19_Y19_N29
\FNDhour0[0]\ : dffeas
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
	q => FNDhour0(0));

-- Location: LCCOMB_X23_Y19_N0
\cnt100hz[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[0]~13_combout\ = cnt100hz(0) $ (VCC)
-- \cnt100hz[0]~14\ = CARRY(cnt100hz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt100hz(0),
	datad => VCC,
	combout => \cnt100hz[0]~13_combout\,
	cout => \cnt100hz[0]~14\);

-- Location: FF_X23_Y19_N1
\cnt100hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[0]~13_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(0));

-- Location: LCCOMB_X23_Y19_N2
\cnt100hz[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[1]~15_combout\ = (cnt100hz(1) & (!\cnt100hz[0]~14\)) # (!cnt100hz(1) & ((\cnt100hz[0]~14\) # (GND)))
-- \cnt100hz[1]~16\ = CARRY((!\cnt100hz[0]~14\) # (!cnt100hz(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt100hz(1),
	datad => VCC,
	cin => \cnt100hz[0]~14\,
	combout => \cnt100hz[1]~15_combout\,
	cout => \cnt100hz[1]~16\);

-- Location: FF_X23_Y19_N3
\cnt100hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[1]~15_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(1));

-- Location: LCCOMB_X23_Y19_N4
\cnt100hz[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[2]~17_combout\ = (cnt100hz(2) & (\cnt100hz[1]~16\ $ (GND))) # (!cnt100hz(2) & (!\cnt100hz[1]~16\ & VCC))
-- \cnt100hz[2]~18\ = CARRY((cnt100hz(2) & !\cnt100hz[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt100hz(2),
	datad => VCC,
	cin => \cnt100hz[1]~16\,
	combout => \cnt100hz[2]~17_combout\,
	cout => \cnt100hz[2]~18\);

-- Location: LCCOMB_X23_Y19_N6
\cnt100hz[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[3]~19_combout\ = (cnt100hz(3) & (!\cnt100hz[2]~18\)) # (!cnt100hz(3) & ((\cnt100hz[2]~18\) # (GND)))
-- \cnt100hz[3]~20\ = CARRY((!\cnt100hz[2]~18\) # (!cnt100hz(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt100hz(3),
	datad => VCC,
	cin => \cnt100hz[2]~18\,
	combout => \cnt100hz[3]~19_combout\,
	cout => \cnt100hz[3]~20\);

-- Location: FF_X23_Y19_N7
\cnt100hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[3]~19_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(3));

-- Location: LCCOMB_X23_Y19_N8
\cnt100hz[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[4]~21_combout\ = (cnt100hz(4) & (\cnt100hz[3]~20\ $ (GND))) # (!cnt100hz(4) & (!\cnt100hz[3]~20\ & VCC))
-- \cnt100hz[4]~22\ = CARRY((cnt100hz(4) & !\cnt100hz[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt100hz(4),
	datad => VCC,
	cin => \cnt100hz[3]~20\,
	combout => \cnt100hz[4]~21_combout\,
	cout => \cnt100hz[4]~22\);

-- Location: FF_X23_Y19_N9
\cnt100hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[4]~21_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(4));

-- Location: LCCOMB_X23_Y19_N10
\cnt100hz[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[5]~23_combout\ = (cnt100hz(5) & (!\cnt100hz[4]~22\)) # (!cnt100hz(5) & ((\cnt100hz[4]~22\) # (GND)))
-- \cnt100hz[5]~24\ = CARRY((!\cnt100hz[4]~22\) # (!cnt100hz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt100hz(5),
	datad => VCC,
	cin => \cnt100hz[4]~22\,
	combout => \cnt100hz[5]~23_combout\,
	cout => \cnt100hz[5]~24\);

-- Location: FF_X23_Y19_N11
\cnt100hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[5]~23_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(5));

-- Location: LCCOMB_X23_Y19_N14
\cnt100hz[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[7]~27_combout\ = (cnt100hz(7) & (!\cnt100hz[6]~26\)) # (!cnt100hz(7) & ((\cnt100hz[6]~26\) # (GND)))
-- \cnt100hz[7]~28\ = CARRY((!\cnt100hz[6]~26\) # (!cnt100hz(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt100hz(7),
	datad => VCC,
	cin => \cnt100hz[6]~26\,
	combout => \cnt100hz[7]~27_combout\,
	cout => \cnt100hz[7]~28\);

-- Location: FF_X23_Y19_N15
\cnt100hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[7]~27_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(7));

-- Location: LCCOMB_X23_Y19_N16
\cnt100hz[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[8]~29_combout\ = (cnt100hz(8) & (\cnt100hz[7]~28\ $ (GND))) # (!cnt100hz(8) & (!\cnt100hz[7]~28\ & VCC))
-- \cnt100hz[8]~30\ = CARRY((cnt100hz(8) & !\cnt100hz[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt100hz(8),
	datad => VCC,
	cin => \cnt100hz[7]~28\,
	combout => \cnt100hz[8]~29_combout\,
	cout => \cnt100hz[8]~30\);

-- Location: FF_X23_Y19_N17
\cnt100hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[8]~29_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(8));

-- Location: LCCOMB_X23_Y19_N18
\cnt100hz[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[9]~31_combout\ = (cnt100hz(9) & (!\cnt100hz[8]~30\)) # (!cnt100hz(9) & ((\cnt100hz[8]~30\) # (GND)))
-- \cnt100hz[9]~32\ = CARRY((!\cnt100hz[8]~30\) # (!cnt100hz(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt100hz(9),
	datad => VCC,
	cin => \cnt100hz[8]~30\,
	combout => \cnt100hz[9]~31_combout\,
	cout => \cnt100hz[9]~32\);

-- Location: LCCOMB_X23_Y19_N20
\cnt100hz[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt100hz[10]~33_combout\ = (cnt100hz(10) & (\cnt100hz[9]~32\ $ (GND))) # (!cnt100hz(10) & (!\cnt100hz[9]~32\ & VCC))
-- \cnt100hz[10]~34\ = CARRY((cnt100hz(10) & !\cnt100hz[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt100hz(10),
	datad => VCC,
	cin => \cnt100hz[9]~32\,
	combout => \cnt100hz[10]~33_combout\,
	cout => \cnt100hz[10]~34\);

-- Location: FF_X23_Y19_N21
\cnt100hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[10]~33_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(10));

-- Location: FF_X23_Y19_N23
\cnt100hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[11]~35_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(11));

-- Location: FF_X23_Y19_N19
\cnt100hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[9]~31_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(9));

-- Location: FF_X23_Y19_N5
\cnt100hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt100hz[2]~17_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt100hz(2));

-- Location: LCCOMB_X23_Y19_N26
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!cnt100hz(3) & (((!cnt100hz(0)) # (!cnt100hz(2))) # (!cnt100hz(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt100hz(3),
	datab => cnt100hz(1),
	datac => cnt100hz(2),
	datad => cnt100hz(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!cnt100hz(6) & (!cnt100hz(4) & (\LessThan1~0_combout\ & !cnt100hz(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt100hz(6),
	datab => cnt100hz(4),
	datac => \LessThan1~0_combout\,
	datad => cnt100hz(5),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y19_N4
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (cnt100hz(8) & (cnt100hz(9) & (cnt100hz(7) & !\LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt100hz(8),
	datab => cnt100hz(9),
	datac => cnt100hz(7),
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y19_N30
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (cnt100hz(12) & ((cnt100hz(10)) # ((cnt100hz(11)) # (\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt100hz(12),
	datab => cnt100hz(10),
	datac => cnt100hz(11),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y19_N26
\clk100Hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk100Hz~0_combout\ = \clk100Hz~q\ $ (\LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk100Hz~q\,
	datad => \LessThan1~3_combout\,
	combout => \clk100Hz~0_combout\);

-- Location: FF_X24_Y19_N27
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

-- Location: LCCOMB_X24_Y19_N20
\hourFND~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourFND~0_combout\ = (\clk100Hz~q\ & ((FNDhour0(0)))) # (!\clk100Hz~q\ & (FNDhour10(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDhour10(0),
	datac => FNDhour0(0),
	datad => \clk100Hz~q\,
	combout => \hourFND~0_combout\);

-- Location: LCCOMB_X21_Y19_N14
\Mod0|auto_generated|divider|divider|StageOut[16]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X22_Y19_N18
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (hour(0) & ((hour(1)) # ((!\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\)))) # (!hour(0) & (!\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- (hour(1) & !\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datab => hour(0),
	datac => hour(1),
	datad => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X19_Y19_N6
\Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & ((hour(0) & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))) # (!hour(0) & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X19_Y19_N26
\Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mux6~11_combout\ & (\Mux6~8_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~11_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux6~9_combout\,
	combout => \Mux6~10_combout\);

-- Location: FF_X19_Y19_N27
\FNDhour0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDhour0(1));

-- Location: LCCOMB_X25_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LCCOMB_X24_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LCCOMB_X24_Y19_N6
\Div0|auto_generated|divider|divider|StageOut[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = (hour(2) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LCCOMB_X25_Y19_N18
\Div0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X25_Y19_N4
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~6_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X25_Y19_N6
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X25_Y19_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~2_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X25_Y19_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y19_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y19_N0
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X25_Y19_N1
\FNDhour10[1]\ : dffeas
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
	q => FNDhour10(1));

-- Location: LCCOMB_X25_Y20_N4
\hourFND~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourFND~1_combout\ = (\clk100Hz~q\ & (!FNDhour0(1))) # (!\clk100Hz~q\ & ((!FNDhour10(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk100Hz~q\,
	datac => FNDhour0(1),
	datad => FNDhour10(1),
	combout => \hourFND~1_combout\);

-- Location: LCCOMB_X19_Y19_N0
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (hour(0)) # ((!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datac => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X19_Y19_N1
\FNDhour0[2]\ : dffeas
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
	q => FNDhour0(2));

-- Location: LCCOMB_X25_Y19_N14
\FNDhour10[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FNDhour10[2]~1_combout\ = !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \FNDhour10[2]~1_combout\);

-- Location: FF_X25_Y19_N15
\FNDhour10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FNDhour10[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDhour10(2));

-- Location: LCCOMB_X25_Y20_N2
\hourFND~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourFND~2_combout\ = (\clk100Hz~q\ & (!FNDhour0(2))) # (!\clk100Hz~q\ & ((!FNDhour10(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk100Hz~q\,
	datac => FNDhour0(2),
	datad => FNDhour10(2),
	combout => \hourFND~2_combout\);

-- Location: LCCOMB_X19_Y19_N2
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (hour(0) & (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\))) # (!hour(0) & (!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & 
-- \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datac => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X19_Y19_N3
\FNDhour0[3]\ : dffeas
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
	q => FNDhour0(3));

-- Location: LCCOMB_X25_Y20_N20
\hourFND~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourFND~3_combout\ = (\clk100Hz~q\ & (!FNDhour0(3))) # (!\clk100Hz~q\ & ((!FNDhour10(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk100Hz~q\,
	datac => FNDhour0(3),
	datad => FNDhour10(2),
	combout => \hourFND~3_combout\);

-- Location: LCCOMB_X19_Y19_N12
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!hour(0) & (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datac => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X19_Y19_N13
\FNDhour0[4]\ : dffeas
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
	q => FNDhour0(4));

-- Location: LCCOMB_X24_Y19_N22
\hourFND~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourFND~4_combout\ = (\clk100Hz~q\ & ((!FNDhour0(4)))) # (!\clk100Hz~q\ & (!FNDhour10(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDhour10(0),
	datac => FNDhour0(4),
	datad => \clk100Hz~q\,
	combout => \hourFND~4_combout\);

-- Location: LCCOMB_X19_Y19_N30
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (hour(0) $ (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datac => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X19_Y19_N31
\FNDhour0[5]\ : dffeas
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
	q => FNDhour0(5));

-- Location: LCCOMB_X25_Y20_N10
\hourFND~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourFND~5_combout\ = (!FNDhour0(5)) # (!\clk100Hz~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk100Hz~q\,
	datad => FNDhour0(5),
	combout => \hourFND~5_combout\);

-- Location: LCCOMB_X19_Y19_N8
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (hour(0) $ (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X19_Y19_N9
\FNDhour0[6]\ : dffeas
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
	q => FNDhour0(6));

-- Location: LCCOMB_X25_Y20_N8
\hourFND~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourFND~6_combout\ = (\clk100Hz~q\ & (!FNDhour0(6))) # (!\clk100Hz~q\ & ((!FNDhour10(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk100Hz~q\,
	datac => FNDhour0(6),
	datad => FNDhour10(2),
	combout => \hourFND~6_combout\);

-- Location: LCCOMB_X23_Y21_N4
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (min(4) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!min(4) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!min(4) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y21_N8
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X24_Y21_N2
\Mod1|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ = (min(2) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X24_Y21_N4
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X24_Y21_N28
\Mod1|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ = (min(5) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X24_Y21_N18
\Mod1|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X24_Y21_N20
\Mod1|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ = (min(3) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X24_Y21_N6
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X24_Y21_N10
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X24_Y21_N12
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y21_N28
\Mod1|auto_generated|divider|divider|StageOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X24_Y21_N30
\Mod1|auto_generated|divider|divider|StageOut[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\ = (min(1) & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X25_Y21_N12
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X25_Y21_N14
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y21_N24
\Mod1|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X25_Y21_N4
\Mod1|auto_generated|divider|divider|StageOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X25_Y21_N2
\Mod1|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X25_Y21_N16
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X25_Y21_N18
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~43_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y21_N20
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~42_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X25_Y21_N22
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X25_Y21_N0
\Mod1|auto_generated|divider|divider|StageOut[32]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~38_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X25_Y21_N26
\Mod1|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X25_Y21_N24
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((!min(0)) # (!\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => min(0),
	combout => \Mux20~0_combout\);

-- Location: FF_X25_Y21_N25
\FNDmin0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDmin0(0));

-- Location: LCCOMB_X23_Y20_N18
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = min(3) $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(min(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(3),
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y20_N22
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (min(5) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!min(5) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((min(5) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(5),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X23_Y20_N24
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X23_Y20_N28
\Div1|auto_generated|divider|divider|StageOut[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X23_Y20_N14
\Div1|auto_generated|divider|divider|StageOut[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ = (min(4) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X23_Y20_N16
\Div1|auto_generated|divider|divider|StageOut[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X24_Y20_N12
\Div1|auto_generated|divider|divider|StageOut[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ = (min(2) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X23_Y20_N2
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X23_Y20_N6
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y20_N8
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y20_N0
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux13~0_combout\);

-- Location: FF_X24_Y20_N1
\FNDmin10[0]\ : dffeas
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
	q => FNDmin10(0));

-- Location: LCCOMB_X24_Y20_N22
\minFND~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minFND~0_combout\ = (\clk100Hz~q\ & (FNDmin0(0))) # (!\clk100Hz~q\ & ((FNDmin10(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk100Hz~q\,
	datac => FNDmin0(0),
	datad => FNDmin10(0),
	combout => \minFND~0_combout\);

-- Location: LCCOMB_X22_Y20_N20
\Div1|auto_generated|divider|divider|StageOut[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((min(4)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => min(4),
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X22_Y20_N16
\Div1|auto_generated|divider|divider|StageOut[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X24_Y20_N14
\Div1|auto_generated|divider|divider|StageOut[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ = (min(2) & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X22_Y20_N14
\Div1|auto_generated|divider|divider|StageOut[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => min(1),
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X22_Y20_N2
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X22_Y20_N4
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X22_Y20_N6
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~31_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X22_Y20_N8
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y20_N10
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y20_N0
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux12~0_combout\);

-- Location: FF_X22_Y20_N1
\FNDmin10[1]\ : dffeas
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
	q => FNDmin10(1));

-- Location: LCCOMB_X25_Y21_N6
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((min(0)) # (!\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & (min(0) & !\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datab => min(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux19~0_combout\);

-- Location: FF_X25_Y21_N7
\FNDmin0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDmin0(1));

-- Location: LCCOMB_X19_Y20_N0
\minFND~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minFND~1_combout\ = (\clk100Hz~q\ & ((!FNDmin0(1)))) # (!\clk100Hz~q\ & (!FNDmin10(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk100Hz~q\,
	datac => FNDmin10(1),
	datad => FNDmin0(1),
	combout => \minFND~1_combout\);

-- Location: LCCOMB_X21_Y20_N20
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X21_Y20_N21
\FNDmin10[2]\ : dffeas
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
	q => FNDmin10(2));

-- Location: LCCOMB_X24_Y20_N4
\Mux18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~8_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mux18~8_combout\);

-- Location: LCCOMB_X24_Y20_N28
\Mux18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~9_combout\ = (min(0)) # ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mux18~10_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mux18~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~10_combout\,
	datab => min(0),
	datac => \Mux18~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mux18~9_combout\);

-- Location: FF_X24_Y20_N29
\FNDmin0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux18~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDmin0(2));

-- Location: LCCOMB_X24_Y20_N2
\minFND~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minFND~2_combout\ = (\clk100Hz~q\ & ((!FNDmin0(2)))) # (!\clk100Hz~q\ & (!FNDmin10(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk100Hz~q\,
	datac => FNDmin10(2),
	datad => FNDmin0(2),
	combout => \minFND~2_combout\);

-- Location: LCCOMB_X22_Y20_N24
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux10~0_combout\);

-- Location: FF_X22_Y20_N25
\FNDmin10[3]\ : dffeas
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
	q => FNDmin10(3));

-- Location: LCCOMB_X25_Y21_N30
\Mod1|auto_generated|divider|divider|StageOut[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (min(1))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X25_Y21_N8
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (min(0) & (\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ $ (!\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\))) # (!min(0) & (!\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & 
-- \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux17~0_combout\);

-- Location: FF_X25_Y21_N9
\FNDmin0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDmin0(3));

-- Location: LCCOMB_X25_Y20_N22
\minFND~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \minFND~3_combout\ = (\clk100Hz~q\ & ((!FNDmin0(3)))) # (!\clk100Hz~q\ & (!FNDmin10(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk100Hz~q\,
	datac => FNDmin10(3),
	datad => FNDmin0(3),
	combout => \minFND~3_combout\);

-- Location: LCCOMB_X22_Y20_N18
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X22_Y20_N19
\FNDmin10[4]\ : dffeas
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
	q => FNDmin10(4));

-- Location: LCCOMB_X24_Y20_N26
\Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X24_Y20_N16
\Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (!min(0) & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mux16~10_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mux16~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~10_combout\,
	datab => min(0),
	datac => \Mux16~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mux16~9_combout\);

-- Location: FF_X24_Y20_N17
\FNDmin0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux16~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDmin0(4));

-- Location: LCCOMB_X24_Y20_N18
\minFND~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minFND~4_combout\ = (\clk100Hz~q\ & ((!FNDmin0(4)))) # (!\clk100Hz~q\ & (!FNDmin10(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk100Hz~q\,
	datac => FNDmin10(4),
	datad => FNDmin0(4),
	combout => \minFND~4_combout\);

-- Location: LCCOMB_X22_Y20_N28
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux8~1_combout\);

-- Location: FF_X22_Y20_N29
\FNDmin10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDmin10(5));

-- Location: LCCOMB_X26_Y21_N28
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ & (min(0) $ (\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \Mux15~0_combout\);

-- Location: FF_X26_Y21_N29
\FNDmin0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDmin0(5));

-- Location: LCCOMB_X24_Y20_N24
\minFND~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \minFND~5_combout\ = (\clk100Hz~q\ & ((!FNDmin0(5)))) # (!\clk100Hz~q\ & (!FNDmin10(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk100Hz~q\,
	datac => FNDmin10(5),
	datad => FNDmin0(5),
	combout => \minFND~5_combout\);

-- Location: LCCOMB_X25_Y21_N10
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => min(0),
	combout => \Mux14~0_combout\);

-- Location: FF_X25_Y21_N11
\FNDmin0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDmin0(6));

-- Location: LCCOMB_X25_Y20_N24
\minFND~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minFND~6_combout\ = (\clk100Hz~q\ & ((!FNDmin0(6)))) # (!\clk100Hz~q\ & (!FNDmin10(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk100Hz~q\,
	datac => FNDmin10(3),
	datad => FNDmin0(6),
	combout => \minFND~6_combout\);

-- Location: LCCOMB_X19_Y20_N12
\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = sec(3) $ (VCC)
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(sec(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(3),
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X19_Y20_N18
\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X18_Y20_N2
\Div2|auto_generated|divider|divider|StageOut[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~16_combout\ = (sec(5) & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(5),
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X18_Y20_N8
\Div2|auto_generated|divider|divider|StageOut[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~18_combout\ = (sec(4) & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(4),
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X18_Y20_N14
\Div2|auto_generated|divider|divider|StageOut[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~20_combout\ = (sec(3) & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(3),
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X18_Y20_N4
\Div2|auto_generated|divider|divider|StageOut[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~22_combout\ = (sec(2) & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(2),
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X18_Y20_N20
\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X18_Y20_N24
\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X18_Y20_N26
\Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y20_N28
\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y20_N0
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mux26~0_combout\);

-- Location: FF_X18_Y20_N1
\FNDsec10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec10(0));

-- Location: LCCOMB_X19_Y21_N16
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = sec(3) $ (VCC)
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(sec(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X19_Y21_N20
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (sec(5) & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!sec(5) & (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((sec(5) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(5),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X19_Y21_N22
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X19_Y21_N28
\Mod2|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X19_Y21_N2
\Mod2|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & sec(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => sec(4),
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X19_Y21_N0
\Mod2|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X19_Y21_N26
\Mod2|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\ = (sec(2) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(2),
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X18_Y21_N0
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X18_Y21_N2
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X18_Y21_N4
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X18_Y21_N6
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X18_Y21_N8
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y21_N26
\Mod2|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~34_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X18_Y21_N24
\Mod2|auto_generated|divider|divider|StageOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X18_Y21_N18
\Mod2|auto_generated|divider|divider|StageOut[26]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (sec(3))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\);

-- Location: LCCOMB_X18_Y21_N28
\Mod2|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\ = (sec(2) & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(2),
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X18_Y21_N14
\Mod2|auto_generated|divider|divider|StageOut[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~32_combout\ = (sec(1) & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X17_Y21_N6
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[24]~32_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[24]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X17_Y21_N8
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X17_Y21_N12
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[27]~43_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[27]~35_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[27]~43_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X17_Y21_N14
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[28]~42_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[28]~42_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X17_Y21_N16
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X17_Y21_N20
\Mod2|auto_generated|divider|divider|StageOut[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((sec(1)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => sec(1),
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X17_Y21_N26
\Mod2|auto_generated|divider|divider|StageOut[32]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X18_Y21_N10
\Mod2|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[26]~36_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X17_Y21_N24
\Mod2|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X17_Y21_N4
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((!\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\) # (!sec(0)))) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(0),
	datab => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\,
	combout => \Mux33~0_combout\);

-- Location: FF_X17_Y21_N5
\FNDsec0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec0(0));

-- Location: LCCOMB_X19_Y20_N22
\secFND~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \secFND~0_combout\ = (\clk100Hz~q\ & ((FNDsec0(0)))) # (!\clk100Hz~q\ & (FNDsec10(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDsec10(0),
	datab => \clk100Hz~q\,
	datac => FNDsec0(0),
	combout => \secFND~0_combout\);

-- Location: LCCOMB_X18_Y20_N12
\Div2|auto_generated|divider|divider|StageOut[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X18_Y20_N10
\Div2|auto_generated|divider|divider|StageOut[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (sec(3))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X18_Y20_N16
\Div2|auto_generated|divider|divider|StageOut[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X17_Y20_N28
\Div2|auto_generated|divider|divider|StageOut[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~29_combout\ = (sec(1) & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(1),
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X17_Y20_N16
\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\Div2|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X17_Y20_N18
\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[21]~26_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~27_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X17_Y20_N20
\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X17_Y20_N22
\Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[23]~24_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X17_Y20_N24
\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X17_Y20_N12
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux25~0_combout\);

-- Location: FF_X17_Y20_N13
\FNDsec10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec10(1));

-- Location: LCCOMB_X17_Y21_N18
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\ & ((sec(0) & ((\Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\) # (!\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\))) # (!sec(0) & 
-- (\Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(0),
	datab => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\,
	combout => \Mux32~0_combout\);

-- Location: FF_X17_Y21_N19
\FNDsec0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec0(1));

-- Location: LCCOMB_X17_Y20_N14
\secFND~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \secFND~1_combout\ = (\clk100Hz~q\ & ((!FNDsec0(1)))) # (!\clk100Hz~q\ & (!FNDsec10(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDsec10(1),
	datac => FNDsec0(1),
	datad => \clk100Hz~q\,
	combout => \secFND~1_combout\);

-- Location: LCCOMB_X17_Y21_N28
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (sec(0)) # ((\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(0),
	datac => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \Mux31~0_combout\);

-- Location: FF_X17_Y21_N29
\FNDsec0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec0(2));

-- Location: LCCOMB_X17_Y20_N4
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux22~0_combout\);

-- Location: FF_X17_Y20_N5
\FNDsec10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec10(2));

-- Location: LCCOMB_X19_Y20_N24
\secFND~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \secFND~2_combout\ = (\clk100Hz~q\ & (!FNDsec0(2))) # (!\clk100Hz~q\ & ((!FNDsec10(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDsec0(2),
	datac => \clk100Hz~q\,
	datad => FNDsec10(2),
	combout => \secFND~2_combout\);

-- Location: LCCOMB_X17_Y20_N2
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux21~0_combout\);

-- Location: FF_X17_Y20_N3
\FNDsec10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec10(3));

-- Location: LCCOMB_X18_Y21_N30
\Mod2|auto_generated|divider|divider|StageOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X16_Y21_N6
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (sec(1) & (((!\Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\)) # (!sec(0)))) # (!sec(1) & (sec(0) $ 
-- (((!\Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(0),
	datac => \Mod2|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[25]~38_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X17_Y21_N30
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (sec(0) & (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ $ (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))) # (!sec(0) & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(0),
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X17_Y21_N2
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (!\Mux30~0_combout\)) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((!\Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux30~0_combout\,
	datac => \Mux30~1_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mux30~2_combout\);

-- Location: FF_X17_Y21_N3
\FNDsec0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec0(3));

-- Location: LCCOMB_X25_Y20_N26
\secFND~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \secFND~3_combout\ = (\clk100Hz~q\ & ((!FNDsec0(3)))) # (!\clk100Hz~q\ & (!FNDsec10(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk100Hz~q\,
	datab => FNDsec10(3),
	datad => FNDsec0(3),
	combout => \secFND~3_combout\);

-- Location: LCCOMB_X17_Y21_N0
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!sec(0) & (!\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ & \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(0),
	datac => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \Mux29~0_combout\);

-- Location: FF_X17_Y21_N1
\FNDsec0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec0(4));

-- Location: LCCOMB_X17_Y20_N8
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux23~0_combout\);

-- Location: FF_X17_Y20_N9
\FNDsec10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec10(4));

-- Location: LCCOMB_X17_Y20_N6
\secFND~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \secFND~4_combout\ = (\clk100Hz~q\ & (!FNDsec0(4))) # (!\clk100Hz~q\ & ((!FNDsec10(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FNDsec0(4),
	datac => FNDsec10(4),
	datad => \clk100Hz~q\,
	combout => \secFND~4_combout\);

-- Location: LCCOMB_X16_Y21_N8
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ & (sec(0) $ (\Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(0),
	datac => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \Mux28~0_combout\);

-- Location: FF_X16_Y21_N9
\FNDsec0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec0(5));

-- Location: LCCOMB_X17_Y20_N0
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux22~1_combout\);

-- Location: FF_X17_Y20_N1
\FNDsec10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec10(5));

-- Location: LCCOMB_X24_Y20_N30
\secFND~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \secFND~5_combout\ = (\clk100Hz~q\ & (!FNDsec0(5))) # (!\clk100Hz~q\ & ((!FNDsec10(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FNDsec0(5),
	datac => FNDsec10(5),
	datad => \clk100Hz~q\,
	combout => \secFND~5_combout\);

-- Location: LCCOMB_X17_Y21_N22
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (sec(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datab => sec(0),
	datac => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\,
	combout => \Mux27~0_combout\);

-- Location: FF_X17_Y21_N23
\FNDsec0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FNDsec0(6));

-- Location: LCCOMB_X25_Y20_N12
\secFND~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \secFND~6_combout\ = (\clk100Hz~q\ & ((!FNDsec0(6)))) # (!\clk100Hz~q\ & (!FNDsec10(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk100Hz~q\,
	datab => FNDsec10(3),
	datac => FNDsec0(6),
	combout => \secFND~6_combout\);

ww_hourFND(0) <= \hourFND[0]~output_o\;

ww_hourFND(1) <= \hourFND[1]~output_o\;

ww_hourFND(2) <= \hourFND[2]~output_o\;

ww_hourFND(3) <= \hourFND[3]~output_o\;

ww_hourFND(4) <= \hourFND[4]~output_o\;

ww_hourFND(5) <= \hourFND[5]~output_o\;

ww_hourFND(6) <= \hourFND[6]~output_o\;

ww_minFND(0) <= \minFND[0]~output_o\;

ww_minFND(1) <= \minFND[1]~output_o\;

ww_minFND(2) <= \minFND[2]~output_o\;

ww_minFND(3) <= \minFND[3]~output_o\;

ww_minFND(4) <= \minFND[4]~output_o\;

ww_minFND(5) <= \minFND[5]~output_o\;

ww_minFND(6) <= \minFND[6]~output_o\;

ww_secFND(0) <= \secFND[0]~output_o\;

ww_secFND(1) <= \secFND[1]~output_o\;

ww_secFND(2) <= \secFND[2]~output_o\;

ww_secFND(3) <= \secFND[3]~output_o\;

ww_secFND(4) <= \secFND[4]~output_o\;

ww_secFND(5) <= \secFND[5]~output_o\;

ww_secFND(6) <= \secFND[6]~output_o\;

ww_hourFNDSel2 <= \hourFNDSel2~output_o\;

ww_hourFNDSel1 <= \hourFNDSel1~output_o\;

ww_minFNDSel2 <= \minFNDSel2~output_o\;

ww_minFNDSel1 <= \minFNDSel1~output_o\;

ww_secFNDSel2 <= \secFNDSel2~output_o\;

ww_secFNDSel1 <= \secFNDSel1~output_o\;
END structure;


