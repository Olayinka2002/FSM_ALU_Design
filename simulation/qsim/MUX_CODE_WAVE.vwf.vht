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
-- Generated on "05/23/2025 00:26:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MUX_CODE
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX_CODE_vhd_vec_tst IS
END MUX_CODE_vhd_vec_tst;
ARCHITECTURE MUX_CODE_arch OF MUX_CODE_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inputA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL inputB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL inputS : STD_LOGIC;
SIGNAL outputF : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT MUX_CODE
	PORT (
	inputA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	inputB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	inputS : IN STD_LOGIC;
	outputF : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MUX_CODE
	PORT MAP (
-- list connections between master ports and signals
	inputA => inputA,
	inputB => inputB,
	inputS => inputS,
	outputF => outputF
	);
-- inputA[7]
t_prcs_inputA_7: PROCESS
BEGIN
	inputA(7) <= '0';
WAIT;
END PROCESS t_prcs_inputA_7;
-- inputA[6]
t_prcs_inputA_6: PROCESS
BEGIN
	inputA(6) <= '0';
WAIT;
END PROCESS t_prcs_inputA_6;
-- inputA[5]
t_prcs_inputA_5: PROCESS
BEGIN
	inputA(5) <= '0';
WAIT;
END PROCESS t_prcs_inputA_5;
-- inputA[4]
t_prcs_inputA_4: PROCESS
BEGIN
	inputA(4) <= '1';
WAIT;
END PROCESS t_prcs_inputA_4;
-- inputA[3]
t_prcs_inputA_3: PROCESS
BEGIN
	inputA(3) <= '1';
WAIT;
END PROCESS t_prcs_inputA_3;
-- inputA[2]
t_prcs_inputA_2: PROCESS
BEGIN
	inputA(2) <= '0';
WAIT;
END PROCESS t_prcs_inputA_2;
-- inputA[1]
t_prcs_inputA_1: PROCESS
BEGIN
	inputA(1) <= '0';
WAIT;
END PROCESS t_prcs_inputA_1;
-- inputA[0]
t_prcs_inputA_0: PROCESS
BEGIN
	inputA(0) <= '1';
WAIT;
END PROCESS t_prcs_inputA_0;
-- inputB[7]
t_prcs_inputB_7: PROCESS
BEGIN
	inputB(7) <= '0';
WAIT;
END PROCESS t_prcs_inputB_7;
-- inputB[6]
t_prcs_inputB_6: PROCESS
BEGIN
	inputB(6) <= '1';
WAIT;
END PROCESS t_prcs_inputB_6;
-- inputB[5]
t_prcs_inputB_5: PROCESS
BEGIN
	inputB(5) <= '0';
WAIT;
END PROCESS t_prcs_inputB_5;
-- inputB[4]
t_prcs_inputB_4: PROCESS
BEGIN
	inputB(4) <= '1';
WAIT;
END PROCESS t_prcs_inputB_4;
-- inputB[3]
t_prcs_inputB_3: PROCESS
BEGIN
	inputB(3) <= '0';
WAIT;
END PROCESS t_prcs_inputB_3;
-- inputB[2]
t_prcs_inputB_2: PROCESS
BEGIN
	inputB(2) <= '1';
WAIT;
END PROCESS t_prcs_inputB_2;
-- inputB[1]
t_prcs_inputB_1: PROCESS
BEGIN
	inputB(1) <= '1';
WAIT;
END PROCESS t_prcs_inputB_1;
-- inputB[0]
t_prcs_inputB_0: PROCESS
BEGIN
	inputB(0) <= '1';
WAIT;
END PROCESS t_prcs_inputB_0;

-- inputS
t_prcs_inputS: PROCESS
BEGIN
	inputS <= '0';
	WAIT FOR 10000 ps;
	inputS <= '1';
	WAIT FOR 460000 ps;
	inputS <= '0';
WAIT;
END PROCESS t_prcs_inputS;
END MUX_CODE_arch;
