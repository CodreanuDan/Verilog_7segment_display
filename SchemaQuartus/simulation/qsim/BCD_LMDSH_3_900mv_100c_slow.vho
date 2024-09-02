-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/23/2023 20:11:44"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EC2 IS
    PORT (
	Halt : OUT std_logic;
	Enter : IN std_logic;
	Clock : IN std_logic;
	Reset : IN std_logic;
	I : IN std_logic_vector(7 DOWNTO 0);
	A : OUT std_logic_vector(7 DOWNTO 0)
	);
END EC2;

-- Design Ports Information
-- Halt	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enter	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[5]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EC2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Halt : std_logic;
SIGNAL ww_Enter : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_I : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Halt~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|167~5_combout\ : std_logic;
SIGNAL \inst|167~2_combout\ : std_logic;
SIGNAL \I[0]~input_o\ : std_logic;
SIGNAL \inst|167~1_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|167~4_combout\ : std_logic;
SIGNAL \inst2|33|33~q\ : std_logic;
SIGNAL \inst|263~0_combout\ : std_logic;
SIGNAL \inst2|61|4[0]~0_combout\ : std_logic;
SIGNAL \I[1]~input_o\ : std_logic;
SIGNAL \inst2|33|30~q\ : std_logic;
SIGNAL \inst2|61|4[1]~1_combout\ : std_logic;
SIGNAL \inst2|60|30~q\ : std_logic;
SIGNAL \inst|251~0_combout\ : std_logic;
SIGNAL \inst2|73|4[1]~1_combout\ : std_logic;
SIGNAL \inst2|70|33|2~combout\ : std_logic;
SIGNAL \inst|167~3_combout\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \inst2|63|37|3~0_combout\ : std_logic;
SIGNAL \inst2|63|35|3~0_combout\ : std_logic;
SIGNAL \inst2|78|13[2]~5_combout\ : std_logic;
SIGNAL \inst|256~0_combout\ : std_logic;
SIGNAL \inst2|51|27~q\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \inst2|63|33|3~0_combout\ : std_logic;
SIGNAL \inst2|78|13[3]~9_combout\ : std_logic;
SIGNAL \inst2|51|24~q\ : std_logic;
SIGNAL \I[4]~input_o\ : std_logic;
SIGNAL \inst2|63|29|3~0_combout\ : std_logic;
SIGNAL \inst2|78|13[4]~13_combout\ : std_logic;
SIGNAL \inst2|51|21~q\ : std_logic;
SIGNAL \I[5]~input_o\ : std_logic;
SIGNAL \inst2|63|33|3~0DUPLICATE_combout\ : std_logic;
SIGNAL \inst2|63|1|3~0DUPLICATE_combout\ : std_logic;
SIGNAL \I[6]~input_o\ : std_logic;
SIGNAL \inst2|63|1|3~0_combout\ : std_logic;
SIGNAL \inst2|63|2|3~0_combout\ : std_logic;
SIGNAL \inst2|78|13[6]~21_combout\ : std_logic;
SIGNAL \inst2|51|15~q\ : std_logic;
SIGNAL \I[7]~input_o\ : std_logic;
SIGNAL \inst2|63|3|3~0_combout\ : std_logic;
SIGNAL \inst2|78|13[7]~25_combout\ : std_logic;
SIGNAL \inst2|51|11~q\ : std_logic;
SIGNAL \inst2|78|13[5]~17_combout\ : std_logic;
SIGNAL \inst2|51|18~q\ : std_logic;
SIGNAL \inst2|33|21~q\ : std_logic;
SIGNAL \inst2|61|4[4]~4_combout\ : std_logic;
SIGNAL \inst2|60|39~q\ : std_logic;
SIGNAL \inst2|73|4[4]~4_combout\ : std_logic;
SIGNAL \inst2|33|24~q\ : std_logic;
SIGNAL \inst2|61|4[3]~3_combout\ : std_logic;
SIGNAL \inst2|60|24~q\ : std_logic;
SIGNAL \inst2|73|4[3]~3_combout\ : std_logic;
SIGNAL \inst2|33|27~q\ : std_logic;
SIGNAL \inst2|61|4[2]~2_combout\ : std_logic;
SIGNAL \inst2|60|27~q\ : std_logic;
SIGNAL \inst2|73|4[2]~2_combout\ : std_logic;
SIGNAL \inst2|78|13[1]~1_combout\ : std_logic;
SIGNAL \inst2|51|30~q\ : std_logic;
SIGNAL \inst|248~1_combout\ : std_logic;
SIGNAL \inst|248~2_combout\ : std_logic;
SIGNAL \inst|248~0_combout\ : std_logic;
SIGNAL \inst|248~3_combout\ : std_logic;
SIGNAL \inst2|60|33~q\ : std_logic;
SIGNAL \inst2|73|4[0]~0_combout\ : std_logic;
SIGNAL \inst2|78|13[0]~0_combout\ : std_logic;
SIGNAL \inst2|51|33~q\ : std_logic;
SIGNAL \inst2|33|15~q\ : std_logic;
SIGNAL \inst|218~combout\ : std_logic;
SIGNAL \inst|2~q\ : std_logic;
SIGNAL \Enter~input_o\ : std_logic;
SIGNAL \inst|228~combout\ : std_logic;
SIGNAL \inst|151~q\ : std_logic;
SIGNAL \inst2|33|11~q\ : std_logic;
SIGNAL \inst|224~combout\ : std_logic;
SIGNAL \inst|229~q\ : std_logic;
SIGNAL \inst2|33|18~q\ : std_logic;
SIGNAL \inst|170~combout\ : std_logic;
SIGNAL \inst|3~q\ : std_logic;
SIGNAL \inst|167~0_combout\ : std_logic;
SIGNAL \inst2|65|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|33|ALT_INV_11~q\ : std_logic;
SIGNAL \inst2|33|ALT_INV_18~q\ : std_logic;
SIGNAL \inst2|33|ALT_INV_15~q\ : std_logic;
SIGNAL \inst2|51|ALT_INV_33~q\ : std_logic;
SIGNAL \inst2|51|ALT_INV_30~q\ : std_logic;
SIGNAL \inst2|51|ALT_INV_27~q\ : std_logic;
SIGNAL \inst2|51|ALT_INV_24~q\ : std_logic;
SIGNAL \inst2|51|ALT_INV_21~q\ : std_logic;
SIGNAL \inst2|51|ALT_INV_18~q\ : std_logic;
SIGNAL \inst2|51|ALT_INV_15~q\ : std_logic;
SIGNAL \inst2|51|ALT_INV_11~q\ : std_logic;
SIGNAL \inst|ALT_INV_229~q\ : std_logic;
SIGNAL \inst|ALT_INV_151~q\ : std_logic;
SIGNAL \inst|ALT_INV_3~q\ : std_logic;
SIGNAL \inst|ALT_INV_2~q\ : std_logic;
SIGNAL \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|63|1|ALT_INV_3~0DUPLICATE_combout\ : std_logic;
SIGNAL \inst2|63|33|ALT_INV_3~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_I[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_I[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_I[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_I[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_I[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_I[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_I[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_I[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Enter~input_o\ : std_logic;
SIGNAL \inst2|70|33|ALT_INV_2~combout\ : std_logic;
SIGNAL \inst|ALT_INV_248~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_248~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_248~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_263~0_combout\ : std_logic;
SIGNAL \inst2|60|ALT_INV_39~q\ : std_logic;
SIGNAL \inst2|33|ALT_INV_21~q\ : std_logic;
SIGNAL \inst2|60|ALT_INV_24~q\ : std_logic;
SIGNAL \inst2|33|ALT_INV_24~q\ : std_logic;
SIGNAL \inst2|60|ALT_INV_27~q\ : std_logic;
SIGNAL \inst2|33|ALT_INV_27~q\ : std_logic;
SIGNAL \inst2|60|ALT_INV_30~q\ : std_logic;
SIGNAL \inst2|33|ALT_INV_30~q\ : std_logic;
SIGNAL \inst2|60|ALT_INV_33~q\ : std_logic;
SIGNAL \inst|ALT_INV_251~0_combout\ : std_logic;
SIGNAL \inst2|33|ALT_INV_33~q\ : std_logic;
SIGNAL \inst|ALT_INV_167~4_combout\ : std_logic;
SIGNAL \inst2|63|3|ALT_INV_3~0_combout\ : std_logic;
SIGNAL \inst2|63|2|ALT_INV_3~0_combout\ : std_logic;
SIGNAL \inst2|63|1|ALT_INV_3~0_combout\ : std_logic;
SIGNAL \inst2|63|29|ALT_INV_3~0_combout\ : std_logic;
SIGNAL \inst2|63|33|ALT_INV_3~0_combout\ : std_logic;
SIGNAL \inst2|63|35|ALT_INV_3~0_combout\ : std_logic;
SIGNAL \inst2|63|37|ALT_INV_3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_167~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_167~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_167~1_combout\ : std_logic;

BEGIN

Halt <= ww_Halt;
ww_Enter <= Enter;
ww_Clock <= Clock;
ww_Reset <= Reset;
ww_I <= I;
A <= ww_A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst2|51|11~q\ & \inst2|51|15~q\ & \inst2|51|18~q\ & \inst2|51|21~q\ & \inst2|51|24~q\ & \inst2|51|27~q\ & 
\inst2|51|30~q\ & \inst2|51|33~q\);

\inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|73|4[4]~4_combout\ & \inst2|73|4[3]~3_combout\ & \inst2|73|4[2]~2_combout\ & \inst2|73|4[1]~1_combout\ & \inst2|73|4[0]~0_combout\);

\inst2|65|sram|ram_block|auto_generated|q_a\(0) <= \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|65|sram|ram_block|auto_generated|q_a\(1) <= \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst2|65|sram|ram_block|auto_generated|q_a\(2) <= \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst2|65|sram|ram_block|auto_generated|q_a\(3) <= \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst2|65|sram|ram_block|auto_generated|q_a\(4) <= \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst2|65|sram|ram_block|auto_generated|q_a\(5) <= \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst2|65|sram|ram_block|auto_generated|q_a\(6) <= \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst2|65|sram|ram_block|auto_generated|q_a\(7) <= \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst2|33|ALT_INV_11~q\ <= NOT \inst2|33|11~q\;
\inst2|33|ALT_INV_18~q\ <= NOT \inst2|33|18~q\;
\inst2|33|ALT_INV_15~q\ <= NOT \inst2|33|15~q\;
\inst2|51|ALT_INV_33~q\ <= NOT \inst2|51|33~q\;
\inst2|51|ALT_INV_30~q\ <= NOT \inst2|51|30~q\;
\inst2|51|ALT_INV_27~q\ <= NOT \inst2|51|27~q\;
\inst2|51|ALT_INV_24~q\ <= NOT \inst2|51|24~q\;
\inst2|51|ALT_INV_21~q\ <= NOT \inst2|51|21~q\;
\inst2|51|ALT_INV_18~q\ <= NOT \inst2|51|18~q\;
\inst2|51|ALT_INV_15~q\ <= NOT \inst2|51|15~q\;
\inst2|51|ALT_INV_11~q\ <= NOT \inst2|51|11~q\;
\inst|ALT_INV_229~q\ <= NOT \inst|229~q\;
\inst|ALT_INV_151~q\ <= NOT \inst|151~q\;
\inst|ALT_INV_3~q\ <= NOT \inst|3~q\;
\inst|ALT_INV_2~q\ <= NOT \inst|2~q\;
\inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(1) <= NOT \inst2|65|sram|ram_block|auto_generated|q_a\(1);
\inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(2) <= NOT \inst2|65|sram|ram_block|auto_generated|q_a\(2);
\inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(3) <= NOT \inst2|65|sram|ram_block|auto_generated|q_a\(3);
\inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(4) <= NOT \inst2|65|sram|ram_block|auto_generated|q_a\(4);
\inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(5) <= NOT \inst2|65|sram|ram_block|auto_generated|q_a\(5);
\inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(6) <= NOT \inst2|65|sram|ram_block|auto_generated|q_a\(6);
\inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(7) <= NOT \inst2|65|sram|ram_block|auto_generated|q_a\(7);
\inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(0) <= NOT \inst2|65|sram|ram_block|auto_generated|q_a\(0);
\inst2|63|1|ALT_INV_3~0DUPLICATE_combout\ <= NOT \inst2|63|1|3~0DUPLICATE_combout\;
\inst2|63|33|ALT_INV_3~0DUPLICATE_combout\ <= NOT \inst2|63|33|3~0DUPLICATE_combout\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
\ALT_INV_I[0]~input_o\ <= NOT \I[0]~input_o\;
\ALT_INV_I[1]~input_o\ <= NOT \I[1]~input_o\;
\ALT_INV_I[2]~input_o\ <= NOT \I[2]~input_o\;
\ALT_INV_I[3]~input_o\ <= NOT \I[3]~input_o\;
\ALT_INV_I[4]~input_o\ <= NOT \I[4]~input_o\;
\ALT_INV_I[5]~input_o\ <= NOT \I[5]~input_o\;
\ALT_INV_I[6]~input_o\ <= NOT \I[6]~input_o\;
\ALT_INV_I[7]~input_o\ <= NOT \I[7]~input_o\;
\ALT_INV_Enter~input_o\ <= NOT \Enter~input_o\;
\inst2|70|33|ALT_INV_2~combout\ <= NOT \inst2|70|33|2~combout\;
\inst|ALT_INV_248~2_combout\ <= NOT \inst|248~2_combout\;
\inst|ALT_INV_248~1_combout\ <= NOT \inst|248~1_combout\;
\inst|ALT_INV_248~0_combout\ <= NOT \inst|248~0_combout\;
\inst|ALT_INV_263~0_combout\ <= NOT \inst|263~0_combout\;
\inst2|60|ALT_INV_39~q\ <= NOT \inst2|60|39~q\;
\inst2|33|ALT_INV_21~q\ <= NOT \inst2|33|21~q\;
\inst2|60|ALT_INV_24~q\ <= NOT \inst2|60|24~q\;
\inst2|33|ALT_INV_24~q\ <= NOT \inst2|33|24~q\;
\inst2|60|ALT_INV_27~q\ <= NOT \inst2|60|27~q\;
\inst2|33|ALT_INV_27~q\ <= NOT \inst2|33|27~q\;
\inst2|60|ALT_INV_30~q\ <= NOT \inst2|60|30~q\;
\inst2|33|ALT_INV_30~q\ <= NOT \inst2|33|30~q\;
\inst2|60|ALT_INV_33~q\ <= NOT \inst2|60|33~q\;
\inst|ALT_INV_251~0_combout\ <= NOT \inst|251~0_combout\;
\inst2|33|ALT_INV_33~q\ <= NOT \inst2|33|33~q\;
\inst|ALT_INV_167~4_combout\ <= NOT \inst|167~4_combout\;
\inst2|63|3|ALT_INV_3~0_combout\ <= NOT \inst2|63|3|3~0_combout\;
\inst2|63|2|ALT_INV_3~0_combout\ <= NOT \inst2|63|2|3~0_combout\;
\inst2|63|1|ALT_INV_3~0_combout\ <= NOT \inst2|63|1|3~0_combout\;
\inst2|63|29|ALT_INV_3~0_combout\ <= NOT \inst2|63|29|3~0_combout\;
\inst2|63|33|ALT_INV_3~0_combout\ <= NOT \inst2|63|33|3~0_combout\;
\inst2|63|35|ALT_INV_3~0_combout\ <= NOT \inst2|63|35|3~0_combout\;
\inst2|63|37|ALT_INV_3~0_combout\ <= NOT \inst2|63|37|3~0_combout\;
\inst|ALT_INV_167~3_combout\ <= NOT \inst|167~3_combout\;
\inst|ALT_INV_167~2_combout\ <= NOT \inst|167~2_combout\;
\inst|ALT_INV_167~1_combout\ <= NOT \inst|167~1_combout\;

-- Location: IOOBUF_X42_Y56_N98
\Halt~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|167~0_combout\,
	devoe => ww_devoe,
	o => \Halt~output_o\);

-- Location: IOOBUF_X33_Y56_N5
\A[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|51|11~q\,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X30_Y56_N36
\A[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|51|15~q\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X31_Y56_N98
\A[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|51|18~q\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\A[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|51|21~q\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\A[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|51|24~q\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X31_Y56_N36
\A[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|51|27~q\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\A[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|51|30~q\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\A[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|51|33~q\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOIBUF_X26_Y0_N32
\Clock~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G7
\Clock~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LABCELL_X38_Y52_N6
\inst|167~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|167~5_combout\ = ( !\inst|2~q\ & ( (!\inst|229~q\ & (\inst|151~q\ & \inst|3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_229~q\,
	datab => \inst|ALT_INV_151~q\,
	datad => \inst|ALT_INV_3~q\,
	dataf => \inst|ALT_INV_2~q\,
	combout => \inst|167~5_combout\);

-- Location: LABCELL_X38_Y52_N0
\inst|167~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|167~2_combout\ = ( !\inst|2~q\ & ( (!\inst|229~q\ & (\inst|151~q\ & !\inst|3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_229~q\,
	datab => \inst|ALT_INV_151~q\,
	datac => \inst|ALT_INV_3~q\,
	dataf => \inst|ALT_INV_2~q\,
	combout => \inst|167~2_combout\);

-- Location: IOIBUF_X42_Y56_N1
\I[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(0),
	o => \I[0]~input_o\);

-- Location: LABCELL_X38_Y52_N2
\inst|167~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|167~1_combout\ = ( !\inst|2~q\ & ( (\inst|229~q\ & (\inst|151~q\ & !\inst|3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_229~q\,
	datac => \inst|ALT_INV_151~q\,
	datad => \inst|ALT_INV_3~q\,
	dataf => \inst|ALT_INV_2~q\,
	combout => \inst|167~1_combout\);

-- Location: IOIBUF_X26_Y0_N94
\Reset~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G6
\Reset~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: LABCELL_X35_Y52_N2
\inst|167~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|167~4_combout\ = ( !\inst|2~q\ & ( (!\inst|151~q\ & (!\inst|229~q\ & \inst|3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_151~q\,
	datab => \inst|ALT_INV_229~q\,
	datac => \inst|ALT_INV_3~q\,
	dataf => \inst|ALT_INV_2~q\,
	combout => \inst|167~4_combout\);

-- Location: FF_X35_Y52_N1
\inst2|33|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst2|65|sram|ram_block|auto_generated|q_a\(0),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|167~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|33|33~q\);

-- Location: LABCELL_X35_Y52_N6
\inst|263~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|263~0_combout\ = ( \inst|2~q\ & ( (\inst|151~q\ & (\inst|229~q\ & !\inst|3~q\)) ) ) # ( !\inst|2~q\ & ( (\inst|151~q\ & (\inst|229~q\ & \inst|3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_151~q\,
	datab => \inst|ALT_INV_229~q\,
	datac => \inst|ALT_INV_3~q\,
	dataf => \inst|ALT_INV_2~q\,
	combout => \inst|263~0_combout\);

-- Location: LABCELL_X35_Y52_N4
\inst2|61|4[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|61|4[0]~0_combout\ = ( \inst|263~0_combout\ & ( \inst2|33|33~q\ ) ) # ( !\inst|263~0_combout\ & ( !\inst2|60|33~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|33|ALT_INV_33~q\,
	datad => \inst2|60|ALT_INV_33~q\,
	dataf => \inst|ALT_INV_263~0_combout\,
	combout => \inst2|61|4[0]~0_combout\);

-- Location: IOIBUF_X42_Y56_N32
\I[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(1),
	o => \I[1]~input_o\);

-- Location: FF_X35_Y52_N25
\inst2|33|30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst2|65|sram|ram_block|auto_generated|q_a\(1),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|167~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|33|30~q\);

-- Location: LABCELL_X35_Y52_N14
\inst2|61|4[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|61|4[1]~1_combout\ = ( \inst2|33|30~q\ & ( (!\inst2|60|33~q\ $ (!\inst2|60|30~q\)) # (\inst|263~0_combout\) ) ) # ( !\inst2|33|30~q\ & ( (!\inst|263~0_combout\ & (!\inst2|60|33~q\ $ (!\inst2|60|30~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|60|ALT_INV_33~q\,
	datac => \inst|ALT_INV_263~0_combout\,
	datad => \inst2|60|ALT_INV_30~q\,
	dataf => \inst2|33|ALT_INV_30~q\,
	combout => \inst2|61|4[1]~1_combout\);

-- Location: FF_X35_Y52_N15
\inst2|60|30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|61|4[1]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|248~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|60|30~q\);

-- Location: LABCELL_X35_Y52_N10
\inst|251~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|251~0_combout\ = ( \inst|3~q\ & ( (!\inst|2~q\ & (!\inst|229~q\ & \inst|151~q\)) ) ) # ( !\inst|3~q\ & ( (\inst|2~q\ & (!\inst|229~q\ & !\inst|151~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_2~q\,
	datab => \inst|ALT_INV_229~q\,
	datad => \inst|ALT_INV_151~q\,
	dataf => \inst|ALT_INV_3~q\,
	combout => \inst|251~0_combout\);

-- Location: LABCELL_X35_Y52_N24
\inst2|73|4[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|73|4[1]~1_combout\ = ( \inst|251~0_combout\ & ( \inst2|33|30~q\ ) ) # ( !\inst|251~0_combout\ & ( \inst2|60|30~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|60|ALT_INV_30~q\,
	datad => \inst2|33|ALT_INV_30~q\,
	dataf => \inst|ALT_INV_251~0_combout\,
	combout => \inst2|73|4[1]~1_combout\);

-- Location: LABCELL_X35_Y52_N32
\inst2|70|33|2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|70|33|2~combout\ = ( \inst2|60|30~q\ & ( (\inst2|60|27~q\ & \inst2|60|33~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|60|ALT_INV_27~q\,
	datac => \inst2|60|ALT_INV_33~q\,
	dataf => \inst2|60|ALT_INV_30~q\,
	combout => \inst2|70|33|2~combout\);

-- Location: LABCELL_X38_Y52_N28
\inst|167~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|167~3_combout\ = ( \inst|2~q\ & ( (\inst|3~q\ & (\inst|151~q\ & !\inst|229~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_3~q\,
	datab => \inst|ALT_INV_151~q\,
	datac => \inst|ALT_INV_229~q\,
	dataf => \inst|ALT_INV_2~q\,
	combout => \inst|167~3_combout\);

-- Location: IOIBUF_X42_Y56_N63
\I[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(2),
	o => \I[2]~input_o\);

-- Location: MLABCELL_X37_Y52_N28
\inst2|63|37|3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|63|37|3~0_combout\ = ( \inst2|51|33~q\ & ( \inst2|65|sram|ram_block|auto_generated|q_a\(0) ) ) # ( \inst2|51|33~q\ & ( !\inst2|65|sram|ram_block|auto_generated|q_a\(0) & ( (\inst|3~q\ & (\inst|2~q\ & (\inst|151~q\ & !\inst|229~q\))) ) ) ) # ( 
-- !\inst2|51|33~q\ & ( !\inst2|65|sram|ram_block|auto_generated|q_a\(0) & ( (\inst|3~q\ & (\inst|2~q\ & (\inst|151~q\ & !\inst|229~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_3~q\,
	datab => \inst|ALT_INV_2~q\,
	datac => \inst|ALT_INV_151~q\,
	datad => \inst|ALT_INV_229~q\,
	datae => \inst2|51|ALT_INV_33~q\,
	dataf => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(0),
	combout => \inst2|63|37|3~0_combout\);

-- Location: LABCELL_X38_Y52_N32
\inst2|63|35|3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|63|35|3~0_combout\ = ( \inst2|65|sram|ram_block|auto_generated|q_a\(1) & ( \inst2|63|37|3~0_combout\ & ( (!\inst|167~3_combout\) # (\inst2|51|30~q\) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(1) & ( \inst2|63|37|3~0_combout\ & ( 
-- (\inst|167~3_combout\) # (\inst2|51|30~q\) ) ) ) # ( \inst2|65|sram|ram_block|auto_generated|q_a\(1) & ( !\inst2|63|37|3~0_combout\ & ( (\inst2|51|30~q\ & !\inst|167~3_combout\) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(1) & ( 
-- !\inst2|63|37|3~0_combout\ & ( (\inst2|51|30~q\ & \inst|167~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000111111001111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|51|ALT_INV_30~q\,
	datac => \inst|ALT_INV_167~3_combout\,
	datae => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst2|63|37|ALT_INV_3~0_combout\,
	combout => \inst2|63|35|3~0_combout\);

-- Location: LABCELL_X38_Y52_N20
\inst2|78|13[2]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|78|13[2]~5_combout\ = ( !\inst|167~1_combout\ & ( !\inst2|65|sram|ram_block|auto_generated|q_a\(2) $ (((!\inst|167~3_combout\ $ (!\inst2|51|27~q\ $ (!\inst2|63|35|3~0_combout\))) # (\inst|167~2_combout\))) ) ) # ( \inst|167~1_combout\ & ( 
-- (!\inst|167~2_combout\ & (((\I[2]~input_o\)))) # (\inst|167~2_combout\ & ((((\inst2|65|sram|ram_block|auto_generated|q_a\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010100011010111000010100101111110000010011111010000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_167~2_combout\,
	datab => \inst|ALT_INV_167~3_combout\,
	datac => \ALT_INV_I[2]~input_o\,
	datad => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(2),
	datae => \inst|ALT_INV_167~1_combout\,
	dataf => \inst2|63|35|ALT_INV_3~0_combout\,
	datag => \inst2|51|ALT_INV_27~q\,
	combout => \inst2|78|13[2]~5_combout\);

-- Location: LABCELL_X38_Y52_N30
\inst|256~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|256~0_combout\ = ( \inst|229~q\ & ( (!\inst|3~q\ & (\inst|151~q\ & !\inst|2~q\)) ) ) # ( !\inst|229~q\ & ( (\inst|151~q\ & ((!\inst|3~q\) # (\inst|2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_3~q\,
	datab => \inst|ALT_INV_151~q\,
	datac => \inst|ALT_INV_2~q\,
	dataf => \inst|ALT_INV_229~q\,
	combout => \inst|256~0_combout\);

-- Location: FF_X38_Y52_N21
\inst2|51|27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|78|13[2]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|256~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|51|27~q\);

-- Location: IOIBUF_X33_Y56_N32
\I[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(3),
	o => \I[3]~input_o\);

-- Location: MLABCELL_X37_Y52_N8
\inst2|63|33|3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|63|33|3~0_combout\ = ( \inst2|65|sram|ram_block|auto_generated|q_a\(2) & ( \inst2|63|37|3~0_combout\ & ( (!\inst2|51|30~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(1) & (\inst2|51|27~q\)) # (\inst2|65|sram|ram_block|auto_generated|q_a\(1) 
-- & ((!\inst|167~3_combout\))))) # (\inst2|51|30~q\ & (((!\inst|167~3_combout\)) # (\inst2|51|27~q\))) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(2) & ( \inst2|63|37|3~0_combout\ & ( (!\inst2|51|30~q\ & 
-- ((!\inst2|65|sram|ram_block|auto_generated|q_a\(1) & ((\inst|167~3_combout\))) # (\inst2|65|sram|ram_block|auto_generated|q_a\(1) & (\inst2|51|27~q\)))) # (\inst2|51|30~q\ & (((\inst|167~3_combout\)) # (\inst2|51|27~q\))) ) ) ) # ( 
-- \inst2|65|sram|ram_block|auto_generated|q_a\(2) & ( !\inst2|63|37|3~0_combout\ & ( (!\inst2|51|30~q\ & (\inst2|51|27~q\ & ((!\inst|167~3_combout\)))) # (\inst2|51|30~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(1) & (\inst2|51|27~q\)) # 
-- (\inst2|65|sram|ram_block|auto_generated|q_a\(1) & ((!\inst|167~3_combout\))))) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(2) & ( !\inst2|63|37|3~0_combout\ & ( (!\inst2|51|30~q\ & (\inst2|51|27~q\ & ((\inst|167~3_combout\)))) # 
-- (\inst2|51|30~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(1) & ((\inst|167~3_combout\))) # (\inst2|65|sram|ram_block|auto_generated|q_a\(1) & (\inst2|51|27~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101110011001101110001000000010011111101110111111100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|51|ALT_INV_30~q\,
	datab => \inst2|51|ALT_INV_27~q\,
	datac => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(1),
	datad => \inst|ALT_INV_167~3_combout\,
	datae => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst2|63|37|ALT_INV_3~0_combout\,
	combout => \inst2|63|33|3~0_combout\);

-- Location: MLABCELL_X37_Y52_N16
\inst2|78|13[3]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|78|13[3]~9_combout\ = ( !\inst|167~1_combout\ & ( !\inst2|65|sram|ram_block|auto_generated|q_a\(3) $ (((!\inst|167~3_combout\ $ (!\inst2|51|24~q\ $ (!\inst2|63|33|3~0_combout\))) # (\inst|167~2_combout\))) ) ) # ( \inst|167~1_combout\ & ( 
-- ((!\inst|167~2_combout\ & (((\I[3]~input_o\)))) # (\inst|167~2_combout\ & (\inst2|65|sram|ram_block|auto_generated|q_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100101010101000011110101010110010110010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(3),
	datab => \inst|ALT_INV_167~3_combout\,
	datac => \ALT_INV_I[3]~input_o\,
	datad => \inst|ALT_INV_167~2_combout\,
	datae => \inst|ALT_INV_167~1_combout\,
	dataf => \inst2|63|33|ALT_INV_3~0_combout\,
	datag => \inst2|51|ALT_INV_24~q\,
	combout => \inst2|78|13[3]~9_combout\);

-- Location: FF_X37_Y52_N17
\inst2|51|24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|78|13[3]~9_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|256~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|51|24~q\);

-- Location: IOIBUF_X33_Y56_N94
\I[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(4),
	o => \I[4]~input_o\);

-- Location: MLABCELL_X37_Y52_N4
\inst2|63|29|3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|63|29|3~0_combout\ = ( \inst2|63|33|3~0_combout\ & ( (!\inst|167~3_combout\ $ (!\inst2|65|sram|ram_block|auto_generated|q_a\(3))) # (\inst2|51|24~q\) ) ) # ( !\inst2|63|33|3~0_combout\ & ( (\inst2|51|24~q\ & (!\inst|167~3_combout\ $ 
-- (!\inst2|65|sram|ram_block|auto_generated|q_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_167~3_combout\,
	datac => \inst2|51|ALT_INV_24~q\,
	datad => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst2|63|33|ALT_INV_3~0_combout\,
	combout => \inst2|63|29|3~0_combout\);

-- Location: MLABCELL_X37_Y52_N36
\inst2|78|13[4]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|78|13[4]~13_combout\ = ( !\inst|167~1_combout\ & ( !\inst2|65|sram|ram_block|auto_generated|q_a\(4) $ (((!\inst|167~3_combout\ $ (!\inst2|51|21~q\ $ (!\inst2|63|29|3~0_combout\))) # (\inst|167~2_combout\))) ) ) # ( \inst|167~1_combout\ & ( 
-- ((!\inst|167~2_combout\ & (\I[4]~input_o\)) # (\inst|167~2_combout\ & (((\inst2|65|sram|ram_block|auto_generated|q_a\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100100010110111000011000011111110000100011110110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_167~3_combout\,
	datab => \inst|ALT_INV_167~2_combout\,
	datac => \ALT_INV_I[4]~input_o\,
	datad => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(4),
	datae => \inst|ALT_INV_167~1_combout\,
	dataf => \inst2|63|29|ALT_INV_3~0_combout\,
	datag => \inst2|51|ALT_INV_21~q\,
	combout => \inst2|78|13[4]~13_combout\);

-- Location: FF_X37_Y52_N37
\inst2|51|21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|78|13[4]~13_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|256~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|51|21~q\);

-- Location: IOIBUF_X44_Y56_N1
\I[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(5),
	o => \I[5]~input_o\);

-- Location: MLABCELL_X37_Y52_N10
\inst2|63|33|3~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|63|33|3~0DUPLICATE_combout\ = ( \inst2|65|sram|ram_block|auto_generated|q_a\(2) & ( \inst2|63|37|3~0_combout\ & ( (!\inst2|51|30~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(1) & (\inst2|51|27~q\)) # 
-- (\inst2|65|sram|ram_block|auto_generated|q_a\(1) & ((!\inst|167~3_combout\))))) # (\inst2|51|30~q\ & (((!\inst|167~3_combout\)) # (\inst2|51|27~q\))) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(2) & ( \inst2|63|37|3~0_combout\ & ( 
-- (!\inst2|51|30~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(1) & ((\inst|167~3_combout\))) # (\inst2|65|sram|ram_block|auto_generated|q_a\(1) & (\inst2|51|27~q\)))) # (\inst2|51|30~q\ & (((\inst|167~3_combout\)) # (\inst2|51|27~q\))) ) ) ) # ( 
-- \inst2|65|sram|ram_block|auto_generated|q_a\(2) & ( !\inst2|63|37|3~0_combout\ & ( (!\inst2|51|30~q\ & (\inst2|51|27~q\ & (!\inst|167~3_combout\))) # (\inst2|51|30~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(1) & (\inst2|51|27~q\)) # 
-- (\inst2|65|sram|ram_block|auto_generated|q_a\(1) & ((!\inst|167~3_combout\))))) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(2) & ( !\inst2|63|37|3~0_combout\ & ( (!\inst2|51|30~q\ & (\inst2|51|27~q\ & (\inst|167~3_combout\))) # 
-- (\inst2|51|30~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(1) & ((\inst|167~3_combout\))) # (\inst2|65|sram|ram_block|auto_generated|q_a\(1) & (\inst2|51|27~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100010011001100010111000000011111001101110111001111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|51|ALT_INV_30~q\,
	datab => \inst2|51|ALT_INV_27~q\,
	datac => \inst|ALT_INV_167~3_combout\,
	datad => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(1),
	datae => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst2|63|37|ALT_INV_3~0_combout\,
	combout => \inst2|63|33|3~0DUPLICATE_combout\);

-- Location: MLABCELL_X37_Y52_N34
\inst2|63|1|3~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|63|1|3~0DUPLICATE_combout\ = ( \inst2|65|sram|ram_block|auto_generated|q_a\(3) & ( \inst2|63|33|3~0DUPLICATE_combout\ & ( (!\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (((\inst|167~3_combout\ & \inst2|51|24~q\)) # (\inst2|51|21~q\))) # 
-- (\inst2|65|sram|ram_block|auto_generated|q_a\(4) & ((!\inst|167~3_combout\) # ((\inst2|51|21~q\ & \inst2|51|24~q\)))) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(3) & ( \inst2|63|33|3~0DUPLICATE_combout\ & ( 
-- (!\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (((\inst2|51|21~q\ & \inst2|51|24~q\)) # (\inst|167~3_combout\))) # (\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (((!\inst|167~3_combout\ & \inst2|51|24~q\)) # (\inst2|51|21~q\))) ) ) ) # ( 
-- \inst2|65|sram|ram_block|auto_generated|q_a\(3) & ( !\inst2|63|33|3~0DUPLICATE_combout\ & ( (!\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (\inst2|51|21~q\ & ((\inst2|51|24~q\) # (\inst|167~3_combout\)))) # 
-- (\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (!\inst|167~3_combout\ & ((\inst2|51|24~q\) # (\inst2|51|21~q\)))) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(3) & ( !\inst2|63|33|3~0DUPLICATE_combout\ & ( 
-- (!\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (\inst|167~3_combout\ & ((\inst2|51|24~q\) # (\inst2|51|21~q\)))) # (\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (\inst2|51|21~q\ & ((!\inst|167~3_combout\) # (\inst2|51|24~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001010011000100100011101001010011011110110011101001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_167~3_combout\,
	datab => \inst2|51|ALT_INV_21~q\,
	datac => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(4),
	datad => \inst2|51|ALT_INV_24~q\,
	datae => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst2|63|33|ALT_INV_3~0DUPLICATE_combout\,
	combout => \inst2|63|1|3~0DUPLICATE_combout\);

-- Location: IOIBUF_X33_Y56_N63
\I[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(6),
	o => \I[6]~input_o\);

-- Location: MLABCELL_X37_Y52_N32
\inst2|63|1|3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|63|1|3~0_combout\ = ( \inst2|65|sram|ram_block|auto_generated|q_a\(3) & ( \inst2|63|33|3~0DUPLICATE_combout\ & ( (!\inst2|51|24~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(4) & ((\inst2|51|21~q\))) # 
-- (\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (!\inst|167~3_combout\)))) # (\inst2|51|24~q\ & ((!\inst|167~3_combout\ $ (!\inst2|65|sram|ram_block|auto_generated|q_a\(4))) # (\inst2|51|21~q\))) ) ) ) # ( 
-- !\inst2|65|sram|ram_block|auto_generated|q_a\(3) & ( \inst2|63|33|3~0DUPLICATE_combout\ & ( (!\inst2|51|24~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (\inst|167~3_combout\)) # (\inst2|65|sram|ram_block|auto_generated|q_a\(4) & 
-- ((\inst2|51|21~q\))))) # (\inst2|51|24~q\ & ((!\inst|167~3_combout\ $ (!\inst2|65|sram|ram_block|auto_generated|q_a\(4))) # (\inst2|51|21~q\))) ) ) ) # ( \inst2|65|sram|ram_block|auto_generated|q_a\(3) & ( !\inst2|63|33|3~0DUPLICATE_combout\ & ( 
-- (!\inst2|51|24~q\ & (\inst2|51|21~q\ & (!\inst|167~3_combout\ $ (!\inst2|65|sram|ram_block|auto_generated|q_a\(4))))) # (\inst2|51|24~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(4) & ((\inst2|51|21~q\))) # 
-- (\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (!\inst|167~3_combout\)))) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(3) & ( !\inst2|63|33|3~0DUPLICATE_combout\ & ( (!\inst2|51|24~q\ & (\inst2|51|21~q\ & (!\inst|167~3_combout\ $ 
-- (!\inst2|65|sram|ram_block|auto_generated|q_a\(4))))) # (\inst2|51|24~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(4) & (\inst|167~3_combout\)) # (\inst2|65|sram|ram_block|auto_generated|q_a\(4) & ((\inst2|51|21~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100100011000100110010101001010111001110110011011110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_167~3_combout\,
	datab => \inst2|51|ALT_INV_21~q\,
	datac => \inst2|51|ALT_INV_24~q\,
	datad => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(4),
	datae => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst2|63|33|ALT_INV_3~0DUPLICATE_combout\,
	combout => \inst2|63|1|3~0_combout\);

-- Location: MLABCELL_X37_Y52_N6
\inst2|63|2|3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|63|2|3~0_combout\ = ( \inst2|63|1|3~0_combout\ & ( (!\inst|167~3_combout\ $ (!\inst2|65|sram|ram_block|auto_generated|q_a\(5))) # (\inst2|51|18~q\) ) ) # ( !\inst2|63|1|3~0_combout\ & ( (\inst2|51|18~q\ & (!\inst|167~3_combout\ $ 
-- (!\inst2|65|sram|ram_block|auto_generated|q_a\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_167~3_combout\,
	datac => \inst2|51|ALT_INV_18~q\,
	datad => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst2|63|1|ALT_INV_3~0_combout\,
	combout => \inst2|63|2|3~0_combout\);

-- Location: MLABCELL_X37_Y52_N12
\inst2|78|13[6]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|78|13[6]~21_combout\ = ( !\inst|167~1_combout\ & ( !\inst2|65|sram|ram_block|auto_generated|q_a\(6) $ (((!\inst|167~3_combout\ $ (!\inst2|51|15~q\ $ (!\inst2|63|2|3~0_combout\))) # (\inst|167~2_combout\))) ) ) # ( \inst|167~1_combout\ & ( 
-- ((!\inst|167~2_combout\ & (\I[6]~input_o\)) # (\inst|167~2_combout\ & (((\inst2|65|sram|ram_block|auto_generated|q_a\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100100010110111000011000011111110000100011110110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_167~3_combout\,
	datab => \inst|ALT_INV_167~2_combout\,
	datac => \ALT_INV_I[6]~input_o\,
	datad => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(6),
	datae => \inst|ALT_INV_167~1_combout\,
	dataf => \inst2|63|2|ALT_INV_3~0_combout\,
	datag => \inst2|51|ALT_INV_15~q\,
	combout => \inst2|78|13[6]~21_combout\);

-- Location: FF_X37_Y52_N13
\inst2|51|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|78|13[6]~21_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|256~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|51|15~q\);

-- Location: M9K_X36_Y52_N0
\inst2|65|sram|ram_block|auto_generated|ram_block1a0\ : arriaii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FF0030400A4001FC0080",
	clk0_core_clock_enable => "ena2",
	clk0_input_clock_enable => "ena2",
	clock_duty_cycle_dependence => "on",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "D:/FACULTATE/AN3/Semestrul2/LMDSH/Tema1/SchemaQuartus/program_test.mif",
	init_file_layout => "port_a",
	logical_ram_name => "dp:inst2|lpm_ram_dq:65|altram:sram|altsyncram:ram_block|altsyncram_vpl1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|167~5_combout\,
	portare => VCC,
	clk0 => \Clock~inputclkctrl_outclk\,
	ena2 => VCC,
	portadatain => \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|65|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X30_Y56_N63
\I[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(7),
	o => \I[7]~input_o\);

-- Location: MLABCELL_X37_Y52_N20
\inst2|63|3|3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|63|3|3~0_combout\ = ( \inst2|65|sram|ram_block|auto_generated|q_a\(6) & ( \inst2|63|1|3~0_combout\ & ( (!\inst2|51|18~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(5) & ((\inst2|51|15~q\))) # (\inst2|65|sram|ram_block|auto_generated|q_a\(5) 
-- & (!\inst|167~3_combout\)))) # (\inst2|51|18~q\ & ((!\inst|167~3_combout\) # ((\inst2|51|15~q\)))) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(6) & ( \inst2|63|1|3~0_combout\ & ( (!\inst2|51|18~q\ & 
-- ((!\inst2|65|sram|ram_block|auto_generated|q_a\(5) & (\inst|167~3_combout\)) # (\inst2|65|sram|ram_block|auto_generated|q_a\(5) & ((\inst2|51|15~q\))))) # (\inst2|51|18~q\ & (((\inst2|51|15~q\)) # (\inst|167~3_combout\))) ) ) ) # ( 
-- \inst2|65|sram|ram_block|auto_generated|q_a\(6) & ( !\inst2|63|1|3~0_combout\ & ( (!\inst2|51|18~q\ & (!\inst|167~3_combout\ & ((\inst2|51|15~q\)))) # (\inst2|51|18~q\ & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(5) & ((\inst2|51|15~q\))) # 
-- (\inst2|65|sram|ram_block|auto_generated|q_a\(5) & (!\inst|167~3_combout\)))) ) ) ) # ( !\inst2|65|sram|ram_block|auto_generated|q_a\(6) & ( !\inst2|63|1|3~0_combout\ & ( (!\inst2|51|18~q\ & (\inst|167~3_combout\ & ((\inst2|51|15~q\)))) # (\inst2|51|18~q\ 
-- & ((!\inst2|65|sram|ram_block|auto_generated|q_a\(5) & (\inst|167~3_combout\)) # (\inst2|65|sram|ram_block|auto_generated|q_a\(5) & ((\inst2|51|15~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110111000001001101110000110001011111110100110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|51|ALT_INV_18~q\,
	datab => \inst|ALT_INV_167~3_combout\,
	datac => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(5),
	datad => \inst2|51|ALT_INV_15~q\,
	datae => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(6),
	dataf => \inst2|63|1|ALT_INV_3~0_combout\,
	combout => \inst2|63|3|3~0_combout\);

-- Location: MLABCELL_X37_Y52_N0
\inst2|78|13[7]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|78|13[7]~25_combout\ = ( !\inst|167~1_combout\ & ( !\inst2|65|sram|ram_block|auto_generated|q_a\(7) $ (((!\inst2|51|11~q\ $ (!\inst|167~3_combout\ $ (!\inst2|63|3|3~0_combout\))) # (\inst|167~2_combout\))) ) ) # ( \inst|167~1_combout\ & ( 
-- (!\inst|167~2_combout\ & (((\I[7]~input_o\)))) # (\inst|167~2_combout\ & (\inst2|65|sram|ram_block|auto_generated|q_a\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101100110010101000111010001110110010101010110010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(7),
	datab => \inst|ALT_INV_167~2_combout\,
	datac => \ALT_INV_I[7]~input_o\,
	datad => \inst|ALT_INV_167~3_combout\,
	datae => \inst|ALT_INV_167~1_combout\,
	dataf => \inst2|63|3|ALT_INV_3~0_combout\,
	datag => \inst2|51|ALT_INV_11~q\,
	combout => \inst2|78|13[7]~25_combout\);

-- Location: FF_X37_Y52_N1
\inst2|51|11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|78|13[7]~25_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|256~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|51|11~q\);

-- Location: MLABCELL_X37_Y52_N24
\inst2|78|13[5]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|78|13[5]~17_combout\ = ( !\inst|167~1_combout\ & ( !\inst2|65|sram|ram_block|auto_generated|q_a\(5) $ (((!\inst|167~3_combout\ $ (!\inst2|51|18~q\ $ (!\inst2|63|1|3~0DUPLICATE_combout\))) # (\inst|167~2_combout\))) ) ) # ( \inst|167~1_combout\ & ( 
-- ((!\inst|167~2_combout\ & (\I[5]~input_o\)) # (\inst|167~2_combout\ & (((\inst2|65|sram|ram_block|auto_generated|q_a\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100100010000100000011000000110010110111011110110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_167~3_combout\,
	datab => \inst|ALT_INV_167~2_combout\,
	datac => \ALT_INV_I[5]~input_o\,
	datad => \inst2|63|1|ALT_INV_3~0DUPLICATE_combout\,
	datae => \inst|ALT_INV_167~1_combout\,
	dataf => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(5),
	datag => \inst2|51|ALT_INV_18~q\,
	combout => \inst2|78|13[5]~17_combout\);

-- Location: FF_X37_Y52_N25
\inst2|51|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|78|13[5]~17_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|256~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|51|18~q\);

-- Location: FF_X35_Y52_N17
\inst2|33|21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst2|65|sram|ram_block|auto_generated|q_a\(4),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|167~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|33|21~q\);

-- Location: LABCELL_X35_Y52_N18
\inst2|61|4[4]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|61|4[4]~4_combout\ = ( \inst|263~0_combout\ & ( \inst2|33|21~q\ ) ) # ( !\inst|263~0_combout\ & ( !\inst2|60|39~q\ $ (((!\inst2|70|33|2~combout\) # (!\inst2|60|24~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|70|33|ALT_INV_2~combout\,
	datab => \inst2|60|ALT_INV_24~q\,
	datac => \inst2|33|ALT_INV_21~q\,
	datad => \inst2|60|ALT_INV_39~q\,
	dataf => \inst|ALT_INV_263~0_combout\,
	combout => \inst2|61|4[4]~4_combout\);

-- Location: FF_X35_Y52_N19
\inst2|60|39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|61|4[4]~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|248~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|60|39~q\);

-- Location: LABCELL_X35_Y52_N16
\inst2|73|4[4]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|73|4[4]~4_combout\ = ( \inst|251~0_combout\ & ( \inst2|33|21~q\ ) ) # ( !\inst|251~0_combout\ & ( \inst2|60|39~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|60|ALT_INV_39~q\,
	datad => \inst2|33|ALT_INV_21~q\,
	dataf => \inst|ALT_INV_251~0_combout\,
	combout => \inst2|73|4[4]~4_combout\);

-- Location: FF_X35_Y52_N21
\inst2|33|24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst2|65|sram|ram_block|auto_generated|q_a\(3),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|167~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|33|24~q\);

-- Location: LABCELL_X35_Y52_N22
\inst2|61|4[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|61|4[3]~3_combout\ = ( \inst2|70|33|2~combout\ & ( (!\inst|263~0_combout\ & ((!\inst2|60|24~q\))) # (\inst|263~0_combout\ & (\inst2|33|24~q\)) ) ) # ( !\inst2|70|33|2~combout\ & ( (!\inst|263~0_combout\ & ((\inst2|60|24~q\))) # 
-- (\inst|263~0_combout\ & (\inst2|33|24~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010111110101000001011111010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|33|ALT_INV_24~q\,
	datac => \inst|ALT_INV_263~0_combout\,
	datad => \inst2|60|ALT_INV_24~q\,
	dataf => \inst2|70|33|ALT_INV_2~combout\,
	combout => \inst2|61|4[3]~3_combout\);

-- Location: FF_X35_Y52_N23
\inst2|60|24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|61|4[3]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|248~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|60|24~q\);

-- Location: LABCELL_X35_Y52_N20
\inst2|73|4[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|73|4[3]~3_combout\ = ( \inst|251~0_combout\ & ( \inst2|33|24~q\ ) ) # ( !\inst|251~0_combout\ & ( \inst2|60|24~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|60|ALT_INV_24~q\,
	datad => \inst2|33|ALT_INV_24~q\,
	dataf => \inst|ALT_INV_251~0_combout\,
	combout => \inst2|73|4[3]~3_combout\);

-- Location: FF_X35_Y52_N35
\inst2|33|27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst2|65|sram|ram_block|auto_generated|q_a\(2),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|167~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|33|27~q\);

-- Location: LABCELL_X35_Y52_N26
\inst2|61|4[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|61|4[2]~2_combout\ = ( \inst|263~0_combout\ & ( \inst2|33|27~q\ ) ) # ( !\inst|263~0_combout\ & ( !\inst2|60|27~q\ $ (((!\inst2|60|33~q\) # (!\inst2|60|30~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|60|ALT_INV_33~q\,
	datab => \inst2|60|ALT_INV_30~q\,
	datac => \inst2|33|ALT_INV_27~q\,
	datad => \inst2|60|ALT_INV_27~q\,
	dataf => \inst|ALT_INV_263~0_combout\,
	combout => \inst2|61|4[2]~2_combout\);

-- Location: FF_X35_Y52_N27
\inst2|60|27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|61|4[2]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|248~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|60|27~q\);

-- Location: LABCELL_X35_Y52_N34
\inst2|73|4[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|73|4[2]~2_combout\ = ( \inst|251~0_combout\ & ( \inst2|33|27~q\ ) ) # ( !\inst|251~0_combout\ & ( \inst2|60|27~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|60|ALT_INV_27~q\,
	datad => \inst2|33|ALT_INV_27~q\,
	dataf => \inst|ALT_INV_251~0_combout\,
	combout => \inst2|73|4[2]~2_combout\);

-- Location: LABCELL_X38_Y52_N16
\inst2|78|13[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|78|13[1]~1_combout\ = ( !\inst|167~1_combout\ & ( !\inst2|65|sram|ram_block|auto_generated|q_a\(1) $ (((!\inst2|51|30~q\ $ (!\inst|167~3_combout\ $ (!\inst2|63|37|3~0_combout\))) # (\inst|167~2_combout\))) ) ) # ( \inst|167~1_combout\ & ( 
-- (!\inst|167~2_combout\ & (((\I[1]~input_o\)))) # (\inst|167~2_combout\ & ((((\inst2|65|sram|ram_block|auto_generated|q_a\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010100011010111000010100101111110000010011111010000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_167~2_combout\,
	datab => \inst2|51|ALT_INV_30~q\,
	datac => \ALT_INV_I[1]~input_o\,
	datad => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(1),
	datae => \inst|ALT_INV_167~1_combout\,
	dataf => \inst2|63|37|ALT_INV_3~0_combout\,
	datag => \inst|ALT_INV_167~3_combout\,
	combout => \inst2|78|13[1]~1_combout\);

-- Location: FF_X38_Y52_N17
\inst2|51|30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|78|13[1]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|256~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|51|30~q\);

-- Location: LABCELL_X38_Y52_N26
\inst|248~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|248~1_combout\ = ( !\inst2|51|27~q\ & ( (!\inst2|51|30~q\ & !\inst2|51|33~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|51|ALT_INV_30~q\,
	datad => \inst2|51|ALT_INV_33~q\,
	dataf => \inst2|51|ALT_INV_27~q\,
	combout => \inst|248~1_combout\);

-- Location: LABCELL_X35_Y52_N12
\inst|248~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|248~2_combout\ = ( !\inst2|51|11~q\ & ( (\inst|229~q\ & \inst|151~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_229~q\,
	datac => \inst|ALT_INV_151~q\,
	dataf => \inst2|51|ALT_INV_11~q\,
	combout => \inst|248~2_combout\);

-- Location: LABCELL_X38_Y52_N38
\inst|248~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|248~0_combout\ = ( \inst|3~q\ & ( !\inst2|51|24~q\ & ( (!\inst2|51|18~q\ & (!\inst2|51|21~q\ & (!\inst|2~q\ & !\inst2|51|15~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|51|ALT_INV_18~q\,
	datab => \inst2|51|ALT_INV_21~q\,
	datac => \inst|ALT_INV_2~q\,
	datad => \inst2|51|ALT_INV_15~q\,
	datae => \inst|ALT_INV_3~q\,
	dataf => \inst2|51|ALT_INV_24~q\,
	combout => \inst|248~0_combout\);

-- Location: LABCELL_X35_Y52_N30
\inst|248~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|248~3_combout\ = ( \inst|248~0_combout\ & ( \inst|2~q\ & ( ((\inst|248~2_combout\ & ((!\inst|3~q\) # (\inst|248~1_combout\)))) # (\inst|167~4_combout\) ) ) ) # ( !\inst|248~0_combout\ & ( \inst|2~q\ & ( ((!\inst|3~q\ & \inst|248~2_combout\)) # 
-- (\inst|167~4_combout\) ) ) ) # ( \inst|248~0_combout\ & ( !\inst|2~q\ & ( ((\inst|248~1_combout\ & \inst|248~2_combout\)) # (\inst|167~4_combout\) ) ) ) # ( !\inst|248~0_combout\ & ( !\inst|2~q\ & ( \inst|167~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101111101010101110111010101010111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_167~4_combout\,
	datab => \inst|ALT_INV_3~q\,
	datac => \inst|ALT_INV_248~1_combout\,
	datad => \inst|ALT_INV_248~2_combout\,
	datae => \inst|ALT_INV_248~0_combout\,
	dataf => \inst|ALT_INV_2~q\,
	combout => \inst|248~3_combout\);

-- Location: FF_X35_Y52_N5
\inst2|60|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|61|4[0]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|248~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|60|33~q\);

-- Location: LABCELL_X35_Y52_N0
\inst2|73|4[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|73|4[0]~0_combout\ = ( \inst|251~0_combout\ & ( \inst2|33|33~q\ ) ) # ( !\inst|251~0_combout\ & ( \inst2|60|33~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|60|ALT_INV_33~q\,
	datad => \inst2|33|ALT_INV_33~q\,
	dataf => \inst|ALT_INV_251~0_combout\,
	combout => \inst2|73|4[0]~0_combout\);

-- Location: LABCELL_X38_Y52_N12
\inst2|78|13[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|78|13[0]~0_combout\ = ( \inst2|51|33~q\ & ( \inst2|65|sram|ram_block|auto_generated|q_a\(0) & ( ((\I[0]~input_o\ & \inst|167~1_combout\)) # (\inst|167~2_combout\) ) ) ) # ( !\inst2|51|33~q\ & ( \inst2|65|sram|ram_block|auto_generated|q_a\(0) & ( 
-- ((!\inst|167~1_combout\) # (\I[0]~input_o\)) # (\inst|167~2_combout\) ) ) ) # ( \inst2|51|33~q\ & ( !\inst2|65|sram|ram_block|auto_generated|q_a\(0) & ( (!\inst|167~2_combout\ & ((!\inst|167~1_combout\) # (\I[0]~input_o\))) ) ) ) # ( !\inst2|51|33~q\ & ( 
-- !\inst2|65|sram|ram_block|auto_generated|q_a\(0) & ( (!\inst|167~2_combout\ & (\I[0]~input_o\ & \inst|167~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010101000101010001011110111111101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_167~2_combout\,
	datab => \ALT_INV_I[0]~input_o\,
	datac => \inst|ALT_INV_167~1_combout\,
	datae => \inst2|51|ALT_INV_33~q\,
	dataf => \inst2|65|sram|ram_block|auto_generated|ALT_INV_q_a\(0),
	combout => \inst2|78|13[0]~0_combout\);

-- Location: FF_X38_Y52_N13
\inst2|51|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst2|78|13[0]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|256~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|51|33~q\);

-- Location: FF_X37_Y52_N31
\inst2|33|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst2|65|sram|ram_block|auto_generated|q_a\(6),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|167~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|33|15~q\);

-- Location: LABCELL_X38_Y52_N10
\inst|218\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|218~combout\ = ( \inst|2~q\ & ( \inst2|33|15~q\ & ( (!\inst|229~q\ & (!\inst|151~q\ & !\inst|3~q\)) # (\inst|229~q\ & (\inst|151~q\ & \inst|3~q\)) ) ) ) # ( !\inst|2~q\ & ( \inst2|33|15~q\ & ( (!\inst|229~q\ & (!\inst|151~q\ & \inst|3~q\)) ) ) ) # ( 
-- \inst|2~q\ & ( !\inst2|33|15~q\ & ( (\inst|229~q\ & (\inst|151~q\ & \inst|3~q\)) ) ) ) # ( !\inst|2~q\ & ( !\inst2|33|15~q\ & ( (!\inst|229~q\ & (!\inst|151~q\ & \inst|3~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000000001000100000000100010001000100000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_229~q\,
	datab => \inst|ALT_INV_151~q\,
	datad => \inst|ALT_INV_3~q\,
	datae => \inst|ALT_INV_2~q\,
	dataf => \inst2|33|ALT_INV_15~q\,
	combout => \inst|218~combout\);

-- Location: FF_X38_Y52_N11
\inst|2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|218~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|2~q\);

-- Location: IOIBUF_X31_Y56_N1
\Enter~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enter,
	o => \Enter~input_o\);

-- Location: LABCELL_X35_Y52_N8
\inst|228\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|228~combout\ = ( \inst|3~q\ & ( (\inst|2~q\ & (\inst|229~q\ & \inst|151~q\)) ) ) # ( !\inst|3~q\ & ( (!\inst|2~q\ & (\inst|229~q\ & (!\Enter~input_o\ & \inst|151~q\))) # (\inst|2~q\ & (!\inst|229~q\ & ((!\inst|151~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100000010001000010000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_2~q\,
	datab => \inst|ALT_INV_229~q\,
	datac => \ALT_INV_Enter~input_o\,
	datad => \inst|ALT_INV_151~q\,
	dataf => \inst|ALT_INV_3~q\,
	combout => \inst|228~combout\);

-- Location: FF_X35_Y52_N9
\inst|151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|228~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|151~q\);

-- Location: FF_X35_Y52_N3
\inst2|33|11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst2|65|sram|ram_block|auto_generated|q_a\(7),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|167~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|33|11~q\);

-- Location: LABCELL_X35_Y52_N36
\inst|224\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|224~combout\ = ( \inst|229~q\ & ( \inst|3~q\ & ( (\inst|151~q\ & \inst|2~q\) ) ) ) # ( \inst|229~q\ & ( !\inst|3~q\ & ( (\inst|151~q\ & (!\inst|2~q\ & !\Enter~input_o\)) ) ) ) # ( !\inst|229~q\ & ( !\inst|3~q\ & ( (!\inst|151~q\ & (\inst2|33|11~q\ & 
-- \inst|2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010010100000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_151~q\,
	datab => \inst2|33|ALT_INV_11~q\,
	datac => \inst|ALT_INV_2~q\,
	datad => \ALT_INV_Enter~input_o\,
	datae => \inst|ALT_INV_229~q\,
	dataf => \inst|ALT_INV_3~q\,
	combout => \inst|224~combout\);

-- Location: FF_X35_Y52_N37
\inst|229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|224~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|229~q\);

-- Location: FF_X37_Y52_N27
\inst2|33|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst2|65|sram|ram_block|auto_generated|q_a\(5),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|167~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|33|18~q\);

-- Location: LABCELL_X38_Y52_N4
\inst|170\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|170~combout\ = ( \inst|2~q\ & ( (!\inst|229~q\ & (!\inst|151~q\ & (\inst2|33|18~q\ & !\inst|3~q\))) # (\inst|229~q\ & (\inst|151~q\ & ((\inst|3~q\)))) ) ) # ( !\inst|2~q\ & ( (!\inst|229~q\ & (!\inst|151~q\ & !\inst|3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000001000000100010000100000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_229~q\,
	datab => \inst|ALT_INV_151~q\,
	datac => \inst2|33|ALT_INV_18~q\,
	datad => \inst|ALT_INV_3~q\,
	dataf => \inst|ALT_INV_2~q\,
	combout => \inst|170~combout\);

-- Location: FF_X38_Y52_N5
\inst|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|170~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|3~q\);

-- Location: LABCELL_X38_Y52_N24
\inst|167~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|167~0_combout\ = ( \inst|2~q\ & ( (\inst|3~q\ & (\inst|151~q\ & \inst|229~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_3~q\,
	datab => \inst|ALT_INV_151~q\,
	datac => \inst|ALT_INV_229~q\,
	dataf => \inst|ALT_INV_2~q\,
	combout => \inst|167~0_combout\);

ww_Halt <= \Halt~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;
END structure;


