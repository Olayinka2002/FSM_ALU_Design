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
-- Generated on "05/21/2025 15:28:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          project1_or_gate
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY project1_or_gate_vhd_vec_tst IS
END project1_or_gate_vhd_vec_tst;
ARCHITECTURE project1_or_gate_arch OF project1_or_gate_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL input_A : STD_LOGIC;
SIGNAL input_B : STD_LOGIC;
SIGNAL output : STD_LOGIC;
COMPONENT project1_or_gate
	PORT (
	input_A : IN STD_LOGIC;
	input_B : IN STD_LOGIC;
	output : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : project1_or_gate
	PORT MAP (
-- list connections between master ports and signals
	input_A => input_A,
	input_B => input_B,
	output => output
	);

-- input_A
t_prcs_input_A: PROCESS
BEGIN
	input_A <= '0';
	WAIT FOR 300000 ps;
	input_A <= '1';
	WAIT FOR 300000 ps;
	input_A <= '0';
WAIT;
END PROCESS t_prcs_input_A;

-- input_B
t_prcs_input_B: PROCESS
BEGIN
	input_B <= '0';
	WAIT FOR 160000 ps;
	input_B <= '1';
	WAIT FOR 140000 ps;
	input_B <= '0';
	WAIT FOR 160000 ps;
	input_B <= '1';
	WAIT FOR 140000 ps;
	input_B <= '0';
WAIT;
END PROCESS t_prcs_input_B;
END project1_or_gate_arch;
