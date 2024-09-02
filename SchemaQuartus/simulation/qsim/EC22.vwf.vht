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
-- Generated on "05/23/2023 20:11:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EC2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EC2_vhd_vec_tst IS
END EC2_vhd_vec_tst;
ARCHITECTURE EC2_arch OF EC2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL Enter : STD_LOGIC;
SIGNAL Halt : STD_LOGIC;
SIGNAL I : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
COMPONENT EC2
	PORT (
	A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Clock : IN STD_LOGIC;
	Enter : IN STD_LOGIC;
	Halt : OUT STD_LOGIC;
	I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : EC2
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Clock => Clock,
	Enter => Enter,
	Halt => Halt,
	I => I,
	Reset => Reset
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 5000 ps;
	Clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;

-- Enter
t_prcs_Enter: PROCESS
BEGIN
	Enter <= '0';
	WAIT FOR 50000 ps;
	Enter <= '1';
	WAIT FOR 80000 ps;
	Enter <= '0';
	WAIT FOR 50000 ps;
	Enter <= '1';
	WAIT FOR 60000 ps;
	Enter <= '0';
WAIT;
END PROCESS t_prcs_Enter;
-- I[7]
t_prcs_I_7: PROCESS
BEGIN
	I(7) <= '0';
WAIT;
END PROCESS t_prcs_I_7;
-- I[6]
t_prcs_I_6: PROCESS
BEGIN
	I(6) <= '0';
WAIT;
END PROCESS t_prcs_I_6;
-- I[5]
t_prcs_I_5: PROCESS
BEGIN
	I(5) <= '0';
	WAIT FOR 50000 ps;
	I(5) <= '1';
	WAIT FOR 80000 ps;
	I(5) <= '0';
WAIT;
END PROCESS t_prcs_I_5;
-- I[4]
t_prcs_I_4: PROCESS
BEGIN
	I(4) <= '0';
WAIT;
END PROCESS t_prcs_I_4;
-- I[3]
t_prcs_I_3: PROCESS
BEGIN
	I(3) <= '0';
	WAIT FOR 180000 ps;
	I(3) <= '1';
	WAIT FOR 60000 ps;
	I(3) <= '0';
WAIT;
END PROCESS t_prcs_I_3;
-- I[2]
t_prcs_I_2: PROCESS
BEGIN
	I(2) <= '0';
	WAIT FOR 180000 ps;
	I(2) <= '1';
	WAIT FOR 60000 ps;
	I(2) <= '0';
WAIT;
END PROCESS t_prcs_I_2;
-- I[1]
t_prcs_I_1: PROCESS
BEGIN
	I(1) <= '0';
	WAIT FOR 50000 ps;
	I(1) <= '1';
	WAIT FOR 80000 ps;
	I(1) <= '0';
	WAIT FOR 50000 ps;
	I(1) <= '1';
	WAIT FOR 60000 ps;
	I(1) <= '0';
WAIT;
END PROCESS t_prcs_I_1;
-- I[0]
t_prcs_I_0: PROCESS
BEGIN
	I(0) <= '0';
	WAIT FOR 180000 ps;
	I(0) <= '1';
	WAIT FOR 60000 ps;
	I(0) <= '0';
WAIT;
END PROCESS t_prcs_I_0;
END EC2_arch;
