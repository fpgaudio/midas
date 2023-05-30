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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/30/2023 18:04:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	test_program IS
    PORT (
	CLOCK_50 : IN std_logic;
	EX_IO : IN std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic;
	SERIAL_IN : IN std_logic;
	BYTE_OUT : OUT std_logic_vector(7 DOWNTO 0);
	debug_out : OUT std_logic;
	o_freq : OUT std_logic_vector(15 DOWNTO 0);
	o_lcd7_0 : OUT std_logic_vector(0 TO 6);
	o_lcd7_1 : OUT std_logic_vector(0 TO 6);
	o_lcd7_2 : OUT std_logic_vector(0 TO 6);
	o_lcd7_3 : OUT std_logic_vector(0 TO 6);
	o_lcd7_4 : OUT std_logic_vector(0 TO 6);
	o_lcd7_5 : OUT std_logic_vector(0 TO 6)
	);
END test_program;

-- Design Ports Information
-- EX_IO[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SERIAL_IN	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BYTE_OUT[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BYTE_OUT[1]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BYTE_OUT[2]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BYTE_OUT[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BYTE_OUT[4]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BYTE_OUT[5]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BYTE_OUT[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BYTE_OUT[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_out	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[1]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[4]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[7]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[8]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[11]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[12]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[13]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[14]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_freq[15]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_5[3]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lcd7_5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test_program IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_EX_IO : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic;
SIGNAL ww_SERIAL_IN : std_logic;
SIGNAL ww_BYTE_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_out : std_logic;
SIGNAL ww_o_freq : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_lcd7_0 : std_logic_vector(0 TO 6);
SIGNAL ww_o_lcd7_1 : std_logic_vector(0 TO 6);
SIGNAL ww_o_lcd7_2 : std_logic_vector(0 TO 6);
SIGNAL ww_o_lcd7_3 : std_logic_vector(0 TO 6);
SIGNAL ww_o_lcd7_4 : std_logic_vector(0 TO 6);
SIGNAL ww_o_lcd7_5 : std_logic_vector(0 TO 6);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \get_freq|WideOr1~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_IO[0]~input_o\ : std_logic;
SIGNAL \EX_IO[1]~input_o\ : std_logic;
SIGNAL \EX_IO[2]~input_o\ : std_logic;
SIGNAL \EX_IO[3]~input_o\ : std_logic;
SIGNAL \EX_IO[4]~input_o\ : std_logic;
SIGNAL \EX_IO[5]~input_o\ : std_logic;
SIGNAL \SERIAL_IN~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \BYTE_OUT[0]~output_o\ : std_logic;
SIGNAL \BYTE_OUT[1]~output_o\ : std_logic;
SIGNAL \BYTE_OUT[2]~output_o\ : std_logic;
SIGNAL \BYTE_OUT[3]~output_o\ : std_logic;
SIGNAL \BYTE_OUT[4]~output_o\ : std_logic;
SIGNAL \BYTE_OUT[5]~output_o\ : std_logic;
SIGNAL \BYTE_OUT[6]~output_o\ : std_logic;
SIGNAL \BYTE_OUT[7]~output_o\ : std_logic;
SIGNAL \debug_out~output_o\ : std_logic;
SIGNAL \o_freq[0]~output_o\ : std_logic;
SIGNAL \o_freq[1]~output_o\ : std_logic;
SIGNAL \o_freq[2]~output_o\ : std_logic;
SIGNAL \o_freq[3]~output_o\ : std_logic;
SIGNAL \o_freq[4]~output_o\ : std_logic;
SIGNAL \o_freq[5]~output_o\ : std_logic;
SIGNAL \o_freq[6]~output_o\ : std_logic;
SIGNAL \o_freq[7]~output_o\ : std_logic;
SIGNAL \o_freq[8]~output_o\ : std_logic;
SIGNAL \o_freq[9]~output_o\ : std_logic;
SIGNAL \o_freq[10]~output_o\ : std_logic;
SIGNAL \o_freq[11]~output_o\ : std_logic;
SIGNAL \o_freq[12]~output_o\ : std_logic;
SIGNAL \o_freq[13]~output_o\ : std_logic;
SIGNAL \o_freq[14]~output_o\ : std_logic;
SIGNAL \o_freq[15]~output_o\ : std_logic;
SIGNAL \o_lcd7_0[6]~output_o\ : std_logic;
SIGNAL \o_lcd7_0[5]~output_o\ : std_logic;
SIGNAL \o_lcd7_0[4]~output_o\ : std_logic;
SIGNAL \o_lcd7_0[3]~output_o\ : std_logic;
SIGNAL \o_lcd7_0[2]~output_o\ : std_logic;
SIGNAL \o_lcd7_0[1]~output_o\ : std_logic;
SIGNAL \o_lcd7_0[0]~output_o\ : std_logic;
SIGNAL \o_lcd7_1[6]~output_o\ : std_logic;
SIGNAL \o_lcd7_1[5]~output_o\ : std_logic;
SIGNAL \o_lcd7_1[4]~output_o\ : std_logic;
SIGNAL \o_lcd7_1[3]~output_o\ : std_logic;
SIGNAL \o_lcd7_1[2]~output_o\ : std_logic;
SIGNAL \o_lcd7_1[1]~output_o\ : std_logic;
SIGNAL \o_lcd7_1[0]~output_o\ : std_logic;
SIGNAL \o_lcd7_2[6]~output_o\ : std_logic;
SIGNAL \o_lcd7_2[5]~output_o\ : std_logic;
SIGNAL \o_lcd7_2[4]~output_o\ : std_logic;
SIGNAL \o_lcd7_2[3]~output_o\ : std_logic;
SIGNAL \o_lcd7_2[2]~output_o\ : std_logic;
SIGNAL \o_lcd7_2[1]~output_o\ : std_logic;
SIGNAL \o_lcd7_2[0]~output_o\ : std_logic;
SIGNAL \o_lcd7_3[6]~output_o\ : std_logic;
SIGNAL \o_lcd7_3[5]~output_o\ : std_logic;
SIGNAL \o_lcd7_3[4]~output_o\ : std_logic;
SIGNAL \o_lcd7_3[3]~output_o\ : std_logic;
SIGNAL \o_lcd7_3[2]~output_o\ : std_logic;
SIGNAL \o_lcd7_3[1]~output_o\ : std_logic;
SIGNAL \o_lcd7_3[0]~output_o\ : std_logic;
SIGNAL \o_lcd7_4[6]~output_o\ : std_logic;
SIGNAL \o_lcd7_4[5]~output_o\ : std_logic;
SIGNAL \o_lcd7_4[4]~output_o\ : std_logic;
SIGNAL \o_lcd7_4[3]~output_o\ : std_logic;
SIGNAL \o_lcd7_4[2]~output_o\ : std_logic;
SIGNAL \o_lcd7_4[1]~output_o\ : std_logic;
SIGNAL \o_lcd7_4[0]~output_o\ : std_logic;
SIGNAL \o_lcd7_5[6]~output_o\ : std_logic;
SIGNAL \o_lcd7_5[5]~output_o\ : std_logic;
SIGNAL \o_lcd7_5[4]~output_o\ : std_logic;
SIGNAL \o_lcd7_5[3]~output_o\ : std_logic;
SIGNAL \o_lcd7_5[2]~output_o\ : std_logic;
SIGNAL \o_lcd7_5[1]~output_o\ : std_logic;
SIGNAL \o_lcd7_5[0]~output_o\ : std_logic;
SIGNAL \EX_IO[6]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \mymidi|index[0]~10_combout\ : std_logic;
SIGNAL \mymidi|index[0]~11\ : std_logic;
SIGNAL \mymidi|index[1]~12_combout\ : std_logic;
SIGNAL \mymidi|index[4]~19\ : std_logic;
SIGNAL \mymidi|index[5]~20_combout\ : std_logic;
SIGNAL \mymidi|index[5]~21\ : std_logic;
SIGNAL \mymidi|index[6]~22_combout\ : std_logic;
SIGNAL \mymidi|index[6]~23\ : std_logic;
SIGNAL \mymidi|index[7]~24_combout\ : std_logic;
SIGNAL \mymidi|byte_count[1]~0_combout\ : std_logic;
SIGNAL \mymidi|Add0~0_combout\ : std_logic;
SIGNAL \mymidi|LessThan1~0_combout\ : std_logic;
SIGNAL \mymidi|LessThan1~1_combout\ : std_logic;
SIGNAL \mymidi|LessThan3~0_combout\ : std_logic;
SIGNAL \mymidi|always0~0_combout\ : std_logic;
SIGNAL \mymidi|always0~1_combout\ : std_logic;
SIGNAL \mymidi|always0~2_combout\ : std_logic;
SIGNAL \mymidi|count[13]~0_combout\ : std_logic;
SIGNAL \mymidi|count[13]~1_combout\ : std_logic;
SIGNAL \mymidi|Add0~44_combout\ : std_logic;
SIGNAL \mymidi|count[13]~2_combout\ : std_logic;
SIGNAL \mymidi|Add0~1\ : std_logic;
SIGNAL \mymidi|Add0~2_combout\ : std_logic;
SIGNAL \mymidi|Add0~45_combout\ : std_logic;
SIGNAL \mymidi|Add0~3\ : std_logic;
SIGNAL \mymidi|Add0~4_combout\ : std_logic;
SIGNAL \mymidi|Add0~46_combout\ : std_logic;
SIGNAL \mymidi|Add0~5\ : std_logic;
SIGNAL \mymidi|Add0~6_combout\ : std_logic;
SIGNAL \mymidi|Add0~47_combout\ : std_logic;
SIGNAL \mymidi|Add0~7\ : std_logic;
SIGNAL \mymidi|Add0~8_combout\ : std_logic;
SIGNAL \mymidi|Add0~43_combout\ : std_logic;
SIGNAL \mymidi|Add0~9\ : std_logic;
SIGNAL \mymidi|Add0~10_combout\ : std_logic;
SIGNAL \mymidi|Add0~42_combout\ : std_logic;
SIGNAL \mymidi|Add0~11\ : std_logic;
SIGNAL \mymidi|Add0~12_combout\ : std_logic;
SIGNAL \mymidi|Add0~41_combout\ : std_logic;
SIGNAL \mymidi|Add0~13\ : std_logic;
SIGNAL \mymidi|Add0~14_combout\ : std_logic;
SIGNAL \mymidi|Add0~39_combout\ : std_logic;
SIGNAL \mymidi|Add0~15\ : std_logic;
SIGNAL \mymidi|Add0~16_combout\ : std_logic;
SIGNAL \mymidi|Add0~40_combout\ : std_logic;
SIGNAL \mymidi|Add0~17\ : std_logic;
SIGNAL \mymidi|Add0~18_combout\ : std_logic;
SIGNAL \mymidi|Add0~38_combout\ : std_logic;
SIGNAL \mymidi|Add0~19\ : std_logic;
SIGNAL \mymidi|Add0~20_combout\ : std_logic;
SIGNAL \mymidi|Add0~22_combout\ : std_logic;
SIGNAL \mymidi|Add0~21\ : std_logic;
SIGNAL \mymidi|Add0~23_combout\ : std_logic;
SIGNAL \mymidi|Add0~34_combout\ : std_logic;
SIGNAL \mymidi|Add0~24\ : std_logic;
SIGNAL \mymidi|Add0~25_combout\ : std_logic;
SIGNAL \mymidi|Add0~35_combout\ : std_logic;
SIGNAL \mymidi|Add0~26\ : std_logic;
SIGNAL \mymidi|Add0~27_combout\ : std_logic;
SIGNAL \mymidi|Add0~36_combout\ : std_logic;
SIGNAL \mymidi|Add0~28\ : std_logic;
SIGNAL \mymidi|Add0~29_combout\ : std_logic;
SIGNAL \mymidi|Add0~37_combout\ : std_logic;
SIGNAL \mymidi|Add0~30\ : std_logic;
SIGNAL \mymidi|Add0~31_combout\ : std_logic;
SIGNAL \mymidi|Add0~33_combout\ : std_logic;
SIGNAL \mymidi|LessThan3~1_combout\ : std_logic;
SIGNAL \mymidi|LessThan3~2_combout\ : std_logic;
SIGNAL \mymidi|LessThan3~3_combout\ : std_logic;
SIGNAL \mymidi|index[7]~26_combout\ : std_logic;
SIGNAL \mymidi|index[1]~13\ : std_logic;
SIGNAL \mymidi|index[2]~14_combout\ : std_logic;
SIGNAL \mymidi|index[2]~15\ : std_logic;
SIGNAL \mymidi|index[3]~16_combout\ : std_logic;
SIGNAL \mymidi|index[3]~17\ : std_logic;
SIGNAL \mymidi|index[4]~18_combout\ : std_logic;
SIGNAL \mymidi|LessThan2~0_combout\ : std_logic;
SIGNAL \mymidi|LessThan2~1_combout\ : std_logic;
SIGNAL \mymidi|always0~3_combout\ : std_logic;
SIGNAL \mymidi|state[1]~1_combout\ : std_logic;
SIGNAL \mymidi|state[1]~0_combout\ : std_logic;
SIGNAL \mymidi|state[0]~2_combout\ : std_logic;
SIGNAL \mymidi|state[0]~3_combout\ : std_logic;
SIGNAL \mymidi|always0~4_combout\ : std_logic;
SIGNAL \mymidi|byte_count~2_combout\ : std_logic;
SIGNAL \mymidi|byte_count~1_combout\ : std_logic;
SIGNAL \mymidi|Add2~1\ : std_logic;
SIGNAL \mymidi|Add2~2_combout\ : std_logic;
SIGNAL \mymidi|Add2~0_combout\ : std_logic;
SIGNAL \mymidi|Add2~3\ : std_logic;
SIGNAL \mymidi|Add2~4_combout\ : std_logic;
SIGNAL \mymidi|Add2~5\ : std_logic;
SIGNAL \mymidi|Add2~7\ : std_logic;
SIGNAL \mymidi|Add2~9\ : std_logic;
SIGNAL \mymidi|Add2~10_combout\ : std_logic;
SIGNAL \mymidi|Add2~8_combout\ : std_logic;
SIGNAL \mymidi|Add2~6_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~0_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~17_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~18_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~11_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~12_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~7_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~8_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~9_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~10_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~3_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~4_combout\ : std_logic;
SIGNAL \get_freq|WideOr1~0_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~1_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~2_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~15_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~16_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~13_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~14_combout\ : std_logic;
SIGNAL \get_freq|WideOr1~1_combout\ : std_logic;
SIGNAL \get_freq|WideOr1~1clkctrl_outclk\ : std_logic;
SIGNAL \get_freq|WideOr17~1_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~5_combout\ : std_logic;
SIGNAL \mymidi|out_bytes~6_combout\ : std_logic;
SIGNAL \get_freq|WideOr17~0_combout\ : std_logic;
SIGNAL \get_freq|WideOr17~2_combout\ : std_logic;
SIGNAL \get_freq|WideOr15~0_combout\ : std_logic;
SIGNAL \get_freq|WideOr15~1_combout\ : std_logic;
SIGNAL \get_freq|WideOr15~2_combout\ : std_logic;
SIGNAL \get_freq|WideOr13~0_combout\ : std_logic;
SIGNAL \get_freq|WideOr13~1_combout\ : std_logic;
SIGNAL \get_freq|WideOr11~0_combout\ : std_logic;
SIGNAL \get_freq|WideOr17~3_combout\ : std_logic;
SIGNAL \get_freq|WideOr11~1_combout\ : std_logic;
SIGNAL \get_freq|WideOr9~0_combout\ : std_logic;
SIGNAL \get_freq|WideOr9~1_combout\ : std_logic;
SIGNAL \get_freq|WideOr7~0_combout\ : std_logic;
SIGNAL \get_freq|WideOr7~1_combout\ : std_logic;
SIGNAL \get_freq|WideOr5~0_combout\ : std_logic;
SIGNAL \get_freq|WideOr5~1_combout\ : std_logic;
SIGNAL \get_freq|WideOr3~0_combout\ : std_logic;
SIGNAL \get_freq|WideOr3~1_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_lower|WideOr6~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_lower|WideOr5~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_lower|WideOr4~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_lower|WideOr3~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_lower|WideOr2~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_lower|WideOr1~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_lower|WideOr0~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_upper|WideOr6~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_upper|WideOr5~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_upper|WideOr4~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_upper|WideOr3~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_upper|WideOr2~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_upper|WideOr1~0_combout\ : std_logic;
SIGNAL \u_7seg_1|u_lcd_upper|WideOr0~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|WideOr6~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|o_segments[6]~feeder_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|WideOr5~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|o_segments[5]~feeder_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|WideOr4~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|o_segments[4]~feeder_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|WideOr3~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|o_segments[3]~feeder_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|WideOr2~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|WideOr1~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|o_segments[1]~feeder_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|WideOr0~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_lower|o_segments[0]~feeder_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|WideOr6~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|WideOr5~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|o_segments[5]~feeder_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|WideOr4~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|WideOr3~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|o_segments[3]~feeder_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|WideOr2~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|WideOr1~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|o_segments[1]~feeder_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|WideOr0~0_combout\ : std_logic;
SIGNAL \u_7seg_2|u_lcd_upper|o_segments[0]~feeder_combout\ : std_logic;
SIGNAL \mymidi|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mymidi|out_bytes\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \mymidi|index\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mymidi|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mymidi|byte_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \get_freq|freq\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_7seg_1|u_lcd_upper|o_segments\ : std_logic_vector(0 TO 6);
SIGNAL \u_7seg_1|u_lcd_lower|o_segments\ : std_logic_vector(0 TO 6);
SIGNAL \u_7seg_2|u_lcd_upper|o_segments\ : std_logic_vector(0 TO 6);
SIGNAL \u_7seg_2|u_lcd_lower|o_segments\ : std_logic_vector(0 TO 6);
SIGNAL \mymidi|ALT_INV_byte_count[1]~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_EX_IO <= EX_IO;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_SERIAL_IN <= SERIAL_IN;
BYTE_OUT <= ww_BYTE_OUT;
debug_out <= ww_debug_out;
o_freq <= ww_o_freq;
o_lcd7_0 <= ww_o_lcd7_0;
o_lcd7_1 <= ww_o_lcd7_1;
o_lcd7_2 <= ww_o_lcd7_2;
o_lcd7_3 <= ww_o_lcd7_3;
o_lcd7_4 <= ww_o_lcd7_4;
o_lcd7_5 <= ww_o_lcd7_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\get_freq|WideOr1~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \get_freq|WideOr1~1_combout\);
\mymidi|ALT_INV_byte_count[1]~0_combout\ <= NOT \mymidi|byte_count[1]~0_combout\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\BYTE_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BYTE_OUT[0]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\BYTE_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BYTE_OUT[1]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\BYTE_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BYTE_OUT[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\BYTE_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BYTE_OUT[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\BYTE_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BYTE_OUT[4]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\BYTE_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BYTE_OUT[5]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\BYTE_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BYTE_OUT[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\BYTE_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BYTE_OUT[7]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\debug_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_IO[6]~input_o\,
	devoe => ww_devoe,
	o => \debug_out~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\o_freq[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \get_freq|freq\(0),
	devoe => ww_devoe,
	o => \o_freq[0]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\o_freq[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \get_freq|freq\(1),
	devoe => ww_devoe,
	o => \o_freq[1]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\o_freq[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \get_freq|freq\(2),
	devoe => ww_devoe,
	o => \o_freq[2]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\o_freq[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \get_freq|freq\(3),
	devoe => ww_devoe,
	o => \o_freq[3]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\o_freq[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \get_freq|freq\(4),
	devoe => ww_devoe,
	o => \o_freq[4]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\o_freq[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \get_freq|freq\(5),
	devoe => ww_devoe,
	o => \o_freq[5]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\o_freq[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \get_freq|freq\(6),
	devoe => ww_devoe,
	o => \o_freq[6]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\o_freq[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \get_freq|freq\(7),
	devoe => ww_devoe,
	o => \o_freq[7]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\o_freq[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_freq[8]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\o_freq[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_freq[9]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\o_freq[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_freq[10]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\o_freq[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_freq[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\o_freq[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_freq[12]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\o_freq[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_freq[13]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\o_freq[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_freq[14]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\o_freq[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_freq[15]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\o_lcd7_0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_lcd7_0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\o_lcd7_0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_lcd7_0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\o_lcd7_0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_lcd7_0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\o_lcd7_0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_lcd7_0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\o_lcd7_0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_lcd7_0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\o_lcd7_0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_lcd7_0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\o_lcd7_0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_lcd7_0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\o_lcd7_1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_lcd7_1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\o_lcd7_1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_lcd7_1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\o_lcd7_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_lcd7_1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\o_lcd7_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_lcd7_1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\o_lcd7_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_lcd7_1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\o_lcd7_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_lcd7_1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\o_lcd7_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_lcd7_1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\o_lcd7_2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_lower|o_segments\(6),
	devoe => ww_devoe,
	o => \o_lcd7_2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\o_lcd7_2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_lower|o_segments\(5),
	devoe => ww_devoe,
	o => \o_lcd7_2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\o_lcd7_2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_lower|o_segments\(4),
	devoe => ww_devoe,
	o => \o_lcd7_2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\o_lcd7_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_lower|o_segments\(3),
	devoe => ww_devoe,
	o => \o_lcd7_2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\o_lcd7_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_lower|o_segments\(2),
	devoe => ww_devoe,
	o => \o_lcd7_2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\o_lcd7_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_lower|o_segments\(1),
	devoe => ww_devoe,
	o => \o_lcd7_2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\o_lcd7_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_lower|o_segments\(0),
	devoe => ww_devoe,
	o => \o_lcd7_2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\o_lcd7_3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_upper|o_segments\(6),
	devoe => ww_devoe,
	o => \o_lcd7_3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\o_lcd7_3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_upper|o_segments\(5),
	devoe => ww_devoe,
	o => \o_lcd7_3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\o_lcd7_3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_upper|o_segments\(4),
	devoe => ww_devoe,
	o => \o_lcd7_3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\o_lcd7_3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_upper|o_segments\(3),
	devoe => ww_devoe,
	o => \o_lcd7_3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\o_lcd7_3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_upper|o_segments\(2),
	devoe => ww_devoe,
	o => \o_lcd7_3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\o_lcd7_3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_upper|o_segments\(1),
	devoe => ww_devoe,
	o => \o_lcd7_3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\o_lcd7_3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_1|u_lcd_upper|o_segments\(0),
	devoe => ww_devoe,
	o => \o_lcd7_3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\o_lcd7_4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_lower|o_segments\(6),
	devoe => ww_devoe,
	o => \o_lcd7_4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\o_lcd7_4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_lower|o_segments\(5),
	devoe => ww_devoe,
	o => \o_lcd7_4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\o_lcd7_4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_lower|o_segments\(4),
	devoe => ww_devoe,
	o => \o_lcd7_4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\o_lcd7_4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_lower|o_segments\(3),
	devoe => ww_devoe,
	o => \o_lcd7_4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\o_lcd7_4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_lower|o_segments\(2),
	devoe => ww_devoe,
	o => \o_lcd7_4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\o_lcd7_4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_lower|o_segments\(1),
	devoe => ww_devoe,
	o => \o_lcd7_4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\o_lcd7_4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_lower|o_segments\(0),
	devoe => ww_devoe,
	o => \o_lcd7_4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\o_lcd7_5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_upper|o_segments\(6),
	devoe => ww_devoe,
	o => \o_lcd7_5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\o_lcd7_5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_upper|o_segments\(5),
	devoe => ww_devoe,
	o => \o_lcd7_5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\o_lcd7_5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_upper|o_segments\(4),
	devoe => ww_devoe,
	o => \o_lcd7_5[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\o_lcd7_5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_upper|o_segments\(3),
	devoe => ww_devoe,
	o => \o_lcd7_5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\o_lcd7_5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_upper|o_segments\(2),
	devoe => ww_devoe,
	o => \o_lcd7_5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\o_lcd7_5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_upper|o_segments\(1),
	devoe => ww_devoe,
	o => \o_lcd7_5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\o_lcd7_5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg_2|u_lcd_upper|o_segments\(0),
	devoe => ww_devoe,
	o => \o_lcd7_5[0]~output_o\);

-- Location: IOIBUF_X23_Y73_N22
\EX_IO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_IO(6),
	o => \EX_IO[6]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY,
	o => \KEY~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X109_Y14_N2
\mymidi|index[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|index[0]~10_combout\ = \mymidi|index\(0) $ (VCC)
-- \mymidi|index[0]~11\ = CARRY(\mymidi|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|index\(0),
	datad => VCC,
	combout => \mymidi|index[0]~10_combout\,
	cout => \mymidi|index[0]~11\);

-- Location: LCCOMB_X109_Y14_N4
\mymidi|index[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|index[1]~12_combout\ = (\mymidi|index\(1) & (!\mymidi|index[0]~11\)) # (!\mymidi|index\(1) & ((\mymidi|index[0]~11\) # (GND)))
-- \mymidi|index[1]~13\ = CARRY((!\mymidi|index[0]~11\) # (!\mymidi|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|index\(1),
	datad => VCC,
	cin => \mymidi|index[0]~11\,
	combout => \mymidi|index[1]~12_combout\,
	cout => \mymidi|index[1]~13\);

-- Location: LCCOMB_X109_Y14_N10
\mymidi|index[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|index[4]~18_combout\ = (\mymidi|index\(4) & (\mymidi|index[3]~17\ $ (GND))) # (!\mymidi|index\(4) & (!\mymidi|index[3]~17\ & VCC))
-- \mymidi|index[4]~19\ = CARRY((\mymidi|index\(4) & !\mymidi|index[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|index\(4),
	datad => VCC,
	cin => \mymidi|index[3]~17\,
	combout => \mymidi|index[4]~18_combout\,
	cout => \mymidi|index[4]~19\);

-- Location: LCCOMB_X109_Y14_N12
\mymidi|index[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|index[5]~20_combout\ = (\mymidi|index\(5) & (!\mymidi|index[4]~19\)) # (!\mymidi|index\(5) & ((\mymidi|index[4]~19\) # (GND)))
-- \mymidi|index[5]~21\ = CARRY((!\mymidi|index[4]~19\) # (!\mymidi|index\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|index\(5),
	datad => VCC,
	cin => \mymidi|index[4]~19\,
	combout => \mymidi|index[5]~20_combout\,
	cout => \mymidi|index[5]~21\);

-- Location: FF_X109_Y14_N13
\mymidi|index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|index[5]~20_combout\,
	sclr => \mymidi|always0~4_combout\,
	ena => \mymidi|index[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|index\(5));

-- Location: LCCOMB_X109_Y14_N14
\mymidi|index[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|index[6]~22_combout\ = (\mymidi|index\(6) & (\mymidi|index[5]~21\ $ (GND))) # (!\mymidi|index\(6) & (!\mymidi|index[5]~21\ & VCC))
-- \mymidi|index[6]~23\ = CARRY((\mymidi|index\(6) & !\mymidi|index[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(6),
	datad => VCC,
	cin => \mymidi|index[5]~21\,
	combout => \mymidi|index[6]~22_combout\,
	cout => \mymidi|index[6]~23\);

-- Location: FF_X109_Y14_N15
\mymidi|index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|index[6]~22_combout\,
	sclr => \mymidi|always0~4_combout\,
	ena => \mymidi|index[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|index\(6));

-- Location: LCCOMB_X109_Y14_N16
\mymidi|index[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|index[7]~24_combout\ = \mymidi|index\(7) $ (\mymidi|index[6]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|index\(7),
	cin => \mymidi|index[6]~23\,
	combout => \mymidi|index[7]~24_combout\);

-- Location: FF_X109_Y14_N17
\mymidi|index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|index[7]~24_combout\,
	sclr => \mymidi|always0~4_combout\,
	ena => \mymidi|index[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|index\(7));

-- Location: LCCOMB_X108_Y14_N0
\mymidi|byte_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|byte_count[1]~0_combout\ = (\KEY~input_o\ & (!\mymidi|LessThan2~0_combout\ & !\mymidi|index\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~input_o\,
	datac => \mymidi|LessThan2~0_combout\,
	datad => \mymidi|index\(7),
	combout => \mymidi|byte_count[1]~0_combout\);

-- Location: LCCOMB_X105_Y14_N0
\mymidi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~0_combout\ = \mymidi|count\(0) $ (VCC)
-- \mymidi|Add0~1\ = CARRY(\mymidi|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|count\(0),
	datad => VCC,
	combout => \mymidi|Add0~0_combout\,
	cout => \mymidi|Add0~1\);

-- Location: LCCOMB_X106_Y14_N16
\mymidi|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|LessThan1~0_combout\ = (!\mymidi|count\(14) & (!\mymidi|count\(12) & (!\mymidi|count\(11) & !\mymidi|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(14),
	datab => \mymidi|count\(12),
	datac => \mymidi|count\(11),
	datad => \mymidi|count\(13),
	combout => \mymidi|LessThan1~0_combout\);

-- Location: LCCOMB_X106_Y14_N10
\mymidi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|LessThan1~1_combout\ = (\mymidi|count\(10)) # ((\mymidi|count\(15)) # (!\mymidi|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|count\(10),
	datac => \mymidi|count\(15),
	datad => \mymidi|LessThan1~0_combout\,
	combout => \mymidi|LessThan1~1_combout\);

-- Location: LCCOMB_X107_Y14_N2
\mymidi|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|LessThan3~0_combout\ = (\mymidi|count\(0)) # ((\mymidi|count\(3)) # ((\mymidi|count\(2)) # (\mymidi|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(0),
	datab => \mymidi|count\(3),
	datac => \mymidi|count\(2),
	datad => \mymidi|count\(1),
	combout => \mymidi|LessThan3~0_combout\);

-- Location: LCCOMB_X107_Y14_N0
\mymidi|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|always0~0_combout\ = (\mymidi|count\(5) & ((\mymidi|count\(4)) # (\mymidi|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(4),
	datab => \mymidi|LessThan3~0_combout\,
	datad => \mymidi|count\(5),
	combout => \mymidi|always0~0_combout\);

-- Location: LCCOMB_X107_Y14_N22
\mymidi|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|always0~1_combout\ = (\mymidi|count\(8) & ((\mymidi|count\(6)) # ((\mymidi|count\(7)) # (\mymidi|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(6),
	datab => \mymidi|count\(7),
	datac => \mymidi|count\(8),
	datad => \mymidi|always0~0_combout\,
	combout => \mymidi|always0~1_combout\);

-- Location: LCCOMB_X108_Y14_N4
\mymidi|always0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|always0~2_combout\ = (!\mymidi|state\(1) & ((\mymidi|LessThan1~1_combout\) # ((\mymidi|count\(9) & \mymidi|always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(9),
	datab => \mymidi|state\(1),
	datac => \mymidi|LessThan1~1_combout\,
	datad => \mymidi|always0~1_combout\,
	combout => \mymidi|always0~2_combout\);

-- Location: LCCOMB_X108_Y14_N24
\mymidi|count[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|count[13]~0_combout\ = (\mymidi|state\(1) & (!\mymidi|index\(7) & (!\mymidi|LessThan2~0_combout\ & !\mymidi|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|state\(1),
	datab => \mymidi|index\(7),
	datac => \mymidi|LessThan2~0_combout\,
	datad => \mymidi|LessThan3~3_combout\,
	combout => \mymidi|count[13]~0_combout\);

-- Location: LCCOMB_X108_Y14_N22
\mymidi|count[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|count[13]~1_combout\ = (\mymidi|count[13]~0_combout\) # ((\mymidi|state\(0) & (!\mymidi|always0~2_combout\ & !\mymidi|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|state\(0),
	datab => \mymidi|always0~2_combout\,
	datac => \mymidi|LessThan2~1_combout\,
	datad => \mymidi|count[13]~0_combout\,
	combout => \mymidi|count[13]~1_combout\);

-- Location: LCCOMB_X107_Y14_N10
\mymidi|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~44_combout\ = (\mymidi|Add0~0_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~0_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~44_combout\);

-- Location: LCCOMB_X108_Y14_N2
\mymidi|count[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|count[13]~2_combout\ = (\mymidi|state\(0)) # ((\mymidi|state\(1)) # ((!\mymidi|byte_count[1]~0_combout\) # (!\EX_IO[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|state\(0),
	datab => \mymidi|state\(1),
	datac => \EX_IO[6]~input_o\,
	datad => \mymidi|byte_count[1]~0_combout\,
	combout => \mymidi|count[13]~2_combout\);

-- Location: FF_X107_Y14_N11
\mymidi|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~44_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(0));

-- Location: LCCOMB_X105_Y14_N2
\mymidi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~2_combout\ = (\mymidi|count\(1) & (!\mymidi|Add0~1\)) # (!\mymidi|count\(1) & ((\mymidi|Add0~1\) # (GND)))
-- \mymidi|Add0~3\ = CARRY((!\mymidi|Add0~1\) # (!\mymidi|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(1),
	datad => VCC,
	cin => \mymidi|Add0~1\,
	combout => \mymidi|Add0~2_combout\,
	cout => \mymidi|Add0~3\);

-- Location: LCCOMB_X107_Y14_N16
\mymidi|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~45_combout\ = (\mymidi|Add0~2_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~2_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~45_combout\);

-- Location: FF_X107_Y14_N17
\mymidi|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~45_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(1));

-- Location: LCCOMB_X105_Y14_N4
\mymidi|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~4_combout\ = (\mymidi|count\(2) & (\mymidi|Add0~3\ $ (GND))) # (!\mymidi|count\(2) & (!\mymidi|Add0~3\ & VCC))
-- \mymidi|Add0~5\ = CARRY((\mymidi|count\(2) & !\mymidi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(2),
	datad => VCC,
	cin => \mymidi|Add0~3\,
	combout => \mymidi|Add0~4_combout\,
	cout => \mymidi|Add0~5\);

-- Location: LCCOMB_X107_Y14_N14
\mymidi|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~46_combout\ = (\mymidi|Add0~4_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~4_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~46_combout\);

-- Location: FF_X107_Y14_N15
\mymidi|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~46_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(2));

-- Location: LCCOMB_X105_Y14_N6
\mymidi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~6_combout\ = (\mymidi|count\(3) & (!\mymidi|Add0~5\)) # (!\mymidi|count\(3) & ((\mymidi|Add0~5\) # (GND)))
-- \mymidi|Add0~7\ = CARRY((!\mymidi|Add0~5\) # (!\mymidi|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(3),
	datad => VCC,
	cin => \mymidi|Add0~5\,
	combout => \mymidi|Add0~6_combout\,
	cout => \mymidi|Add0~7\);

-- Location: LCCOMB_X107_Y14_N4
\mymidi|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~47_combout\ = (\mymidi|Add0~6_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~6_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~47_combout\);

-- Location: FF_X107_Y14_N5
\mymidi|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~47_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(3));

-- Location: LCCOMB_X105_Y14_N8
\mymidi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~8_combout\ = (\mymidi|count\(4) & (\mymidi|Add0~7\ $ (GND))) # (!\mymidi|count\(4) & (!\mymidi|Add0~7\ & VCC))
-- \mymidi|Add0~9\ = CARRY((\mymidi|count\(4) & !\mymidi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(4),
	datad => VCC,
	cin => \mymidi|Add0~7\,
	combout => \mymidi|Add0~8_combout\,
	cout => \mymidi|Add0~9\);

-- Location: LCCOMB_X107_Y14_N8
\mymidi|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~43_combout\ = (\mymidi|Add0~8_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~8_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~43_combout\);

-- Location: FF_X107_Y14_N9
\mymidi|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~43_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(4));

-- Location: LCCOMB_X105_Y14_N10
\mymidi|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~10_combout\ = (\mymidi|count\(5) & (!\mymidi|Add0~9\)) # (!\mymidi|count\(5) & ((\mymidi|Add0~9\) # (GND)))
-- \mymidi|Add0~11\ = CARRY((!\mymidi|Add0~9\) # (!\mymidi|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(5),
	datad => VCC,
	cin => \mymidi|Add0~9\,
	combout => \mymidi|Add0~10_combout\,
	cout => \mymidi|Add0~11\);

-- Location: LCCOMB_X107_Y14_N18
\mymidi|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~42_combout\ = (\mymidi|Add0~10_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~10_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~42_combout\);

-- Location: FF_X107_Y14_N19
\mymidi|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~42_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(5));

-- Location: LCCOMB_X105_Y14_N12
\mymidi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~12_combout\ = (\mymidi|count\(6) & (\mymidi|Add0~11\ $ (GND))) # (!\mymidi|count\(6) & (!\mymidi|Add0~11\ & VCC))
-- \mymidi|Add0~13\ = CARRY((\mymidi|count\(6) & !\mymidi|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|count\(6),
	datad => VCC,
	cin => \mymidi|Add0~11\,
	combout => \mymidi|Add0~12_combout\,
	cout => \mymidi|Add0~13\);

-- Location: LCCOMB_X107_Y14_N12
\mymidi|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~41_combout\ = (\mymidi|Add0~12_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~12_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~41_combout\);

-- Location: FF_X107_Y14_N13
\mymidi|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~41_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(6));

-- Location: LCCOMB_X105_Y14_N14
\mymidi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~14_combout\ = (\mymidi|count\(7) & (!\mymidi|Add0~13\)) # (!\mymidi|count\(7) & ((\mymidi|Add0~13\) # (GND)))
-- \mymidi|Add0~15\ = CARRY((!\mymidi|Add0~13\) # (!\mymidi|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(7),
	datad => VCC,
	cin => \mymidi|Add0~13\,
	combout => \mymidi|Add0~14_combout\,
	cout => \mymidi|Add0~15\);

-- Location: LCCOMB_X107_Y14_N20
\mymidi|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~39_combout\ = (\mymidi|Add0~14_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~14_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~39_combout\);

-- Location: FF_X107_Y14_N21
\mymidi|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~39_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(7));

-- Location: LCCOMB_X105_Y14_N16
\mymidi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~16_combout\ = (\mymidi|count\(8) & (\mymidi|Add0~15\ $ (GND))) # (!\mymidi|count\(8) & (!\mymidi|Add0~15\ & VCC))
-- \mymidi|Add0~17\ = CARRY((\mymidi|count\(8) & !\mymidi|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(8),
	datad => VCC,
	cin => \mymidi|Add0~15\,
	combout => \mymidi|Add0~16_combout\,
	cout => \mymidi|Add0~17\);

-- Location: LCCOMB_X107_Y14_N30
\mymidi|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~40_combout\ = (\mymidi|Add0~16_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~16_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~40_combout\);

-- Location: FF_X107_Y14_N31
\mymidi|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~40_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(8));

-- Location: LCCOMB_X105_Y14_N18
\mymidi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~18_combout\ = (\mymidi|count\(9) & (!\mymidi|Add0~17\)) # (!\mymidi|count\(9) & ((\mymidi|Add0~17\) # (GND)))
-- \mymidi|Add0~19\ = CARRY((!\mymidi|Add0~17\) # (!\mymidi|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|count\(9),
	datad => VCC,
	cin => \mymidi|Add0~17\,
	combout => \mymidi|Add0~18_combout\,
	cout => \mymidi|Add0~19\);

-- Location: LCCOMB_X107_Y14_N26
\mymidi|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~38_combout\ = (\mymidi|Add0~18_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~18_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~38_combout\);

-- Location: FF_X107_Y14_N27
\mymidi|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~38_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(9));

-- Location: LCCOMB_X105_Y14_N20
\mymidi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~20_combout\ = (\mymidi|count\(10) & (\mymidi|Add0~19\ $ (GND))) # (!\mymidi|count\(10) & (!\mymidi|Add0~19\ & VCC))
-- \mymidi|Add0~21\ = CARRY((\mymidi|count\(10) & !\mymidi|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(10),
	datad => VCC,
	cin => \mymidi|Add0~19\,
	combout => \mymidi|Add0~20_combout\,
	cout => \mymidi|Add0~21\);

-- Location: LCCOMB_X106_Y14_N20
\mymidi|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~22_combout\ = (\mymidi|Add0~20_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|Add0~20_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~22_combout\);

-- Location: FF_X106_Y14_N21
\mymidi|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~22_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(10));

-- Location: LCCOMB_X105_Y14_N22
\mymidi|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~23_combout\ = (\mymidi|count\(11) & (!\mymidi|Add0~21\)) # (!\mymidi|count\(11) & ((\mymidi|Add0~21\) # (GND)))
-- \mymidi|Add0~24\ = CARRY((!\mymidi|Add0~21\) # (!\mymidi|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|count\(11),
	datad => VCC,
	cin => \mymidi|Add0~21\,
	combout => \mymidi|Add0~23_combout\,
	cout => \mymidi|Add0~24\);

-- Location: LCCOMB_X106_Y14_N8
\mymidi|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~34_combout\ = (\mymidi|Add0~23_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|Add0~23_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~34_combout\);

-- Location: FF_X106_Y14_N9
\mymidi|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~34_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(11));

-- Location: LCCOMB_X105_Y14_N24
\mymidi|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~25_combout\ = (\mymidi|count\(12) & (\mymidi|Add0~24\ $ (GND))) # (!\mymidi|count\(12) & (!\mymidi|Add0~24\ & VCC))
-- \mymidi|Add0~26\ = CARRY((\mymidi|count\(12) & !\mymidi|Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|count\(12),
	datad => VCC,
	cin => \mymidi|Add0~24\,
	combout => \mymidi|Add0~25_combout\,
	cout => \mymidi|Add0~26\);

-- Location: LCCOMB_X106_Y14_N18
\mymidi|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~35_combout\ = (\mymidi|Add0~25_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|Add0~25_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~35_combout\);

-- Location: FF_X106_Y14_N19
\mymidi|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~35_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(12));

-- Location: LCCOMB_X105_Y14_N26
\mymidi|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~27_combout\ = (\mymidi|count\(13) & (!\mymidi|Add0~26\)) # (!\mymidi|count\(13) & ((\mymidi|Add0~26\) # (GND)))
-- \mymidi|Add0~28\ = CARRY((!\mymidi|Add0~26\) # (!\mymidi|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|count\(13),
	datad => VCC,
	cin => \mymidi|Add0~26\,
	combout => \mymidi|Add0~27_combout\,
	cout => \mymidi|Add0~28\);

-- Location: LCCOMB_X106_Y14_N12
\mymidi|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~36_combout\ = (\mymidi|Add0~27_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|Add0~27_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~36_combout\);

-- Location: FF_X106_Y14_N13
\mymidi|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~36_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(13));

-- Location: LCCOMB_X105_Y14_N28
\mymidi|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~29_combout\ = (\mymidi|count\(14) & (\mymidi|Add0~28\ $ (GND))) # (!\mymidi|count\(14) & (!\mymidi|Add0~28\ & VCC))
-- \mymidi|Add0~30\ = CARRY((\mymidi|count\(14) & !\mymidi|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|count\(14),
	datad => VCC,
	cin => \mymidi|Add0~28\,
	combout => \mymidi|Add0~29_combout\,
	cout => \mymidi|Add0~30\);

-- Location: LCCOMB_X106_Y14_N26
\mymidi|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~37_combout\ = (\mymidi|Add0~29_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|Add0~29_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~37_combout\);

-- Location: FF_X106_Y14_N27
\mymidi|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~37_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(14));

-- Location: LCCOMB_X105_Y14_N30
\mymidi|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~31_combout\ = \mymidi|count\(15) $ (\mymidi|Add0~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|count\(15),
	cin => \mymidi|Add0~30\,
	combout => \mymidi|Add0~31_combout\);

-- Location: LCCOMB_X106_Y14_N14
\mymidi|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add0~33_combout\ = (\mymidi|Add0~31_combout\ & \mymidi|count[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|Add0~31_combout\,
	datad => \mymidi|count[13]~1_combout\,
	combout => \mymidi|Add0~33_combout\);

-- Location: FF_X106_Y14_N15
\mymidi|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|Add0~33_combout\,
	ena => \mymidi|count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|count\(15));

-- Location: LCCOMB_X107_Y14_N28
\mymidi|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|LessThan3~1_combout\ = (\mymidi|count\(6) & ((\mymidi|count\(5)) # ((\mymidi|count\(4)) # (\mymidi|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(6),
	datab => \mymidi|count\(5),
	datac => \mymidi|count\(4),
	datad => \mymidi|LessThan3~0_combout\,
	combout => \mymidi|LessThan3~1_combout\);

-- Location: LCCOMB_X107_Y14_N6
\mymidi|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|LessThan3~2_combout\ = (\mymidi|count\(9) & ((\mymidi|count\(8)) # ((\mymidi|count\(7)) # (\mymidi|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(8),
	datab => \mymidi|count\(7),
	datac => \mymidi|count\(9),
	datad => \mymidi|LessThan3~1_combout\,
	combout => \mymidi|LessThan3~2_combout\);

-- Location: LCCOMB_X107_Y14_N24
\mymidi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|LessThan3~3_combout\ = (\mymidi|count\(15)) # (((\mymidi|count\(10) & \mymidi|LessThan3~2_combout\)) # (!\mymidi|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|count\(15),
	datab => \mymidi|count\(10),
	datac => \mymidi|LessThan1~0_combout\,
	datad => \mymidi|LessThan3~2_combout\,
	combout => \mymidi|LessThan3~3_combout\);

-- Location: LCCOMB_X108_Y14_N20
\mymidi|index[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|index[7]~26_combout\ = ((!\mymidi|state\(0) & (\mymidi|state\(1) & \mymidi|LessThan3~3_combout\))) # (!\mymidi|byte_count[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|state\(0),
	datab => \mymidi|byte_count[1]~0_combout\,
	datac => \mymidi|state\(1),
	datad => \mymidi|LessThan3~3_combout\,
	combout => \mymidi|index[7]~26_combout\);

-- Location: FF_X109_Y14_N5
\mymidi|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|index[1]~12_combout\,
	sclr => \mymidi|always0~4_combout\,
	ena => \mymidi|index[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|index\(1));

-- Location: LCCOMB_X109_Y14_N6
\mymidi|index[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|index[2]~14_combout\ = (\mymidi|index\(2) & (\mymidi|index[1]~13\ $ (GND))) # (!\mymidi|index\(2) & (!\mymidi|index[1]~13\ & VCC))
-- \mymidi|index[2]~15\ = CARRY((\mymidi|index\(2) & !\mymidi|index[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(2),
	datad => VCC,
	cin => \mymidi|index[1]~13\,
	combout => \mymidi|index[2]~14_combout\,
	cout => \mymidi|index[2]~15\);

-- Location: FF_X109_Y14_N7
\mymidi|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|index[2]~14_combout\,
	sclr => \mymidi|always0~4_combout\,
	ena => \mymidi|index[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|index\(2));

-- Location: LCCOMB_X109_Y14_N8
\mymidi|index[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|index[3]~16_combout\ = (\mymidi|index\(3) & (!\mymidi|index[2]~15\)) # (!\mymidi|index\(3) & ((\mymidi|index[2]~15\) # (GND)))
-- \mymidi|index[3]~17\ = CARRY((!\mymidi|index[2]~15\) # (!\mymidi|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(3),
	datad => VCC,
	cin => \mymidi|index[2]~15\,
	combout => \mymidi|index[3]~16_combout\,
	cout => \mymidi|index[3]~17\);

-- Location: FF_X109_Y14_N9
\mymidi|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|index[3]~16_combout\,
	sclr => \mymidi|always0~4_combout\,
	ena => \mymidi|index[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|index\(3));

-- Location: FF_X109_Y14_N11
\mymidi|index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|index[4]~18_combout\,
	sclr => \mymidi|always0~4_combout\,
	ena => \mymidi|index[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|index\(4));

-- Location: LCCOMB_X108_Y14_N14
\mymidi|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|LessThan2~0_combout\ = (\mymidi|index\(4)) # ((\mymidi|index\(3)) # ((\mymidi|index\(6)) # (\mymidi|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(4),
	datab => \mymidi|index\(3),
	datac => \mymidi|index\(6),
	datad => \mymidi|index\(5),
	combout => \mymidi|LessThan2~0_combout\);

-- Location: LCCOMB_X108_Y14_N30
\mymidi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|LessThan2~1_combout\ = (\mymidi|LessThan2~0_combout\) # (\mymidi|index\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|LessThan2~0_combout\,
	datad => \mymidi|index\(7),
	combout => \mymidi|LessThan2~1_combout\);

-- Location: LCCOMB_X108_Y14_N18
\mymidi|always0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|always0~3_combout\ = (\mymidi|always0~2_combout\ & \mymidi|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|always0~2_combout\,
	datac => \mymidi|state\(0),
	combout => \mymidi|always0~3_combout\);

-- Location: LCCOMB_X108_Y14_N8
\mymidi|state[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|state[1]~1_combout\ = (\mymidi|always0~3_combout\ & (!\mymidi|LessThan2~1_combout\)) # (!\mymidi|always0~3_combout\ & (((\mymidi|state\(1) & \mymidi|state[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|LessThan2~1_combout\,
	datab => \mymidi|always0~3_combout\,
	datac => \mymidi|state\(1),
	datad => \mymidi|state[1]~0_combout\,
	combout => \mymidi|state[1]~1_combout\);

-- Location: FF_X108_Y14_N9
\mymidi|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|state[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|state\(1));

-- Location: LCCOMB_X108_Y14_N12
\mymidi|state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|state[1]~0_combout\ = (\mymidi|byte_count[1]~0_combout\ & ((\mymidi|state\(0)) # ((\mymidi|state\(1)) # (\EX_IO[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|state\(0),
	datab => \mymidi|state\(1),
	datac => \EX_IO[6]~input_o\,
	datad => \mymidi|byte_count[1]~0_combout\,
	combout => \mymidi|state[1]~0_combout\);

-- Location: LCCOMB_X108_Y14_N16
\mymidi|state[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|state[0]~2_combout\ = (!\mymidi|state\(0) & (!\EX_IO[6]~input_o\ & (!\mymidi|LessThan2~1_combout\ & !\mymidi|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|state\(0),
	datab => \EX_IO[6]~input_o\,
	datac => \mymidi|LessThan2~1_combout\,
	datad => \mymidi|state\(1),
	combout => \mymidi|state[0]~2_combout\);

-- Location: LCCOMB_X108_Y14_N26
\mymidi|state[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|state[0]~3_combout\ = (\mymidi|state[0]~2_combout\) # ((\mymidi|state[1]~0_combout\ & (!\mymidi|always0~2_combout\ & \mymidi|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|state[1]~0_combout\,
	datab => \mymidi|always0~2_combout\,
	datac => \mymidi|state\(0),
	datad => \mymidi|state[0]~2_combout\,
	combout => \mymidi|state[0]~3_combout\);

-- Location: FF_X108_Y14_N27
\mymidi|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|state[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|state\(0));

-- Location: LCCOMB_X108_Y14_N6
\mymidi|always0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|always0~4_combout\ = (\mymidi|state\(0)) # ((!\mymidi|LessThan3~3_combout\) # (!\mymidi|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|state\(0),
	datac => \mymidi|state\(1),
	datad => \mymidi|LessThan3~3_combout\,
	combout => \mymidi|always0~4_combout\);

-- Location: FF_X109_Y14_N3
\mymidi|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|index[0]~10_combout\,
	sclr => \mymidi|always0~4_combout\,
	ena => \mymidi|index[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|index\(0));

-- Location: LCCOMB_X109_Y14_N0
\mymidi|byte_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|byte_count~2_combout\ = (!\mymidi|byte_count\(0) & ((\mymidi|index\(7)) # (\mymidi|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|index\(7),
	datac => \mymidi|byte_count\(0),
	datad => \mymidi|LessThan2~0_combout\,
	combout => \mymidi|byte_count~2_combout\);

-- Location: FF_X109_Y14_N1
\mymidi|byte_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|byte_count~2_combout\,
	ena => \mymidi|ALT_INV_byte_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|byte_count\(0));

-- Location: LCCOMB_X108_Y14_N28
\mymidi|byte_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|byte_count~1_combout\ = (\mymidi|LessThan2~0_combout\ & (\mymidi|byte_count\(0) $ ((\mymidi|byte_count\(1))))) # (!\mymidi|LessThan2~0_combout\ & (\mymidi|index\(7) & (\mymidi|byte_count\(0) $ (\mymidi|byte_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|byte_count\(0),
	datab => \mymidi|LessThan2~0_combout\,
	datac => \mymidi|byte_count\(1),
	datad => \mymidi|index\(7),
	combout => \mymidi|byte_count~1_combout\);

-- Location: FF_X108_Y14_N29
\mymidi|byte_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|byte_count~1_combout\,
	ena => \mymidi|ALT_INV_byte_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|byte_count\(1));

-- Location: LCCOMB_X109_Y14_N18
\mymidi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add2~0_combout\ = (\mymidi|index\(3) & (\mymidi|byte_count\(0) $ (VCC))) # (!\mymidi|index\(3) & (\mymidi|byte_count\(0) & VCC))
-- \mymidi|Add2~1\ = CARRY((\mymidi|index\(3) & \mymidi|byte_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(3),
	datab => \mymidi|byte_count\(0),
	datad => VCC,
	combout => \mymidi|Add2~0_combout\,
	cout => \mymidi|Add2~1\);

-- Location: LCCOMB_X109_Y14_N20
\mymidi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add2~2_combout\ = (\mymidi|index\(4) & ((\mymidi|byte_count\(1) & (\mymidi|Add2~1\ & VCC)) # (!\mymidi|byte_count\(1) & (!\mymidi|Add2~1\)))) # (!\mymidi|index\(4) & ((\mymidi|byte_count\(1) & (!\mymidi|Add2~1\)) # (!\mymidi|byte_count\(1) & 
-- ((\mymidi|Add2~1\) # (GND)))))
-- \mymidi|Add2~3\ = CARRY((\mymidi|index\(4) & (!\mymidi|byte_count\(1) & !\mymidi|Add2~1\)) # (!\mymidi|index\(4) & ((!\mymidi|Add2~1\) # (!\mymidi|byte_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(4),
	datab => \mymidi|byte_count\(1),
	datad => VCC,
	cin => \mymidi|Add2~1\,
	combout => \mymidi|Add2~2_combout\,
	cout => \mymidi|Add2~3\);

-- Location: LCCOMB_X109_Y14_N22
\mymidi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add2~4_combout\ = (\mymidi|index\(5) & (\mymidi|Add2~3\ $ (GND))) # (!\mymidi|index\(5) & (!\mymidi|Add2~3\ & VCC))
-- \mymidi|Add2~5\ = CARRY((\mymidi|index\(5) & !\mymidi|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(5),
	datad => VCC,
	cin => \mymidi|Add2~3\,
	combout => \mymidi|Add2~4_combout\,
	cout => \mymidi|Add2~5\);

-- Location: LCCOMB_X109_Y14_N24
\mymidi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add2~6_combout\ = (\mymidi|index\(6) & (!\mymidi|Add2~5\)) # (!\mymidi|index\(6) & ((\mymidi|Add2~5\) # (GND)))
-- \mymidi|Add2~7\ = CARRY((!\mymidi|Add2~5\) # (!\mymidi|index\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|index\(6),
	datad => VCC,
	cin => \mymidi|Add2~5\,
	combout => \mymidi|Add2~6_combout\,
	cout => \mymidi|Add2~7\);

-- Location: LCCOMB_X109_Y14_N26
\mymidi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add2~8_combout\ = (\mymidi|index\(7) & (\mymidi|Add2~7\ $ (GND))) # (!\mymidi|index\(7) & (!\mymidi|Add2~7\ & VCC))
-- \mymidi|Add2~9\ = CARRY((\mymidi|index\(7) & !\mymidi|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mymidi|index\(7),
	datad => VCC,
	cin => \mymidi|Add2~7\,
	combout => \mymidi|Add2~8_combout\,
	cout => \mymidi|Add2~9\);

-- Location: LCCOMB_X109_Y14_N28
\mymidi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|Add2~10_combout\ = \mymidi|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \mymidi|Add2~9\,
	combout => \mymidi|Add2~10_combout\);

-- Location: LCCOMB_X109_Y14_N30
\mymidi|out_bytes~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~0_combout\ = (!\mymidi|Add2~4_combout\ & (!\mymidi|Add2~10_combout\ & (!\mymidi|Add2~8_combout\ & !\mymidi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|Add2~4_combout\,
	datab => \mymidi|Add2~10_combout\,
	datac => \mymidi|Add2~8_combout\,
	datad => \mymidi|Add2~6_combout\,
	combout => \mymidi|out_bytes~0_combout\);

-- Location: LCCOMB_X110_Y14_N12
\mymidi|out_bytes~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~17_combout\ = (\mymidi|state\(1) & (!\mymidi|Add2~2_combout\ & (\mymidi|LessThan3~3_combout\ & \mymidi|out_bytes~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|state\(1),
	datab => \mymidi|Add2~2_combout\,
	datac => \mymidi|LessThan3~3_combout\,
	datad => \mymidi|out_bytes~0_combout\,
	combout => \mymidi|out_bytes~17_combout\);

-- Location: LCCOMB_X110_Y14_N6
\mymidi|out_bytes~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~18_combout\ = (!\mymidi|state\(0) & (!\mymidi|Add2~2_combout\ & (\mymidi|Add2~0_combout\ & \mymidi|out_bytes~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|state\(0),
	datab => \mymidi|Add2~2_combout\,
	datac => \mymidi|Add2~0_combout\,
	datad => \mymidi|out_bytes~17_combout\,
	combout => \mymidi|out_bytes~18_combout\);

-- Location: LCCOMB_X110_Y14_N10
\mymidi|out_bytes~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~11_combout\ = (\mymidi|index\(0) & (!\mymidi|index\(2) & (\mymidi|index\(1) & \mymidi|out_bytes~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(0),
	datab => \mymidi|index\(2),
	datac => \mymidi|index\(1),
	datad => \mymidi|out_bytes~18_combout\,
	combout => \mymidi|out_bytes~11_combout\);

-- Location: LCCOMB_X111_Y14_N22
\mymidi|out_bytes~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~12_combout\ = (\mymidi|out_bytes~11_combout\ & (((\EX_IO[6]~input_o\)))) # (!\mymidi|out_bytes~11_combout\ & (\KEY~input_o\ & (\mymidi|out_bytes\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~input_o\,
	datab => \mymidi|out_bytes~11_combout\,
	datac => \mymidi|out_bytes\(11),
	datad => \EX_IO[6]~input_o\,
	combout => \mymidi|out_bytes~12_combout\);

-- Location: FF_X111_Y14_N23
\mymidi|out_bytes[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mymidi|out_bytes~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|out_bytes\(11));

-- Location: LCCOMB_X110_Y14_N18
\mymidi|out_bytes~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~7_combout\ = (\mymidi|index\(0) & (!\mymidi|index\(1) & (!\mymidi|index\(2) & \mymidi|out_bytes~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(0),
	datab => \mymidi|index\(1),
	datac => \mymidi|index\(2),
	datad => \mymidi|out_bytes~18_combout\,
	combout => \mymidi|out_bytes~7_combout\);

-- Location: LCCOMB_X111_Y14_N4
\mymidi|out_bytes~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~8_combout\ = (\mymidi|out_bytes~7_combout\ & (((\EX_IO[6]~input_o\)))) # (!\mymidi|out_bytes~7_combout\ & (\KEY~input_o\ & (\mymidi|out_bytes\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes~7_combout\,
	datab => \KEY~input_o\,
	datac => \mymidi|out_bytes\(9),
	datad => \EX_IO[6]~input_o\,
	combout => \mymidi|out_bytes~8_combout\);

-- Location: FF_X111_Y14_N5
\mymidi|out_bytes[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mymidi|out_bytes~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|out_bytes\(9));

-- Location: LCCOMB_X110_Y14_N28
\mymidi|out_bytes~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~9_combout\ = (!\mymidi|index\(0) & (!\mymidi|index\(2) & (\mymidi|index\(1) & \mymidi|out_bytes~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(0),
	datab => \mymidi|index\(2),
	datac => \mymidi|index\(1),
	datad => \mymidi|out_bytes~18_combout\,
	combout => \mymidi|out_bytes~9_combout\);

-- Location: LCCOMB_X111_Y14_N8
\mymidi|out_bytes~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~10_combout\ = (\mymidi|out_bytes~9_combout\ & (\EX_IO[6]~input_o\)) # (!\mymidi|out_bytes~9_combout\ & (((\mymidi|out_bytes\(10) & \KEY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_IO[6]~input_o\,
	datab => \mymidi|out_bytes\(10),
	datac => \KEY~input_o\,
	datad => \mymidi|out_bytes~9_combout\,
	combout => \mymidi|out_bytes~10_combout\);

-- Location: FF_X111_Y14_N27
\mymidi|out_bytes[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mymidi|out_bytes~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|out_bytes\(10));

-- Location: LCCOMB_X110_Y14_N22
\mymidi|out_bytes~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~3_combout\ = (!\mymidi|index\(0) & (\mymidi|index\(2) & (!\mymidi|index\(1) & \mymidi|out_bytes~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(0),
	datab => \mymidi|index\(2),
	datac => \mymidi|index\(1),
	datad => \mymidi|out_bytes~18_combout\,
	combout => \mymidi|out_bytes~3_combout\);

-- Location: LCCOMB_X111_Y14_N6
\mymidi|out_bytes~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~4_combout\ = (\mymidi|out_bytes~3_combout\ & (\EX_IO[6]~input_o\)) # (!\mymidi|out_bytes~3_combout\ & (((\mymidi|out_bytes\(12) & \KEY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_IO[6]~input_o\,
	datab => \mymidi|out_bytes~3_combout\,
	datac => \mymidi|out_bytes\(12),
	datad => \KEY~input_o\,
	combout => \mymidi|out_bytes~4_combout\);

-- Location: FF_X111_Y14_N7
\mymidi|out_bytes[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mymidi|out_bytes~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|out_bytes\(12));

-- Location: LCCOMB_X111_Y14_N26
\get_freq|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr1~0_combout\ = (!\mymidi|out_bytes\(12) & ((\mymidi|out_bytes\(11) & ((!\mymidi|out_bytes\(10)) # (!\mymidi|out_bytes\(9)))) # (!\mymidi|out_bytes\(11) & ((\mymidi|out_bytes\(9)) # (\mymidi|out_bytes\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(11),
	datab => \mymidi|out_bytes\(9),
	datac => \mymidi|out_bytes\(10),
	datad => \mymidi|out_bytes\(12),
	combout => \get_freq|WideOr1~0_combout\);

-- Location: LCCOMB_X110_Y14_N16
\mymidi|out_bytes~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~1_combout\ = (!\mymidi|index\(0) & (\mymidi|index\(1) & (\mymidi|index\(2) & \mymidi|out_bytes~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(0),
	datab => \mymidi|index\(1),
	datac => \mymidi|index\(2),
	datad => \mymidi|out_bytes~18_combout\,
	combout => \mymidi|out_bytes~1_combout\);

-- Location: LCCOMB_X111_Y14_N14
\mymidi|out_bytes~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~2_combout\ = (\mymidi|out_bytes~1_combout\ & (\EX_IO[6]~input_o\)) # (!\mymidi|out_bytes~1_combout\ & (((\mymidi|out_bytes\(14) & \KEY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_IO[6]~input_o\,
	datab => \mymidi|out_bytes~1_combout\,
	datac => \mymidi|out_bytes\(14),
	datad => \KEY~input_o\,
	combout => \mymidi|out_bytes~2_combout\);

-- Location: FF_X111_Y14_N15
\mymidi|out_bytes[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mymidi|out_bytes~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|out_bytes\(14));

-- Location: LCCOMB_X110_Y14_N2
\mymidi|out_bytes~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~15_combout\ = (\mymidi|index\(0) & (\mymidi|index\(2) & (\mymidi|index\(1) & \mymidi|out_bytes~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(0),
	datab => \mymidi|index\(2),
	datac => \mymidi|index\(1),
	datad => \mymidi|out_bytes~18_combout\,
	combout => \mymidi|out_bytes~15_combout\);

-- Location: LCCOMB_X111_Y14_N30
\mymidi|out_bytes~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~16_combout\ = (\mymidi|out_bytes~15_combout\ & (((\EX_IO[6]~input_o\)))) # (!\mymidi|out_bytes~15_combout\ & (\KEY~input_o\ & (\mymidi|out_bytes\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes~15_combout\,
	datab => \KEY~input_o\,
	datac => \mymidi|out_bytes\(15),
	datad => \EX_IO[6]~input_o\,
	combout => \mymidi|out_bytes~16_combout\);

-- Location: FF_X111_Y14_N31
\mymidi|out_bytes[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mymidi|out_bytes~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|out_bytes\(15));

-- Location: LCCOMB_X110_Y14_N4
\mymidi|out_bytes~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~13_combout\ = (\mymidi|index\(0) & (\mymidi|index\(2) & (!\mymidi|index\(1) & \mymidi|out_bytes~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(0),
	datab => \mymidi|index\(2),
	datac => \mymidi|index\(1),
	datad => \mymidi|out_bytes~18_combout\,
	combout => \mymidi|out_bytes~13_combout\);

-- Location: LCCOMB_X111_Y14_N0
\mymidi|out_bytes~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~14_combout\ = (\mymidi|out_bytes~13_combout\ & (\EX_IO[6]~input_o\)) # (!\mymidi|out_bytes~13_combout\ & (((\mymidi|out_bytes\(13) & \KEY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_IO[6]~input_o\,
	datab => \mymidi|out_bytes~13_combout\,
	datac => \mymidi|out_bytes\(13),
	datad => \KEY~input_o\,
	combout => \mymidi|out_bytes~14_combout\);

-- Location: FF_X111_Y14_N1
\mymidi|out_bytes[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mymidi|out_bytes~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|out_bytes\(13));

-- Location: LCCOMB_X111_Y14_N20
\get_freq|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr1~1_combout\ = (\get_freq|WideOr1~0_combout\ & (\mymidi|out_bytes\(14) & (!\mymidi|out_bytes\(15) & !\mymidi|out_bytes\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|WideOr1~0_combout\,
	datab => \mymidi|out_bytes\(14),
	datac => \mymidi|out_bytes\(15),
	datad => \mymidi|out_bytes\(13),
	combout => \get_freq|WideOr1~1_combout\);

-- Location: CLKCTRL_G7
\get_freq|WideOr1~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \get_freq|WideOr1~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \get_freq|WideOr1~1clkctrl_outclk\);

-- Location: LCCOMB_X114_Y14_N26
\get_freq|WideOr17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr17~1_combout\ = (!\mymidi|out_bytes\(13) & !\mymidi|out_bytes\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|out_bytes\(13),
	datad => \mymidi|out_bytes\(15),
	combout => \get_freq|WideOr17~1_combout\);

-- Location: LCCOMB_X110_Y14_N20
\mymidi|out_bytes~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~5_combout\ = (!\mymidi|index\(0) & (!\mymidi|index\(1) & (!\mymidi|index\(2) & \mymidi|out_bytes~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|index\(0),
	datab => \mymidi|index\(1),
	datac => \mymidi|index\(2),
	datad => \mymidi|out_bytes~18_combout\,
	combout => \mymidi|out_bytes~5_combout\);

-- Location: LCCOMB_X110_Y14_N14
\mymidi|out_bytes~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mymidi|out_bytes~6_combout\ = (\mymidi|out_bytes~5_combout\ & (((\EX_IO[6]~input_o\)))) # (!\mymidi|out_bytes~5_combout\ & (\KEY~input_o\ & ((\mymidi|out_bytes\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~input_o\,
	datab => \EX_IO[6]~input_o\,
	datac => \mymidi|out_bytes\(8),
	datad => \mymidi|out_bytes~5_combout\,
	combout => \mymidi|out_bytes~6_combout\);

-- Location: FF_X110_Y14_N15
\mymidi|out_bytes[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mymidi|out_bytes~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mymidi|out_bytes\(8));

-- Location: LCCOMB_X113_Y14_N18
\get_freq|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr17~0_combout\ = (\mymidi|out_bytes\(10) & (((\mymidi|out_bytes\(8) & !\mymidi|out_bytes\(11))))) # (!\mymidi|out_bytes\(10) & (\mymidi|out_bytes\(9) & (\mymidi|out_bytes\(8) $ (\mymidi|out_bytes\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(9),
	datab => \mymidi|out_bytes\(10),
	datac => \mymidi|out_bytes\(8),
	datad => \mymidi|out_bytes\(11),
	combout => \get_freq|WideOr17~0_combout\);

-- Location: LCCOMB_X114_Y14_N16
\get_freq|WideOr17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr17~2_combout\ = (\mymidi|out_bytes\(14) & (!\mymidi|out_bytes\(12) & (\get_freq|WideOr17~1_combout\ & \get_freq|WideOr17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(14),
	datab => \mymidi|out_bytes\(12),
	datac => \get_freq|WideOr17~1_combout\,
	datad => \get_freq|WideOr17~0_combout\,
	combout => \get_freq|WideOr17~2_combout\);

-- Location: LCCOMB_X114_Y14_N8
\get_freq|freq[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|freq\(0) = (GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & ((\get_freq|WideOr17~2_combout\))) # (!GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & (\get_freq|freq\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \get_freq|freq\(0),
	datac => \get_freq|WideOr1~1clkctrl_outclk\,
	datad => \get_freq|WideOr17~2_combout\,
	combout => \get_freq|freq\(0));

-- Location: LCCOMB_X111_Y14_N2
\get_freq|WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr15~0_combout\ = ((\mymidi|out_bytes\(11) & (\mymidi|out_bytes\(10))) # (!\mymidi|out_bytes\(11) & ((!\mymidi|out_bytes\(9))))) # (!\mymidi|out_bytes\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(10),
	datac => \mymidi|out_bytes\(9),
	datad => \mymidi|out_bytes\(11),
	combout => \get_freq|WideOr15~0_combout\);

-- Location: LCCOMB_X114_Y14_N18
\get_freq|WideOr15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr15~1_combout\ = (\mymidi|out_bytes\(13)) # (\mymidi|out_bytes\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mymidi|out_bytes\(13),
	datad => \mymidi|out_bytes\(15),
	combout => \get_freq|WideOr15~1_combout\);

-- Location: LCCOMB_X114_Y14_N4
\get_freq|WideOr15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr15~2_combout\ = ((\mymidi|out_bytes\(12)) # ((\get_freq|WideOr15~0_combout\) # (\get_freq|WideOr15~1_combout\))) # (!\mymidi|out_bytes\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(14),
	datab => \mymidi|out_bytes\(12),
	datac => \get_freq|WideOr15~0_combout\,
	datad => \get_freq|WideOr15~1_combout\,
	combout => \get_freq|WideOr15~2_combout\);

-- Location: LCCOMB_X114_Y14_N14
\get_freq|freq[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|freq\(1) = (GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & ((\get_freq|WideOr15~2_combout\))) # (!GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & (\get_freq|freq\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \get_freq|freq\(1),
	datac => \get_freq|WideOr15~2_combout\,
	datad => \get_freq|WideOr1~1clkctrl_outclk\,
	combout => \get_freq|freq\(1));

-- Location: LCCOMB_X111_Y14_N10
\get_freq|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr13~0_combout\ = (\mymidi|out_bytes\(8) & ((\mymidi|out_bytes\(10)) # ((!\mymidi|out_bytes\(11))))) # (!\mymidi|out_bytes\(8) & ((\mymidi|out_bytes\(11) & ((\mymidi|out_bytes\(9)))) # (!\mymidi|out_bytes\(11) & ((!\mymidi|out_bytes\(9)) # 
-- (!\mymidi|out_bytes\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(10),
	datac => \mymidi|out_bytes\(11),
	datad => \mymidi|out_bytes\(9),
	combout => \get_freq|WideOr13~0_combout\);

-- Location: LCCOMB_X114_Y14_N22
\get_freq|WideOr13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr13~1_combout\ = ((\mymidi|out_bytes\(12)) # ((\get_freq|WideOr13~0_combout\) # (\get_freq|WideOr15~1_combout\))) # (!\mymidi|out_bytes\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(14),
	datab => \mymidi|out_bytes\(12),
	datac => \get_freq|WideOr13~0_combout\,
	datad => \get_freq|WideOr15~1_combout\,
	combout => \get_freq|WideOr13~1_combout\);

-- Location: LCCOMB_X114_Y14_N20
\get_freq|freq[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|freq\(2) = (GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & ((\get_freq|WideOr13~1_combout\))) # (!GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & (\get_freq|freq\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \get_freq|freq\(2),
	datac => \get_freq|WideOr13~1_combout\,
	datad => \get_freq|WideOr1~1clkctrl_outclk\,
	combout => \get_freq|freq\(2));

-- Location: LCCOMB_X111_Y14_N16
\get_freq|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr11~0_combout\ = (\mymidi|out_bytes\(11) & (!\mymidi|out_bytes\(8) & ((!\mymidi|out_bytes\(9))))) # (!\mymidi|out_bytes\(11) & ((\mymidi|out_bytes\(10) $ (\mymidi|out_bytes\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(10),
	datac => \mymidi|out_bytes\(9),
	datad => \mymidi|out_bytes\(11),
	combout => \get_freq|WideOr11~0_combout\);

-- Location: LCCOMB_X112_Y14_N10
\get_freq|WideOr17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr17~3_combout\ = (\mymidi|out_bytes\(14) & (!\mymidi|out_bytes\(12) & (!\mymidi|out_bytes\(13) & !\mymidi|out_bytes\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(14),
	datab => \mymidi|out_bytes\(12),
	datac => \mymidi|out_bytes\(13),
	datad => \mymidi|out_bytes\(15),
	combout => \get_freq|WideOr17~3_combout\);

-- Location: LCCOMB_X112_Y14_N14
\get_freq|WideOr11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr11~1_combout\ = (!\get_freq|WideOr17~3_combout\) # (!\get_freq|WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|WideOr11~0_combout\,
	datad => \get_freq|WideOr17~3_combout\,
	combout => \get_freq|WideOr11~1_combout\);

-- Location: LCCOMB_X114_Y14_N30
\get_freq|freq[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|freq\(3) = (GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & ((\get_freq|WideOr11~1_combout\))) # (!GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & (\get_freq|freq\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(3),
	datac => \get_freq|WideOr1~1clkctrl_outclk\,
	datad => \get_freq|WideOr11~1_combout\,
	combout => \get_freq|freq\(3));

-- Location: LCCOMB_X112_Y14_N0
\get_freq|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr9~0_combout\ = (\mymidi|out_bytes\(8) & ((\mymidi|out_bytes\(10) & ((!\mymidi|out_bytes\(11)))) # (!\mymidi|out_bytes\(10) & (\mymidi|out_bytes\(9))))) # (!\mymidi|out_bytes\(8) & (\mymidi|out_bytes\(11) & ((!\mymidi|out_bytes\(9)) # 
-- (!\mymidi|out_bytes\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(10),
	datac => \mymidi|out_bytes\(9),
	datad => \mymidi|out_bytes\(11),
	combout => \get_freq|WideOr9~0_combout\);

-- Location: LCCOMB_X113_Y14_N26
\get_freq|WideOr9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr9~1_combout\ = (\get_freq|WideOr9~0_combout\ & \get_freq|WideOr17~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|WideOr9~0_combout\,
	datad => \get_freq|WideOr17~3_combout\,
	combout => \get_freq|WideOr9~1_combout\);

-- Location: LCCOMB_X113_Y14_N30
\get_freq|freq[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|freq\(4) = (GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & ((\get_freq|WideOr9~1_combout\))) # (!GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & (\get_freq|freq\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(4),
	datac => \get_freq|WideOr9~1_combout\,
	datad => \get_freq|WideOr1~1clkctrl_outclk\,
	combout => \get_freq|freq\(4));

-- Location: LCCOMB_X112_Y14_N26
\get_freq|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr7~0_combout\ = (\mymidi|out_bytes\(9) & (((!\mymidi|out_bytes\(8) & !\mymidi|out_bytes\(10))) # (!\mymidi|out_bytes\(11)))) # (!\mymidi|out_bytes\(9) & (\mymidi|out_bytes\(11) & (\mymidi|out_bytes\(8) $ (\mymidi|out_bytes\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(10),
	datac => \mymidi|out_bytes\(9),
	datad => \mymidi|out_bytes\(11),
	combout => \get_freq|WideOr7~0_combout\);

-- Location: LCCOMB_X113_Y14_N28
\get_freq|WideOr7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr7~1_combout\ = (!\get_freq|WideOr17~3_combout\) # (!\get_freq|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \get_freq|WideOr7~0_combout\,
	datad => \get_freq|WideOr17~3_combout\,
	combout => \get_freq|WideOr7~1_combout\);

-- Location: LCCOMB_X113_Y14_N4
\get_freq|freq[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|freq\(5) = (GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & ((\get_freq|WideOr7~1_combout\))) # (!GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & (\get_freq|freq\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|WideOr1~1clkctrl_outclk\,
	datab => \get_freq|freq\(5),
	datad => \get_freq|WideOr7~1_combout\,
	combout => \get_freq|freq\(5));

-- Location: LCCOMB_X112_Y14_N24
\get_freq|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr5~0_combout\ = (\mymidi|out_bytes\(10) & (((\mymidi|out_bytes\(9)) # (\mymidi|out_bytes\(11))))) # (!\mymidi|out_bytes\(10) & (!\mymidi|out_bytes\(9) & ((!\mymidi|out_bytes\(11)) # (!\mymidi|out_bytes\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(10),
	datac => \mymidi|out_bytes\(9),
	datad => \mymidi|out_bytes\(11),
	combout => \get_freq|WideOr5~0_combout\);

-- Location: LCCOMB_X113_Y14_N6
\get_freq|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr5~1_combout\ = (\mymidi|out_bytes\(12)) # (((\get_freq|WideOr5~0_combout\) # (\get_freq|WideOr15~1_combout\)) # (!\mymidi|out_bytes\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(12),
	datab => \mymidi|out_bytes\(14),
	datac => \get_freq|WideOr5~0_combout\,
	datad => \get_freq|WideOr15~1_combout\,
	combout => \get_freq|WideOr5~1_combout\);

-- Location: LCCOMB_X113_Y14_N24
\get_freq|freq[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|freq\(6) = (GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & ((\get_freq|WideOr5~1_combout\))) # (!GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & (\get_freq|freq\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \get_freq|freq\(6),
	datac => \get_freq|WideOr1~1clkctrl_outclk\,
	datad => \get_freq|WideOr5~1_combout\,
	combout => \get_freq|freq\(6));

-- Location: LCCOMB_X112_Y14_N2
\get_freq|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr3~0_combout\ = (\mymidi|out_bytes\(10) & (((!\mymidi|out_bytes\(11))))) # (!\mymidi|out_bytes\(10) & ((\mymidi|out_bytes\(9) & ((!\mymidi|out_bytes\(11)))) # (!\mymidi|out_bytes\(9) & (!\mymidi|out_bytes\(8) & \mymidi|out_bytes\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(10),
	datac => \mymidi|out_bytes\(9),
	datad => \mymidi|out_bytes\(11),
	combout => \get_freq|WideOr3~0_combout\);

-- Location: LCCOMB_X113_Y14_N8
\get_freq|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|WideOr3~1_combout\ = (!\get_freq|WideOr17~3_combout\) # (!\get_freq|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \get_freq|WideOr3~0_combout\,
	datad => \get_freq|WideOr17~3_combout\,
	combout => \get_freq|WideOr3~1_combout\);

-- Location: LCCOMB_X113_Y14_N14
\get_freq|freq[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \get_freq|freq\(7) = (GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & ((\get_freq|WideOr3~1_combout\))) # (!GLOBAL(\get_freq|WideOr1~1clkctrl_outclk\) & (\get_freq|freq\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \get_freq|freq\(7),
	datac => \get_freq|WideOr3~1_combout\,
	datad => \get_freq|WideOr1~1clkctrl_outclk\,
	combout => \get_freq|freq\(7));

-- Location: LCCOMB_X114_Y14_N28
\u_7seg_1|u_lcd_lower|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_lower|WideOr6~0_combout\ = (\get_freq|freq\(0) & (!\get_freq|freq\(3) & (\get_freq|freq\(1) $ (!\get_freq|freq\(2))))) # (!\get_freq|freq\(0) & (!\get_freq|freq\(1) & (\get_freq|freq\(3) $ (!\get_freq|freq\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(3),
	datab => \get_freq|freq\(0),
	datac => \get_freq|freq\(1),
	datad => \get_freq|freq\(2),
	combout => \u_7seg_1|u_lcd_lower|WideOr6~0_combout\);

-- Location: FF_X114_Y14_N29
\u_7seg_1|u_lcd_lower|o_segments[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_lower|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_lower|o_segments\(6));

-- Location: LCCOMB_X114_Y14_N10
\u_7seg_1|u_lcd_lower|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_lower|WideOr5~0_combout\ = (\get_freq|freq\(1) & (!\get_freq|freq\(3) & ((\get_freq|freq\(0)) # (!\get_freq|freq\(2))))) # (!\get_freq|freq\(1) & (\get_freq|freq\(0) & (\get_freq|freq\(3) $ (!\get_freq|freq\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(3),
	datab => \get_freq|freq\(1),
	datac => \get_freq|freq\(0),
	datad => \get_freq|freq\(2),
	combout => \u_7seg_1|u_lcd_lower|WideOr5~0_combout\);

-- Location: FF_X114_Y14_N11
\u_7seg_1|u_lcd_lower|o_segments[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_lower|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_lower|o_segments\(5));

-- Location: LCCOMB_X114_Y14_N24
\u_7seg_1|u_lcd_lower|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_lower|WideOr4~0_combout\ = (\get_freq|freq\(1) & (!\get_freq|freq\(3) & (\get_freq|freq\(0)))) # (!\get_freq|freq\(1) & ((\get_freq|freq\(2) & (!\get_freq|freq\(3))) # (!\get_freq|freq\(2) & ((\get_freq|freq\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(3),
	datab => \get_freq|freq\(1),
	datac => \get_freq|freq\(0),
	datad => \get_freq|freq\(2),
	combout => \u_7seg_1|u_lcd_lower|WideOr4~0_combout\);

-- Location: FF_X114_Y14_N25
\u_7seg_1|u_lcd_lower|o_segments[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_lower|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_lower|o_segments\(4));

-- Location: LCCOMB_X114_Y14_N2
\u_7seg_1|u_lcd_lower|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_lower|WideOr3~0_combout\ = (\get_freq|freq\(1) & ((\get_freq|freq\(0) & ((\get_freq|freq\(2)))) # (!\get_freq|freq\(0) & (\get_freq|freq\(3) & !\get_freq|freq\(2))))) # (!\get_freq|freq\(1) & (!\get_freq|freq\(3) & (\get_freq|freq\(0) $ 
-- (\get_freq|freq\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(3),
	datab => \get_freq|freq\(0),
	datac => \get_freq|freq\(1),
	datad => \get_freq|freq\(2),
	combout => \u_7seg_1|u_lcd_lower|WideOr3~0_combout\);

-- Location: FF_X114_Y14_N3
\u_7seg_1|u_lcd_lower|o_segments[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_lower|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_lower|o_segments\(3));

-- Location: LCCOMB_X114_Y14_N0
\u_7seg_1|u_lcd_lower|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_lower|WideOr2~0_combout\ = (\get_freq|freq\(3) & (\get_freq|freq\(2) & ((\get_freq|freq\(1)) # (!\get_freq|freq\(0))))) # (!\get_freq|freq\(3) & (\get_freq|freq\(1) & (!\get_freq|freq\(0) & !\get_freq|freq\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(3),
	datab => \get_freq|freq\(1),
	datac => \get_freq|freq\(0),
	datad => \get_freq|freq\(2),
	combout => \u_7seg_1|u_lcd_lower|WideOr2~0_combout\);

-- Location: FF_X114_Y14_N1
\u_7seg_1|u_lcd_lower|o_segments[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_lower|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_lower|o_segments\(2));

-- Location: LCCOMB_X114_Y14_N6
\u_7seg_1|u_lcd_lower|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_lower|WideOr1~0_combout\ = (\get_freq|freq\(3) & ((\get_freq|freq\(0) & (\get_freq|freq\(1))) # (!\get_freq|freq\(0) & ((\get_freq|freq\(2)))))) # (!\get_freq|freq\(3) & (\get_freq|freq\(2) & (\get_freq|freq\(0) $ (\get_freq|freq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(3),
	datab => \get_freq|freq\(0),
	datac => \get_freq|freq\(1),
	datad => \get_freq|freq\(2),
	combout => \u_7seg_1|u_lcd_lower|WideOr1~0_combout\);

-- Location: FF_X114_Y14_N7
\u_7seg_1|u_lcd_lower|o_segments[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_lower|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_lower|o_segments\(1));

-- Location: LCCOMB_X114_Y14_N12
\u_7seg_1|u_lcd_lower|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_lower|WideOr0~0_combout\ = (\get_freq|freq\(3) & (\get_freq|freq\(0) & (\get_freq|freq\(1) $ (\get_freq|freq\(2))))) # (!\get_freq|freq\(3) & (!\get_freq|freq\(1) & (\get_freq|freq\(0) $ (\get_freq|freq\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(3),
	datab => \get_freq|freq\(0),
	datac => \get_freq|freq\(1),
	datad => \get_freq|freq\(2),
	combout => \u_7seg_1|u_lcd_lower|WideOr0~0_combout\);

-- Location: FF_X114_Y14_N13
\u_7seg_1|u_lcd_lower|o_segments[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_lower|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_lower|o_segments\(0));

-- Location: LCCOMB_X113_Y14_N12
\u_7seg_1|u_lcd_upper|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_upper|WideOr6~0_combout\ = (\get_freq|freq\(4) & (!\get_freq|freq\(7) & (\get_freq|freq\(5) $ (!\get_freq|freq\(6))))) # (!\get_freq|freq\(4) & (!\get_freq|freq\(5) & (\get_freq|freq\(7) $ (!\get_freq|freq\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(4),
	datab => \get_freq|freq\(7),
	datac => \get_freq|freq\(5),
	datad => \get_freq|freq\(6),
	combout => \u_7seg_1|u_lcd_upper|WideOr6~0_combout\);

-- Location: FF_X113_Y14_N13
\u_7seg_1|u_lcd_upper|o_segments[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_upper|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_upper|o_segments\(6));

-- Location: LCCOMB_X113_Y14_N10
\u_7seg_1|u_lcd_upper|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_upper|WideOr5~0_combout\ = (\get_freq|freq\(4) & (\get_freq|freq\(7) $ (((\get_freq|freq\(5)) # (!\get_freq|freq\(6)))))) # (!\get_freq|freq\(4) & (!\get_freq|freq\(7) & (\get_freq|freq\(5) & !\get_freq|freq\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(4),
	datab => \get_freq|freq\(7),
	datac => \get_freq|freq\(5),
	datad => \get_freq|freq\(6),
	combout => \u_7seg_1|u_lcd_upper|WideOr5~0_combout\);

-- Location: FF_X113_Y14_N11
\u_7seg_1|u_lcd_upper|o_segments[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_upper|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_upper|o_segments\(5));

-- Location: LCCOMB_X113_Y14_N0
\u_7seg_1|u_lcd_upper|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_upper|WideOr4~0_combout\ = (\get_freq|freq\(5) & (\get_freq|freq\(4) & (!\get_freq|freq\(7)))) # (!\get_freq|freq\(5) & ((\get_freq|freq\(6) & ((!\get_freq|freq\(7)))) # (!\get_freq|freq\(6) & (\get_freq|freq\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(4),
	datab => \get_freq|freq\(5),
	datac => \get_freq|freq\(7),
	datad => \get_freq|freq\(6),
	combout => \u_7seg_1|u_lcd_upper|WideOr4~0_combout\);

-- Location: FF_X113_Y14_N1
\u_7seg_1|u_lcd_upper|o_segments[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_upper|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_upper|o_segments\(4));

-- Location: LCCOMB_X113_Y14_N22
\u_7seg_1|u_lcd_upper|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_upper|WideOr3~0_combout\ = (\get_freq|freq\(5) & ((\get_freq|freq\(4) & ((\get_freq|freq\(6)))) # (!\get_freq|freq\(4) & (\get_freq|freq\(7) & !\get_freq|freq\(6))))) # (!\get_freq|freq\(5) & (!\get_freq|freq\(7) & (\get_freq|freq\(4) $ 
-- (\get_freq|freq\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(4),
	datab => \get_freq|freq\(7),
	datac => \get_freq|freq\(5),
	datad => \get_freq|freq\(6),
	combout => \u_7seg_1|u_lcd_upper|WideOr3~0_combout\);

-- Location: FF_X113_Y14_N23
\u_7seg_1|u_lcd_upper|o_segments[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_upper|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_upper|o_segments\(3));

-- Location: LCCOMB_X113_Y14_N16
\u_7seg_1|u_lcd_upper|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_upper|WideOr2~0_combout\ = (\get_freq|freq\(7) & (\get_freq|freq\(6) & ((\get_freq|freq\(5)) # (!\get_freq|freq\(4))))) # (!\get_freq|freq\(7) & (!\get_freq|freq\(4) & (\get_freq|freq\(5) & !\get_freq|freq\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(4),
	datab => \get_freq|freq\(7),
	datac => \get_freq|freq\(5),
	datad => \get_freq|freq\(6),
	combout => \u_7seg_1|u_lcd_upper|WideOr2~0_combout\);

-- Location: FF_X113_Y14_N17
\u_7seg_1|u_lcd_upper|o_segments[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_upper|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_upper|o_segments\(2));

-- Location: LCCOMB_X113_Y14_N2
\u_7seg_1|u_lcd_upper|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_upper|WideOr1~0_combout\ = (\get_freq|freq\(7) & ((\get_freq|freq\(4) & (\get_freq|freq\(5))) # (!\get_freq|freq\(4) & ((\get_freq|freq\(6)))))) # (!\get_freq|freq\(7) & (\get_freq|freq\(6) & (\get_freq|freq\(4) $ (\get_freq|freq\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(4),
	datab => \get_freq|freq\(7),
	datac => \get_freq|freq\(5),
	datad => \get_freq|freq\(6),
	combout => \u_7seg_1|u_lcd_upper|WideOr1~0_combout\);

-- Location: FF_X113_Y14_N3
\u_7seg_1|u_lcd_upper|o_segments[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_upper|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_upper|o_segments\(1));

-- Location: LCCOMB_X113_Y14_N20
\u_7seg_1|u_lcd_upper|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_1|u_lcd_upper|WideOr0~0_combout\ = (\get_freq|freq\(7) & (\get_freq|freq\(4) & (\get_freq|freq\(5) $ (\get_freq|freq\(6))))) # (!\get_freq|freq\(7) & (!\get_freq|freq\(5) & (\get_freq|freq\(4) $ (\get_freq|freq\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_freq|freq\(4),
	datab => \get_freq|freq\(7),
	datac => \get_freq|freq\(5),
	datad => \get_freq|freq\(6),
	combout => \u_7seg_1|u_lcd_upper|WideOr0~0_combout\);

-- Location: FF_X113_Y14_N21
\u_7seg_1|u_lcd_upper|o_segments[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_1|u_lcd_upper|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_1|u_lcd_upper|o_segments\(0));

-- Location: LCCOMB_X111_Y14_N18
\u_7seg_2|u_lcd_lower|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|WideOr6~0_combout\ = (\mymidi|out_bytes\(8) & (!\mymidi|out_bytes\(11) & (\mymidi|out_bytes\(9) $ (!\mymidi|out_bytes\(10))))) # (!\mymidi|out_bytes\(8) & (!\mymidi|out_bytes\(9) & (\mymidi|out_bytes\(10) $ 
-- (!\mymidi|out_bytes\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(9),
	datac => \mymidi|out_bytes\(10),
	datad => \mymidi|out_bytes\(11),
	combout => \u_7seg_2|u_lcd_lower|WideOr6~0_combout\);

-- Location: LCCOMB_X110_Y14_N8
\u_7seg_2|u_lcd_lower|o_segments[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|o_segments[6]~feeder_combout\ = \u_7seg_2|u_lcd_lower|WideOr6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg_2|u_lcd_lower|WideOr6~0_combout\,
	combout => \u_7seg_2|u_lcd_lower|o_segments[6]~feeder_combout\);

-- Location: FF_X110_Y14_N9
\u_7seg_2|u_lcd_lower|o_segments[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_2|u_lcd_lower|o_segments[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_lower|o_segments\(6));

-- Location: LCCOMB_X111_Y14_N28
\u_7seg_2|u_lcd_lower|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|WideOr5~0_combout\ = (\mymidi|out_bytes\(8) & (\mymidi|out_bytes\(11) $ (((\mymidi|out_bytes\(9)) # (!\mymidi|out_bytes\(10)))))) # (!\mymidi|out_bytes\(8) & (\mymidi|out_bytes\(9) & (!\mymidi|out_bytes\(10) & 
-- !\mymidi|out_bytes\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(9),
	datac => \mymidi|out_bytes\(10),
	datad => \mymidi|out_bytes\(11),
	combout => \u_7seg_2|u_lcd_lower|WideOr5~0_combout\);

-- Location: LCCOMB_X111_Y13_N16
\u_7seg_2|u_lcd_lower|o_segments[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|o_segments[5]~feeder_combout\ = \u_7seg_2|u_lcd_lower|WideOr5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg_2|u_lcd_lower|WideOr5~0_combout\,
	combout => \u_7seg_2|u_lcd_lower|o_segments[5]~feeder_combout\);

-- Location: FF_X111_Y13_N17
\u_7seg_2|u_lcd_lower|o_segments[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_2|u_lcd_lower|o_segments[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_lower|o_segments\(5));

-- Location: LCCOMB_X112_Y14_N20
\u_7seg_2|u_lcd_lower|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|WideOr4~0_combout\ = (\mymidi|out_bytes\(9) & (\mymidi|out_bytes\(8) & (!\mymidi|out_bytes\(11)))) # (!\mymidi|out_bytes\(9) & ((\mymidi|out_bytes\(10) & ((!\mymidi|out_bytes\(11)))) # (!\mymidi|out_bytes\(10) & 
-- (\mymidi|out_bytes\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(11),
	datac => \mymidi|out_bytes\(9),
	datad => \mymidi|out_bytes\(10),
	combout => \u_7seg_2|u_lcd_lower|WideOr4~0_combout\);

-- Location: LCCOMB_X112_Y14_N16
\u_7seg_2|u_lcd_lower|o_segments[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|o_segments[4]~feeder_combout\ = \u_7seg_2|u_lcd_lower|WideOr4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg_2|u_lcd_lower|WideOr4~0_combout\,
	combout => \u_7seg_2|u_lcd_lower|o_segments[4]~feeder_combout\);

-- Location: FF_X112_Y14_N17
\u_7seg_2|u_lcd_lower|o_segments[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_2|u_lcd_lower|o_segments[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_lower|o_segments\(4));

-- Location: LCCOMB_X112_Y14_N18
\u_7seg_2|u_lcd_lower|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|WideOr3~0_combout\ = (\mymidi|out_bytes\(9) & ((\mymidi|out_bytes\(8) & ((\mymidi|out_bytes\(10)))) # (!\mymidi|out_bytes\(8) & (\mymidi|out_bytes\(11) & !\mymidi|out_bytes\(10))))) # (!\mymidi|out_bytes\(9) & 
-- (!\mymidi|out_bytes\(11) & (\mymidi|out_bytes\(8) $ (\mymidi|out_bytes\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(11),
	datac => \mymidi|out_bytes\(9),
	datad => \mymidi|out_bytes\(10),
	combout => \u_7seg_2|u_lcd_lower|WideOr3~0_combout\);

-- Location: LCCOMB_X112_Y14_N30
\u_7seg_2|u_lcd_lower|o_segments[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|o_segments[3]~feeder_combout\ = \u_7seg_2|u_lcd_lower|WideOr3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg_2|u_lcd_lower|WideOr3~0_combout\,
	combout => \u_7seg_2|u_lcd_lower|o_segments[3]~feeder_combout\);

-- Location: FF_X112_Y14_N31
\u_7seg_2|u_lcd_lower|o_segments[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_2|u_lcd_lower|o_segments[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_lower|o_segments\(3));

-- Location: LCCOMB_X111_Y14_N12
\u_7seg_2|u_lcd_lower|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|WideOr2~0_combout\ = (\mymidi|out_bytes\(10) & (\mymidi|out_bytes\(11) & ((\mymidi|out_bytes\(9)) # (!\mymidi|out_bytes\(8))))) # (!\mymidi|out_bytes\(10) & (!\mymidi|out_bytes\(8) & (\mymidi|out_bytes\(9) & 
-- !\mymidi|out_bytes\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(9),
	datac => \mymidi|out_bytes\(10),
	datad => \mymidi|out_bytes\(11),
	combout => \u_7seg_2|u_lcd_lower|WideOr2~0_combout\);

-- Location: FF_X107_Y14_N1
\u_7seg_2|u_lcd_lower|o_segments[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_7seg_2|u_lcd_lower|WideOr2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_lower|o_segments\(2));

-- Location: LCCOMB_X110_Y14_N0
\u_7seg_2|u_lcd_lower|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|WideOr1~0_combout\ = (\mymidi|out_bytes\(9) & ((\mymidi|out_bytes\(8) & ((\mymidi|out_bytes\(11)))) # (!\mymidi|out_bytes\(8) & (\mymidi|out_bytes\(10))))) # (!\mymidi|out_bytes\(9) & (\mymidi|out_bytes\(10) & (\mymidi|out_bytes\(8) 
-- $ (\mymidi|out_bytes\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(10),
	datab => \mymidi|out_bytes\(8),
	datac => \mymidi|out_bytes\(9),
	datad => \mymidi|out_bytes\(11),
	combout => \u_7seg_2|u_lcd_lower|WideOr1~0_combout\);

-- Location: LCCOMB_X110_Y14_N30
\u_7seg_2|u_lcd_lower|o_segments[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|o_segments[1]~feeder_combout\ = \u_7seg_2|u_lcd_lower|WideOr1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg_2|u_lcd_lower|WideOr1~0_combout\,
	combout => \u_7seg_2|u_lcd_lower|o_segments[1]~feeder_combout\);

-- Location: FF_X110_Y14_N31
\u_7seg_2|u_lcd_lower|o_segments[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_2|u_lcd_lower|o_segments[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_lower|o_segments\(1));

-- Location: LCCOMB_X111_Y14_N24
\u_7seg_2|u_lcd_lower|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|WideOr0~0_combout\ = (\mymidi|out_bytes\(10) & (!\mymidi|out_bytes\(9) & (\mymidi|out_bytes\(8) $ (!\mymidi|out_bytes\(11))))) # (!\mymidi|out_bytes\(10) & (\mymidi|out_bytes\(8) & (\mymidi|out_bytes\(9) $ 
-- (!\mymidi|out_bytes\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(8),
	datab => \mymidi|out_bytes\(9),
	datac => \mymidi|out_bytes\(10),
	datad => \mymidi|out_bytes\(11),
	combout => \u_7seg_2|u_lcd_lower|WideOr0~0_combout\);

-- Location: LCCOMB_X112_Y14_N28
\u_7seg_2|u_lcd_lower|o_segments[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_lower|o_segments[0]~feeder_combout\ = \u_7seg_2|u_lcd_lower|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_7seg_2|u_lcd_lower|WideOr0~0_combout\,
	combout => \u_7seg_2|u_lcd_lower|o_segments[0]~feeder_combout\);

-- Location: FF_X112_Y14_N29
\u_7seg_2|u_lcd_lower|o_segments[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_2|u_lcd_lower|o_segments[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_lower|o_segments\(0));

-- Location: LCCOMB_X112_Y14_N4
\u_7seg_2|u_lcd_upper|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|WideOr6~0_combout\ = (\mymidi|out_bytes\(12) & (!\mymidi|out_bytes\(15) & (\mymidi|out_bytes\(13) $ (!\mymidi|out_bytes\(14))))) # (!\mymidi|out_bytes\(12) & (!\mymidi|out_bytes\(13) & (\mymidi|out_bytes\(15) $ 
-- (!\mymidi|out_bytes\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(13),
	datab => \mymidi|out_bytes\(15),
	datac => \mymidi|out_bytes\(12),
	datad => \mymidi|out_bytes\(14),
	combout => \u_7seg_2|u_lcd_upper|WideOr6~0_combout\);

-- Location: FF_X113_Y14_N27
\u_7seg_2|u_lcd_upper|o_segments[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_7seg_2|u_lcd_upper|WideOr6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_upper|o_segments\(6));

-- Location: LCCOMB_X110_Y13_N0
\u_7seg_2|u_lcd_upper|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|WideOr5~0_combout\ = (\mymidi|out_bytes\(13) & (!\mymidi|out_bytes\(15) & ((\mymidi|out_bytes\(12)) # (!\mymidi|out_bytes\(14))))) # (!\mymidi|out_bytes\(13) & (\mymidi|out_bytes\(12) & (\mymidi|out_bytes\(15) $ 
-- (!\mymidi|out_bytes\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(13),
	datab => \mymidi|out_bytes\(15),
	datac => \mymidi|out_bytes\(12),
	datad => \mymidi|out_bytes\(14),
	combout => \u_7seg_2|u_lcd_upper|WideOr5~0_combout\);

-- Location: LCCOMB_X110_Y13_N16
\u_7seg_2|u_lcd_upper|o_segments[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|o_segments[5]~feeder_combout\ = \u_7seg_2|u_lcd_upper|WideOr5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg_2|u_lcd_upper|WideOr5~0_combout\,
	combout => \u_7seg_2|u_lcd_upper|o_segments[5]~feeder_combout\);

-- Location: FF_X110_Y13_N17
\u_7seg_2|u_lcd_upper|o_segments[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_2|u_lcd_upper|o_segments[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_upper|o_segments\(5));

-- Location: LCCOMB_X112_Y14_N22
\u_7seg_2|u_lcd_upper|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|WideOr4~0_combout\ = (\mymidi|out_bytes\(13) & (!\mymidi|out_bytes\(15) & (\mymidi|out_bytes\(12)))) # (!\mymidi|out_bytes\(13) & ((\mymidi|out_bytes\(14) & (!\mymidi|out_bytes\(15))) # (!\mymidi|out_bytes\(14) & 
-- ((\mymidi|out_bytes\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(13),
	datab => \mymidi|out_bytes\(15),
	datac => \mymidi|out_bytes\(12),
	datad => \mymidi|out_bytes\(14),
	combout => \u_7seg_2|u_lcd_upper|WideOr4~0_combout\);

-- Location: FF_X112_Y14_N15
\u_7seg_2|u_lcd_upper|o_segments[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_7seg_2|u_lcd_upper|WideOr4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_upper|o_segments\(4));

-- Location: LCCOMB_X112_Y14_N12
\u_7seg_2|u_lcd_upper|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|WideOr3~0_combout\ = (\mymidi|out_bytes\(13) & ((\mymidi|out_bytes\(12) & ((\mymidi|out_bytes\(14)))) # (!\mymidi|out_bytes\(12) & (\mymidi|out_bytes\(15) & !\mymidi|out_bytes\(14))))) # (!\mymidi|out_bytes\(13) & 
-- (!\mymidi|out_bytes\(15) & (\mymidi|out_bytes\(12) $ (\mymidi|out_bytes\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(13),
	datab => \mymidi|out_bytes\(15),
	datac => \mymidi|out_bytes\(12),
	datad => \mymidi|out_bytes\(14),
	combout => \u_7seg_2|u_lcd_upper|WideOr3~0_combout\);

-- Location: LCCOMB_X112_Y14_N8
\u_7seg_2|u_lcd_upper|o_segments[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|o_segments[3]~feeder_combout\ = \u_7seg_2|u_lcd_upper|WideOr3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg_2|u_lcd_upper|WideOr3~0_combout\,
	combout => \u_7seg_2|u_lcd_upper|o_segments[3]~feeder_combout\);

-- Location: FF_X112_Y14_N9
\u_7seg_2|u_lcd_upper|o_segments[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_2|u_lcd_upper|o_segments[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_upper|o_segments\(3));

-- Location: LCCOMB_X112_Y14_N6
\u_7seg_2|u_lcd_upper|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|WideOr2~0_combout\ = (\mymidi|out_bytes\(15) & (\mymidi|out_bytes\(14) & ((\mymidi|out_bytes\(13)) # (!\mymidi|out_bytes\(12))))) # (!\mymidi|out_bytes\(15) & (\mymidi|out_bytes\(13) & (!\mymidi|out_bytes\(12) & 
-- !\mymidi|out_bytes\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(13),
	datab => \mymidi|out_bytes\(15),
	datac => \mymidi|out_bytes\(12),
	datad => \mymidi|out_bytes\(14),
	combout => \u_7seg_2|u_lcd_upper|WideOr2~0_combout\);

-- Location: FF_X113_Y14_N5
\u_7seg_2|u_lcd_upper|o_segments[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_7seg_2|u_lcd_upper|WideOr2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_upper|o_segments\(2));

-- Location: LCCOMB_X110_Y13_N2
\u_7seg_2|u_lcd_upper|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|WideOr1~0_combout\ = (\mymidi|out_bytes\(13) & ((\mymidi|out_bytes\(12) & (\mymidi|out_bytes\(15))) # (!\mymidi|out_bytes\(12) & ((\mymidi|out_bytes\(14)))))) # (!\mymidi|out_bytes\(13) & (\mymidi|out_bytes\(14) & 
-- (\mymidi|out_bytes\(15) $ (\mymidi|out_bytes\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(13),
	datab => \mymidi|out_bytes\(15),
	datac => \mymidi|out_bytes\(12),
	datad => \mymidi|out_bytes\(14),
	combout => \u_7seg_2|u_lcd_upper|WideOr1~0_combout\);

-- Location: LCCOMB_X110_Y13_N30
\u_7seg_2|u_lcd_upper|o_segments[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|o_segments[1]~feeder_combout\ = \u_7seg_2|u_lcd_upper|WideOr1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg_2|u_lcd_upper|WideOr1~0_combout\,
	combout => \u_7seg_2|u_lcd_upper|o_segments[1]~feeder_combout\);

-- Location: FF_X110_Y13_N31
\u_7seg_2|u_lcd_upper|o_segments[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_2|u_lcd_upper|o_segments[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_upper|o_segments\(1));

-- Location: LCCOMB_X110_Y14_N26
\u_7seg_2|u_lcd_upper|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|WideOr0~0_combout\ = (\mymidi|out_bytes\(15) & (\mymidi|out_bytes\(12) & (\mymidi|out_bytes\(13) $ (\mymidi|out_bytes\(14))))) # (!\mymidi|out_bytes\(15) & (!\mymidi|out_bytes\(13) & (\mymidi|out_bytes\(14) $ 
-- (\mymidi|out_bytes\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mymidi|out_bytes\(15),
	datab => \mymidi|out_bytes\(13),
	datac => \mymidi|out_bytes\(14),
	datad => \mymidi|out_bytes\(12),
	combout => \u_7seg_2|u_lcd_upper|WideOr0~0_combout\);

-- Location: LCCOMB_X110_Y14_N24
\u_7seg_2|u_lcd_upper|o_segments[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_7seg_2|u_lcd_upper|o_segments[0]~feeder_combout\ = \u_7seg_2|u_lcd_upper|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_7seg_2|u_lcd_upper|WideOr0~0_combout\,
	combout => \u_7seg_2|u_lcd_upper|o_segments[0]~feeder_combout\);

-- Location: FF_X110_Y14_N25
\u_7seg_2|u_lcd_upper|o_segments[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_7seg_2|u_lcd_upper|o_segments[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg_2|u_lcd_upper|o_segments\(0));

-- Location: IOIBUF_X20_Y73_N22
\EX_IO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_IO(0),
	o => \EX_IO[0]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\EX_IO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_IO(1),
	o => \EX_IO[1]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\EX_IO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_IO(2),
	o => \EX_IO[2]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\EX_IO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_IO(3),
	o => \EX_IO[3]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\EX_IO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_IO(4),
	o => \EX_IO[4]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\EX_IO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_IO(5),
	o => \EX_IO[5]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\SERIAL_IN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SERIAL_IN,
	o => \SERIAL_IN~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_BYTE_OUT(0) <= \BYTE_OUT[0]~output_o\;

ww_BYTE_OUT(1) <= \BYTE_OUT[1]~output_o\;

ww_BYTE_OUT(2) <= \BYTE_OUT[2]~output_o\;

ww_BYTE_OUT(3) <= \BYTE_OUT[3]~output_o\;

ww_BYTE_OUT(4) <= \BYTE_OUT[4]~output_o\;

ww_BYTE_OUT(5) <= \BYTE_OUT[5]~output_o\;

ww_BYTE_OUT(6) <= \BYTE_OUT[6]~output_o\;

ww_BYTE_OUT(7) <= \BYTE_OUT[7]~output_o\;

ww_debug_out <= \debug_out~output_o\;

ww_o_freq(0) <= \o_freq[0]~output_o\;

ww_o_freq(1) <= \o_freq[1]~output_o\;

ww_o_freq(2) <= \o_freq[2]~output_o\;

ww_o_freq(3) <= \o_freq[3]~output_o\;

ww_o_freq(4) <= \o_freq[4]~output_o\;

ww_o_freq(5) <= \o_freq[5]~output_o\;

ww_o_freq(6) <= \o_freq[6]~output_o\;

ww_o_freq(7) <= \o_freq[7]~output_o\;

ww_o_freq(8) <= \o_freq[8]~output_o\;

ww_o_freq(9) <= \o_freq[9]~output_o\;

ww_o_freq(10) <= \o_freq[10]~output_o\;

ww_o_freq(11) <= \o_freq[11]~output_o\;

ww_o_freq(12) <= \o_freq[12]~output_o\;

ww_o_freq(13) <= \o_freq[13]~output_o\;

ww_o_freq(14) <= \o_freq[14]~output_o\;

ww_o_freq(15) <= \o_freq[15]~output_o\;

ww_o_lcd7_0(6) <= \o_lcd7_0[6]~output_o\;

ww_o_lcd7_0(5) <= \o_lcd7_0[5]~output_o\;

ww_o_lcd7_0(4) <= \o_lcd7_0[4]~output_o\;

ww_o_lcd7_0(3) <= \o_lcd7_0[3]~output_o\;

ww_o_lcd7_0(2) <= \o_lcd7_0[2]~output_o\;

ww_o_lcd7_0(1) <= \o_lcd7_0[1]~output_o\;

ww_o_lcd7_0(0) <= \o_lcd7_0[0]~output_o\;

ww_o_lcd7_1(6) <= \o_lcd7_1[6]~output_o\;

ww_o_lcd7_1(5) <= \o_lcd7_1[5]~output_o\;

ww_o_lcd7_1(4) <= \o_lcd7_1[4]~output_o\;

ww_o_lcd7_1(3) <= \o_lcd7_1[3]~output_o\;

ww_o_lcd7_1(2) <= \o_lcd7_1[2]~output_o\;

ww_o_lcd7_1(1) <= \o_lcd7_1[1]~output_o\;

ww_o_lcd7_1(0) <= \o_lcd7_1[0]~output_o\;

ww_o_lcd7_2(6) <= \o_lcd7_2[6]~output_o\;

ww_o_lcd7_2(5) <= \o_lcd7_2[5]~output_o\;

ww_o_lcd7_2(4) <= \o_lcd7_2[4]~output_o\;

ww_o_lcd7_2(3) <= \o_lcd7_2[3]~output_o\;

ww_o_lcd7_2(2) <= \o_lcd7_2[2]~output_o\;

ww_o_lcd7_2(1) <= \o_lcd7_2[1]~output_o\;

ww_o_lcd7_2(0) <= \o_lcd7_2[0]~output_o\;

ww_o_lcd7_3(6) <= \o_lcd7_3[6]~output_o\;

ww_o_lcd7_3(5) <= \o_lcd7_3[5]~output_o\;

ww_o_lcd7_3(4) <= \o_lcd7_3[4]~output_o\;

ww_o_lcd7_3(3) <= \o_lcd7_3[3]~output_o\;

ww_o_lcd7_3(2) <= \o_lcd7_3[2]~output_o\;

ww_o_lcd7_3(1) <= \o_lcd7_3[1]~output_o\;

ww_o_lcd7_3(0) <= \o_lcd7_3[0]~output_o\;

ww_o_lcd7_4(6) <= \o_lcd7_4[6]~output_o\;

ww_o_lcd7_4(5) <= \o_lcd7_4[5]~output_o\;

ww_o_lcd7_4(4) <= \o_lcd7_4[4]~output_o\;

ww_o_lcd7_4(3) <= \o_lcd7_4[3]~output_o\;

ww_o_lcd7_4(2) <= \o_lcd7_4[2]~output_o\;

ww_o_lcd7_4(1) <= \o_lcd7_4[1]~output_o\;

ww_o_lcd7_4(0) <= \o_lcd7_4[0]~output_o\;

ww_o_lcd7_5(6) <= \o_lcd7_5[6]~output_o\;

ww_o_lcd7_5(5) <= \o_lcd7_5[5]~output_o\;

ww_o_lcd7_5(4) <= \o_lcd7_5[4]~output_o\;

ww_o_lcd7_5(3) <= \o_lcd7_5[3]~output_o\;

ww_o_lcd7_5(2) <= \o_lcd7_5[2]~output_o\;

ww_o_lcd7_5(1) <= \o_lcd7_5[1]~output_o\;

ww_o_lcd7_5(0) <= \o_lcd7_5[0]~output_o\;
END structure;


