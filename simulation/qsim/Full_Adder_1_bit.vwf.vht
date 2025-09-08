-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/28/2025 11:51:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Full_Adder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Full_Adder_vhd_vec_tst IS
END Full_Adder_vhd_vec_tst;
ARCHITECTURE Full_Adder_arch OF Full_Adder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C_IN : STD_LOGIC;
SIGNAL C_OUT : STD_LOGIC;
SIGNAL SUM : STD_LOGIC;
COMPONENT Full_Adder
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C_IN : IN STD_LOGIC;
	C_OUT : OUT STD_LOGIC;
	SUM : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Full_Adder
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C_IN => C_IN,
	C_OUT => C_OUT,
	SUM => SUM
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 210000 ps;
	A <= '1';
	WAIT FOR 260000 ps;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
	WAIT FOR 100000 ps;
	B <= '1';
	WAIT FOR 100000 ps;
	B <= '0';
	WAIT FOR 140000 ps;
	B <= '1';
	WAIT FOR 130000 ps;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- C_IN
t_prcs_C_IN: PROCESS
BEGIN
	C_IN <= '0';
	WAIT FOR 60000 ps;
	C_IN <= '1';
	WAIT FOR 40000 ps;
	C_IN <= '0';
	WAIT FOR 40000 ps;
	C_IN <= '1';
	WAIT FOR 60000 ps;
	C_IN <= '0';
	WAIT FOR 70000 ps;
	C_IN <= '1';
	WAIT FOR 70000 ps;
	C_IN <= '0';
	WAIT FOR 50000 ps;
	C_IN <= '1';
	WAIT FOR 80000 ps;
	C_IN <= '0';
WAIT;
END PROCESS t_prcs_C_IN;
END Full_Adder_arch;
