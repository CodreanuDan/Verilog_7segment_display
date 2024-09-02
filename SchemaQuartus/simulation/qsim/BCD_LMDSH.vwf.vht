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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/26/2023 15:43:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BCD_LMDSH
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BCD_LMDSH_vhd_vec_tst IS
END BCD_LMDSH_vhd_vec_tst;
ARCHITECTURE BCD_LMDSH_arch OF BCD_LMDSH_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL ya : STD_LOGIC;
SIGNAL yb : STD_LOGIC;
SIGNAL yc : STD_LOGIC;
SIGNAL yd : STD_LOGIC;
SIGNAL ye : STD_LOGIC;
SIGNAL yf : STD_LOGIC;
SIGNAL yg : STD_LOGIC;
COMPONENT BCD_LMDSH
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	D : IN STD_LOGIC;
	ya : OUT STD_LOGIC;
	yb : OUT STD_LOGIC;
	yc : OUT STD_LOGIC;
	yd : OUT STD_LOGIC;
	ye : OUT STD_LOGIC;
	yf : OUT STD_LOGIC;
	yg : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BCD_LMDSH
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	ya => ya,
	yb => yb,
	yc => yc,
	yd => yd,
	ye => ye,
	yf => yf,
	yg => yg
	);

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '0';
	WAIT FOR 240000 ps;
	D <= '1';
	WAIT FOR 240000 ps;
	D <= '0';
WAIT;
END PROCESS t_prcs_D;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
	WAIT FOR 120000 ps;
	C <= '1';
	WAIT FOR 120000 ps;
	C <= '0';
	WAIT FOR 120000 ps;
	C <= '1';
	WAIT FOR 120000 ps;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
	WAIT FOR 60000 ps;
	B <= '1';
	WAIT FOR 60000 ps;
	B <= '0';
	WAIT FOR 60000 ps;
	B <= '1';
	WAIT FOR 60000 ps;
	B <= '0';
	WAIT FOR 60000 ps;
	B <= '1';
	WAIT FOR 60000 ps;
	B <= '0';
	WAIT FOR 60000 ps;
	B <= '1';
	WAIT FOR 60000 ps;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;
END BCD_LMDSH_arch;
