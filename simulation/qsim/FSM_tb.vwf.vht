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
-- Generated on "09/07/2025 19:28:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fsm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fsm_vhd_vec_tst IS
END fsm_vhd_vec_tst;
ARCHITECTURE fsm_arch OF fsm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL acc : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sel : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL STATE_OUT : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Wr_A : STD_LOGIC;
SIGNAL Wr_B : STD_LOGIC;
SIGNAL Wr_C : STD_LOGIC;
COMPONENT fsm
	PORT (
	acc : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	sel : BUFFER STD_LOGIC;
	start : IN STD_LOGIC;
	STATE_OUT : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	Wr_A : BUFFER STD_LOGIC;
	Wr_B : BUFFER STD_LOGIC;
	Wr_C : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fsm
	PORT MAP (
-- list connections between master ports and signals
	acc => acc,
	clk => clk,
	reset => reset,
	sel => sel,
	start => start,
	STATE_OUT => STATE_OUT,
	Wr_A => Wr_A,
	Wr_B => Wr_B,
	Wr_C => Wr_C
	);

-- acc
t_prcs_acc: PROCESS
BEGIN
	acc <= '0';
	WAIT FOR 560000 ps;
	acc <= '1';
	WAIT FOR 70000 ps;
	acc <= '0';
WAIT;
END PROCESS t_prcs_acc;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 90000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 100000 ps;
	start <= '1';
	WAIT FOR 140000 ps;
	start <= '0';
	WAIT FOR 320000 ps;
	start <= '1';
	WAIT FOR 70000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
END fsm_arch;
