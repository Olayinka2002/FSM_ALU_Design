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
-- Generated on "06/07/2025 11:22:09"
                                                             
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
SIGNAL Alu_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL carry_out : STD_LOGIC;
SIGNAL op_code : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL R_b_Output : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Result : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Rst_A : STD_LOGIC;
SIGNAL Rst_B : STD_LOGIC;
SIGNAL Rst_C : STD_LOGIC;
SIGNAL Sel : STD_LOGIC;
SIGNAL Wr_A : STD_LOGIC;
SIGNAL Wr_B : STD_LOGIC;
SIGNAL Wr_C : STD_LOGIC;
COMPONENT ALU_Logic_Controller
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Alu_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	carry_out : OUT STD_LOGIC;
	op_code : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	R_b_Output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Rst_A : IN STD_LOGIC;
	Rst_B : IN STD_LOGIC;
	Rst_C : IN STD_LOGIC;
	Sel : IN STD_LOGIC;
	Wr_A : IN STD_LOGIC;
	Wr_B : IN STD_LOGIC;
	Wr_C : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU_Logic_Controller
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Alu_out => Alu_out,
	B => B,
	carry_out => carry_out,
	op_code => op_code,
	R_b_Output => R_b_Output,
	Result => Result,
	Rst_A => Rst_A,
	Rst_B => Rst_B,
	Rst_C => Rst_C,
	Sel => Sel,
	Wr_A => Wr_A,
	Wr_B => Wr_B,
	Wr_C => Wr_C
	);
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
	A(5) <= '1';
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
	A(3) <= '0';
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
	A(0) <= '0';
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
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
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
	B(1) <= '1';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;
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

-- Wr_A
t_prcs_Wr_A: PROCESS
BEGIN
	Wr_A <= '0';
	WAIT FOR 20000 ps;
	Wr_A <= '1';
	WAIT FOR 80000 ps;
	Wr_A <= '0';
WAIT;
END PROCESS t_prcs_Wr_A;

-- Wr_B
t_prcs_Wr_B: PROCESS
BEGIN
	Wr_B <= '0';
	WAIT FOR 20000 ps;
	Wr_B <= '1';
	WAIT FOR 80000 ps;
	Wr_B <= '0';
WAIT;
END PROCESS t_prcs_Wr_B;

-- Wr_C
t_prcs_Wr_C: PROCESS
BEGIN
	Wr_C <= '0';
	WAIT FOR 140000 ps;
	Wr_C <= '1';
	WAIT FOR 50000 ps;
	Wr_C <= '0';
	WAIT FOR 90000 ps;
	Wr_C <= '1';
	WAIT FOR 80000 ps;
	Wr_C <= '0';
	WAIT FOR 70000 ps;
	Wr_C <= '1';
	WAIT FOR 70000 ps;
	Wr_C <= '0';
WAIT;
END PROCESS t_prcs_Wr_C;

-- Sel
t_prcs_Sel: PROCESS
BEGIN
	Sel <= '0';
	WAIT FOR 190000 ps;
	Sel <= '1';
	WAIT FOR 280000 ps;
	Sel <= '0';
WAIT;
END PROCESS t_prcs_Sel;

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
