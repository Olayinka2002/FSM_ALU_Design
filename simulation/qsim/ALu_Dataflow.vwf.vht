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
-- Generated on "09/07/2025 19:55:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU_Logic_Controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_Logic_Controller_vhd_vec_tst IS
END ALU_Logic_Controller_vhd_vec_tst;
ARCHITECTURE ALU_Logic_Controller_arch OF ALU_Logic_Controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL acc : STD_LOGIC;
SIGNAL Alu_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL carry_out : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL op_code : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL R_b_Output : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL Result : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Rst_A : STD_LOGIC;
SIGNAL Rst_B : STD_LOGIC;
SIGNAL Rst_C : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL STATE_OUT : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT ALU_Logic_Controller
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	acc : IN STD_LOGIC;
	Alu_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	carry_out : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	op_code : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	R_b_Output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	Result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Rst_A : IN STD_LOGIC;
	Rst_B : IN STD_LOGIC;
	Rst_C : IN STD_LOGIC;
	start : IN STD_LOGIC;
	STATE_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU_Logic_Controller
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	acc => acc,
	Alu_out => Alu_out,
	B => B,
	carry_out => carry_out,
	clk => clk,
	op_code => op_code,
	R_b_Output => R_b_Output,
	reset => reset,
	Result => Result,
	Rst_A => Rst_A,
	Rst_B => Rst_B,
	Rst_C => Rst_C,
	start => start,
	STATE_OUT => STATE_OUT
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 200000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- op_code[2]
t_prcs_op_code_2: PROCESS
BEGIN
	op_code(2) <= '0';
WAIT;
END PROCESS t_prcs_op_code_2;
-- op_code[1]
t_prcs_op_code_1: PROCESS
BEGIN
	op_code(1) <= '0';
WAIT;
END PROCESS t_prcs_op_code_1;
-- op_code[0]
t_prcs_op_code_0: PROCESS
BEGIN
	op_code(0) <= '0';
WAIT;
END PROCESS t_prcs_op_code_0;

-- acc
t_prcs_acc: PROCESS
BEGIN
	acc <= '0';
	WAIT FOR 1120000 ps;
	acc <= '1';
	WAIT FOR 140000 ps;
	acc <= '0';
WAIT;
END PROCESS t_prcs_acc;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 240000 ps;
	start <= '1';
	WAIT FOR 220000 ps;
	start <= '0';
	WAIT FOR 660000 ps;
	start <= '1';
	WAIT FOR 140000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '1';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '1';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '1';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
WAIT;
END PROCESS t_prcs_A_0;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '1';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '1';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '1';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;

-- Rst_A
t_prcs_Rst_A: PROCESS
BEGIN
	Rst_A <= '0';
WAIT;
END PROCESS t_prcs_Rst_A;

-- Rst_B
t_prcs_Rst_B: PROCESS
BEGIN
	Rst_B <= '0';
WAIT;
END PROCESS t_prcs_Rst_B;

-- Rst_C
t_prcs_Rst_C: PROCESS
BEGIN
	Rst_C <= '0';
WAIT;
END PROCESS t_prcs_Rst_C;
END ALU_Logic_Controller_arch;
