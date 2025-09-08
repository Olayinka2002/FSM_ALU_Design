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
-- Generated on "05/26/2025 09:03:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Half_Adder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Half_Adder_vhd_vec_tst IS
END Half_Adder_vhd_vec_tst;
ARCHITECTURE Half_Adder_arch OF Half_Adder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C_OUT : STD_LOGIC;
SIGNAL SUM : STD_LOGIC;
COMPONENT Half_Adder
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C_OUT : OUT STD_LOGIC;
	SUM : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Half_Adder
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C_OUT => C_OUT,
	SUM => SUM
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 110000 ps;
	A <= '1';
	WAIT FOR 120000 ps;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
	WAIT FOR 60000 ps;
	B <= '1';
	WAIT FOR 50000 ps;
	B <= '0';
	WAIT FOR 60000 ps;
	B <= '1';
	WAIT FOR 60000 ps;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;
END Half_Adder_arch;
