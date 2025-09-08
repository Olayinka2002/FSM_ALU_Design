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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "09/07/2025 19:55:58"

-- 
-- Device: Altera 5CEBA4F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU_Logic_Controller IS
    PORT (
	carry_out : OUT std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	acc : IN std_logic;
	start : IN std_logic;
	Rst_A : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	Result : OUT std_logic_vector(7 DOWNTO 0);
	Rst_C : IN std_logic;
	Rst_B : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	op_code : IN std_logic_vector(2 DOWNTO 0);
	Alu_out : OUT std_logic_vector(7 DOWNTO 0);
	R_b_Output : OUT std_logic_vector(7 DOWNTO 0);
	STATE_OUT : OUT std_logic_vector(2 DOWNTO 0)
	);
END ALU_Logic_Controller;

-- Design Ports Information
-- carry_out	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_out[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_out[6]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_out[5]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_out[4]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_out[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_out[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_out[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_out[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_b_Output[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_b_Output[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_b_Output[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_b_Output[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_b_Output[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_b_Output[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_b_Output[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_b_Output[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE_OUT[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE_OUT[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE_OUT[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst_C	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst_B	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst_A	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_Logic_Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_carry_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_acc : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_Rst_A : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Rst_C : std_logic;
SIGNAL ww_Rst_B : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_op_code : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Alu_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R_b_Output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_STATE_OUT : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst2|Mult0~16\ : std_logic;
SIGNAL \inst2|Mult0~17\ : std_logic;
SIGNAL \inst2|Mult0~18\ : std_logic;
SIGNAL \inst2|Mult0~19\ : std_logic;
SIGNAL \inst2|Mult0~20\ : std_logic;
SIGNAL \inst2|Mult0~21\ : std_logic;
SIGNAL \inst2|Mult0~22\ : std_logic;
SIGNAL \inst2|Mult0~23\ : std_logic;
SIGNAL \inst2|Mult0~24\ : std_logic;
SIGNAL \inst2|Mult0~25\ : std_logic;
SIGNAL \inst2|Mult0~26\ : std_logic;
SIGNAL \inst2|Mult0~27\ : std_logic;
SIGNAL \inst2|Mult0~28\ : std_logic;
SIGNAL \inst2|Mult0~29\ : std_logic;
SIGNAL \inst2|Mult0~30\ : std_logic;
SIGNAL \inst2|Mult0~31\ : std_logic;
SIGNAL \inst2|Mult0~32\ : std_logic;
SIGNAL \inst2|Mult0~33\ : std_logic;
SIGNAL \inst2|Mult0~34\ : std_logic;
SIGNAL \inst2|Mult0~35\ : std_logic;
SIGNAL \inst2|Mult0~36\ : std_logic;
SIGNAL \inst2|Mult0~37\ : std_logic;
SIGNAL \inst2|Mult0~38\ : std_logic;
SIGNAL \inst2|Mult0~39\ : std_logic;
SIGNAL \inst2|Mult0~40\ : std_logic;
SIGNAL \inst2|Mult0~41\ : std_logic;
SIGNAL \inst2|Mult0~42\ : std_logic;
SIGNAL \inst2|Mult0~43\ : std_logic;
SIGNAL \inst2|Mult0~44\ : std_logic;
SIGNAL \inst2|Mult0~45\ : std_logic;
SIGNAL \inst2|Mult0~46\ : std_logic;
SIGNAL \inst2|Mult0~47\ : std_logic;
SIGNAL \inst2|Mult0~48\ : std_logic;
SIGNAL \inst2|Mult0~49\ : std_logic;
SIGNAL \inst2|Mult0~50\ : std_logic;
SIGNAL \inst2|Mult0~51\ : std_logic;
SIGNAL \inst2|Mult0~52\ : std_logic;
SIGNAL \inst2|Mult0~53\ : std_logic;
SIGNAL \inst2|Mult0~54\ : std_logic;
SIGNAL \inst2|Mult0~55\ : std_logic;
SIGNAL \inst2|Mult0~56\ : std_logic;
SIGNAL \inst2|Mult0~57\ : std_logic;
SIGNAL \inst2|Mult0~58\ : std_logic;
SIGNAL \inst2|Mult0~59\ : std_logic;
SIGNAL \inst2|Mult0~60\ : std_logic;
SIGNAL \inst2|Mult0~61\ : std_logic;
SIGNAL \inst2|Mult0~62\ : std_logic;
SIGNAL \inst2|Mult0~63\ : std_logic;
SIGNAL \inst2|Mult0~64\ : std_logic;
SIGNAL \inst2|Mult0~65\ : std_logic;
SIGNAL \inst2|Mult0~66\ : std_logic;
SIGNAL \inst2|Mult0~67\ : std_logic;
SIGNAL \inst2|Mult0~68\ : std_logic;
SIGNAL \inst2|Mult0~69\ : std_logic;
SIGNAL \inst2|Mult0~70\ : std_logic;
SIGNAL \inst2|Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \op_code[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \acc~input_o\ : std_logic;
SIGNAL \inst6|curr_state.Wr_Result~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst6|curr_state.Wr_Result~q\ : std_logic;
SIGNAL \inst6|Selector4~0_combout\ : std_logic;
SIGNAL \inst6|curr_state.init~q\ : std_logic;
SIGNAL \inst6|next_state.accu~0_combout\ : std_logic;
SIGNAL \inst6|curr_state.accu~q\ : std_logic;
SIGNAL \inst6|next_state.fetch~0_combout\ : std_logic;
SIGNAL \inst6|curr_state.fetch~q\ : std_logic;
SIGNAL \inst6|Wr_B~combout\ : std_logic;
SIGNAL \inst6|curr_state.procc~q\ : std_logic;
SIGNAL \inst6|Wr_C~combout\ : std_logic;
SIGNAL \inst6|sel~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Rst_A~input_o\ : std_logic;
SIGNAL \inst|outputF[7]~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Rst_B~input_o\ : std_logic;
SIGNAL \inst4|Q[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst4|Q[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALU_RESULT~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst4|Q[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst4|Q[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \inst4|Q[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst4|Q[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \inst4|Q[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst4|Q[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst4|Q[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst4|Q[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst4|Q[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst4|Q[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \inst4|Q[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst4|Q[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst4|Q[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst4|Q[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst2|Add0~38_cout\ : std_logic;
SIGNAL \inst2|Add0~29_sumout\ : std_logic;
SIGNAL \op_code[2]~input_o\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_3~18_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_3~14\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_3~10\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_3~6\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_3~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[27]~5_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_3~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_3~13_sumout\ : std_logic;
SIGNAL \inst|outputF[5]~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst|outputF[3]~4_combout\ : std_logic;
SIGNAL \inst2|ALU_RESULT~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst|outputF[2]~5_combout\ : std_logic;
SIGNAL \inst2|ALU_RESULT~5_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst2|Add0~30\ : std_logic;
SIGNAL \inst2|Add0~26\ : std_logic;
SIGNAL \inst2|Add0~21_sumout\ : std_logic;
SIGNAL \inst|outputF[4]~3_combout\ : std_logic;
SIGNAL \inst2|Mult0~10\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \op_code[1]~input_o\ : std_logic;
SIGNAL \inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Rst_C~input_o\ : std_logic;
SIGNAL \inst2|Add0~22\ : std_logic;
SIGNAL \inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst2|Mult0~11\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~1_combout\ : std_logic;
SIGNAL \inst2|Add0~18\ : std_logic;
SIGNAL \inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst2|ALU_RESULT~3_combout\ : std_logic;
SIGNAL \inst2|Mult0~12\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~1_combout\ : std_logic;
SIGNAL \inst5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[36]~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[26]~11_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \inst2|ALU_RESULT~6_combout\ : std_logic;
SIGNAL \inst2|Add0~25_sumout\ : std_logic;
SIGNAL \inst2|Mult0~9\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~1_combout\ : std_logic;
SIGNAL \inst|outputF[1]~6_combout\ : std_logic;
SIGNAL \inst2|Mult0~13\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Add0~14\ : std_logic;
SIGNAL \inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst2|ALU_RESULT~2_combout\ : std_logic;
SIGNAL \inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst2|ALU_RESULT~1_combout\ : std_logic;
SIGNAL \inst2|Mult0~14\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \inst|outputF[6]~1_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[45]~7_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[45]~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[42]~20_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[41]~22_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[40]~23_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~34_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~30_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~14_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~10_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \inst2|ALU_RESULT~7_combout\ : std_logic;
SIGNAL \inst2|Mux7~2_combout\ : std_logic;
SIGNAL \inst2|Mux7~3_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|Mux7~1_combout\ : std_logic;
SIGNAL \inst2|Mux7~4_combout\ : std_logic;
SIGNAL \inst2|Mult0~8_resulta\ : std_logic;
SIGNAL \inst2|Mux7~6_combout\ : std_logic;
SIGNAL \inst|outputF[0]~7_combout\ : std_logic;
SIGNAL \inst2|Mult0~15\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~6\ : std_logic;
SIGNAL \inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Q[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add0~2\ : std_logic;
SIGNAL \inst2|Add0~33_sumout\ : std_logic;
SIGNAL \inst2|Mux7~5_combout\ : std_logic;
SIGNAL \inst3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|STATE_OUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Div0|auto_generated|divider|divider|sel\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \inst2|temp\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \inst5|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Q[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ALT_INV_Q[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \inst4|ALT_INV_Q[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \inst4|ALT_INV_Q[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst3|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \inst4|ALT_INV_Q[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ALT_INV_Q[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \inst4|ALT_INV_Q[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Q[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_outputF[0]~7_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_outputF[5]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\ : std_logic_vector(5 DOWNTO 1);
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_outputF[6]~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_ALU_RESULT~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_outputF[3]~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_ALU_RESULT~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_ALU_RESULT~6_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_ALU_RESULT~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_ALU_RESULT~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_outputF[4]~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_ALU_RESULT~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_ALU_RESULT~7_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_curr_state.Wr_Result~q\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_outputF[7]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_outputF[2]~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_outputF[1]~6_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_ALU_RESULT~1_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_selnose\ : std_logic_vector(54 DOWNTO 0);
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~20_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~5_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux7~5_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_curr_state.accu~q\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[43]~17_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_temp\ : std_logic_vector(8 DOWNTO 8);
SIGNAL \inst6|ALT_INV_sel~combout\ : std_logic;
SIGNAL \ALT_INV_op_code[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_code[0]~input_o\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~7_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Rst_B~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \inst6|ALT_INV_curr_state.fetch~q\ : std_logic;
SIGNAL \ALT_INV_op_code[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_curr_state.init~q\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~22_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Wr_C~combout\ : std_logic;
SIGNAL \inst6|ALT_INV_curr_state.procc~q\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_acc~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

carry_out <= ww_carry_out;
ww_clk <= clk;
ww_reset <= reset;
ww_acc <= acc;
ww_start <= start;
ww_Rst_A <= Rst_A;
ww_A <= A;
Result <= ww_Result;
ww_Rst_C <= Rst_C;
ww_Rst_B <= Rst_B;
ww_B <= B;
ww_op_code <= op_code;
Alu_out <= ww_Alu_out;
R_b_Output <= ww_R_b_Output;
STATE_OUT <= ww_STATE_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\inst2|Mult0~8_CLK_bus\ <= (gnd & gnd & \inst6|Wr_B~combout\);

\inst2|Mult0~8_ENA_bus\ <= (vcc & vcc & vcc);

\inst2|Mult0~8_AX_bus\ <= (\inst|outputF[7]~0_combout\ & \inst|outputF[6]~1_combout\ & \inst|outputF[5]~2_combout\ & \inst|outputF[4]~3_combout\ & \inst|outputF[3]~4_combout\ & \inst|outputF[2]~5_combout\ & \inst|outputF[1]~6_combout\ & 
\inst|outputF[0]~7_combout\);

\inst2|Mult0~8_AY_bus\ <= (\inst4|Q[7]~SCLR_LUT_combout\ & \inst4|Q[6]~SCLR_LUT_combout\ & \inst4|Q[5]~SCLR_LUT_combout\ & \inst4|Q[4]~SCLR_LUT_combout\ & \inst4|Q[3]~SCLR_LUT_combout\ & \inst4|Q[2]~SCLR_LUT_combout\ & \inst4|Q[1]~SCLR_LUT_combout\ & 
\inst4|Q[0]~SCLR_LUT_combout\);

\inst2|Mult0~8_resulta\ <= \inst2|Mult0~8_RESULTA_bus\(0);
\inst2|Mult0~9\ <= \inst2|Mult0~8_RESULTA_bus\(1);
\inst2|Mult0~10\ <= \inst2|Mult0~8_RESULTA_bus\(2);
\inst2|Mult0~11\ <= \inst2|Mult0~8_RESULTA_bus\(3);
\inst2|Mult0~12\ <= \inst2|Mult0~8_RESULTA_bus\(4);
\inst2|Mult0~13\ <= \inst2|Mult0~8_RESULTA_bus\(5);
\inst2|Mult0~14\ <= \inst2|Mult0~8_RESULTA_bus\(6);
\inst2|Mult0~15\ <= \inst2|Mult0~8_RESULTA_bus\(7);
\inst2|Mult0~16\ <= \inst2|Mult0~8_RESULTA_bus\(8);
\inst2|Mult0~17\ <= \inst2|Mult0~8_RESULTA_bus\(9);
\inst2|Mult0~18\ <= \inst2|Mult0~8_RESULTA_bus\(10);
\inst2|Mult0~19\ <= \inst2|Mult0~8_RESULTA_bus\(11);
\inst2|Mult0~20\ <= \inst2|Mult0~8_RESULTA_bus\(12);
\inst2|Mult0~21\ <= \inst2|Mult0~8_RESULTA_bus\(13);
\inst2|Mult0~22\ <= \inst2|Mult0~8_RESULTA_bus\(14);
\inst2|Mult0~23\ <= \inst2|Mult0~8_RESULTA_bus\(15);
\inst2|Mult0~24\ <= \inst2|Mult0~8_RESULTA_bus\(16);
\inst2|Mult0~25\ <= \inst2|Mult0~8_RESULTA_bus\(17);
\inst2|Mult0~26\ <= \inst2|Mult0~8_RESULTA_bus\(18);
\inst2|Mult0~27\ <= \inst2|Mult0~8_RESULTA_bus\(19);
\inst2|Mult0~28\ <= \inst2|Mult0~8_RESULTA_bus\(20);
\inst2|Mult0~29\ <= \inst2|Mult0~8_RESULTA_bus\(21);
\inst2|Mult0~30\ <= \inst2|Mult0~8_RESULTA_bus\(22);
\inst2|Mult0~31\ <= \inst2|Mult0~8_RESULTA_bus\(23);
\inst2|Mult0~32\ <= \inst2|Mult0~8_RESULTA_bus\(24);
\inst2|Mult0~33\ <= \inst2|Mult0~8_RESULTA_bus\(25);
\inst2|Mult0~34\ <= \inst2|Mult0~8_RESULTA_bus\(26);
\inst2|Mult0~35\ <= \inst2|Mult0~8_RESULTA_bus\(27);
\inst2|Mult0~36\ <= \inst2|Mult0~8_RESULTA_bus\(28);
\inst2|Mult0~37\ <= \inst2|Mult0~8_RESULTA_bus\(29);
\inst2|Mult0~38\ <= \inst2|Mult0~8_RESULTA_bus\(30);
\inst2|Mult0~39\ <= \inst2|Mult0~8_RESULTA_bus\(31);
\inst2|Mult0~40\ <= \inst2|Mult0~8_RESULTA_bus\(32);
\inst2|Mult0~41\ <= \inst2|Mult0~8_RESULTA_bus\(33);
\inst2|Mult0~42\ <= \inst2|Mult0~8_RESULTA_bus\(34);
\inst2|Mult0~43\ <= \inst2|Mult0~8_RESULTA_bus\(35);
\inst2|Mult0~44\ <= \inst2|Mult0~8_RESULTA_bus\(36);
\inst2|Mult0~45\ <= \inst2|Mult0~8_RESULTA_bus\(37);
\inst2|Mult0~46\ <= \inst2|Mult0~8_RESULTA_bus\(38);
\inst2|Mult0~47\ <= \inst2|Mult0~8_RESULTA_bus\(39);
\inst2|Mult0~48\ <= \inst2|Mult0~8_RESULTA_bus\(40);
\inst2|Mult0~49\ <= \inst2|Mult0~8_RESULTA_bus\(41);
\inst2|Mult0~50\ <= \inst2|Mult0~8_RESULTA_bus\(42);
\inst2|Mult0~51\ <= \inst2|Mult0~8_RESULTA_bus\(43);
\inst2|Mult0~52\ <= \inst2|Mult0~8_RESULTA_bus\(44);
\inst2|Mult0~53\ <= \inst2|Mult0~8_RESULTA_bus\(45);
\inst2|Mult0~54\ <= \inst2|Mult0~8_RESULTA_bus\(46);
\inst2|Mult0~55\ <= \inst2|Mult0~8_RESULTA_bus\(47);
\inst2|Mult0~56\ <= \inst2|Mult0~8_RESULTA_bus\(48);
\inst2|Mult0~57\ <= \inst2|Mult0~8_RESULTA_bus\(49);
\inst2|Mult0~58\ <= \inst2|Mult0~8_RESULTA_bus\(50);
\inst2|Mult0~59\ <= \inst2|Mult0~8_RESULTA_bus\(51);
\inst2|Mult0~60\ <= \inst2|Mult0~8_RESULTA_bus\(52);
\inst2|Mult0~61\ <= \inst2|Mult0~8_RESULTA_bus\(53);
\inst2|Mult0~62\ <= \inst2|Mult0~8_RESULTA_bus\(54);
\inst2|Mult0~63\ <= \inst2|Mult0~8_RESULTA_bus\(55);
\inst2|Mult0~64\ <= \inst2|Mult0~8_RESULTA_bus\(56);
\inst2|Mult0~65\ <= \inst2|Mult0~8_RESULTA_bus\(57);
\inst2|Mult0~66\ <= \inst2|Mult0~8_RESULTA_bus\(58);
\inst2|Mult0~67\ <= \inst2|Mult0~8_RESULTA_bus\(59);
\inst2|Mult0~68\ <= \inst2|Mult0~8_RESULTA_bus\(60);
\inst2|Mult0~69\ <= \inst2|Mult0~8_RESULTA_bus\(61);
\inst2|Mult0~70\ <= \inst2|Mult0~8_RESULTA_bus\(62);
\inst2|Mult0~71\ <= \inst2|Mult0~8_RESULTA_bus\(63);
\inst5|ALT_INV_Q\(7) <= NOT \inst5|Q\(7);
\inst4|ALT_INV_Q[5]~_Duplicate_1_q\ <= NOT \inst4|Q[5]~_Duplicate_1_q\;
\inst4|ALT_INV_Q[2]~_Duplicate_1_q\ <= NOT \inst4|Q[2]~_Duplicate_1_q\;
\inst5|ALT_INV_Q\(0) <= NOT \inst5|Q\(0);
\inst2|ALT_INV_Mult0~9\ <= NOT \inst2|Mult0~9\;
\inst5|ALT_INV_Q\(5) <= NOT \inst5|Q\(5);
\inst4|ALT_INV_Q[6]~_Duplicate_1_q\ <= NOT \inst4|Q[6]~_Duplicate_1_q\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\;
\inst2|ALT_INV_Mult0~11\ <= NOT \inst2|Mult0~11\;
\inst2|ALT_INV_Mult0~8_resulta\ <= NOT \inst2|Mult0~8_resulta\;
\inst5|ALT_INV_Q\(6) <= NOT \inst5|Q\(6);
\inst4|ALT_INV_Q[1]~_Duplicate_1_q\ <= NOT \inst4|Q[1]~_Duplicate_1_q\;
\inst3|ALT_INV_Q\(7) <= NOT \inst3|Q\(7);
\inst2|ALT_INV_Mult0~10\ <= NOT \inst2|Mult0~10\;
\inst2|ALT_INV_Mult0~14\ <= NOT \inst2|Mult0~14\;
\inst4|ALT_INV_Q[3]~_Duplicate_1_q\ <= NOT \inst4|Q[3]~_Duplicate_1_q\;
\inst4|ALT_INV_Q[7]~_Duplicate_1_q\ <= NOT \inst4|Q[7]~_Duplicate_1_q\;
\inst5|ALT_INV_Q\(2) <= NOT \inst5|Q\(2);
\inst2|ALT_INV_Add0~1_sumout\ <= NOT \inst2|Add0~1_sumout\;
\inst2|ALT_INV_Mult0~15\ <= NOT \inst2|Mult0~15\;
\inst2|ALT_INV_Mult0~13\ <= NOT \inst2|Mult0~13\;
\inst4|ALT_INV_Q[4]~_Duplicate_1_q\ <= NOT \inst4|Q[4]~_Duplicate_1_q\;
\inst5|ALT_INV_Q\(3) <= NOT \inst5|Q\(3);
\inst2|ALT_INV_Mult0~12\ <= NOT \inst2|Mult0~12\;
\inst5|ALT_INV_Q\(1) <= NOT \inst5|Q\(1);
\inst5|ALT_INV_Q\(4) <= NOT \inst5|Q\(4);
\inst3|ALT_INV_Q\(3) <= NOT \inst3|Q\(3);
\inst3|ALT_INV_Q\(6) <= NOT \inst3|Q\(6);
\inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\;
\inst3|ALT_INV_Q\(5) <= NOT \inst3|Q\(5);
\inst2|ALT_INV_Add0~9_sumout\ <= NOT \inst2|Add0~9_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\;
\inst2|ALT_INV_Add0~5_sumout\ <= NOT \inst2|Add0~5_sumout\;
\inst2|ALT_INV_Add0~13_sumout\ <= NOT \inst2|Add0~13_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\;
\inst2|ALT_INV_Add0~17_sumout\ <= NOT \inst2|Add0~17_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\inst3|ALT_INV_Q\(2) <= NOT \inst3|Q\(2);
\inst2|ALT_INV_Add0~21_sumout\ <= NOT \inst2|Add0~21_sumout\;
\inst3|ALT_INV_Q\(4) <= NOT \inst3|Q\(4);
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\inst3|ALT_INV_Q\(1) <= NOT \inst3|Q\(1);
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_3~5_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_4~5_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\inst2|ALT_INV_Add0~29_sumout\ <= NOT \inst2|Add0~29_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_6~5_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_7~5_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_7~9_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_7~13_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_4~9_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_3~13_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_4~13_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_4~17_sumout\;
\inst2|ALT_INV_Add0~25_sumout\ <= NOT \inst2|Add0~25_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_5~17_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_3~9_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_7~17_sumout\;
\inst4|ALT_INV_Q[0]~_Duplicate_1_q\ <= NOT \inst4|Q[0]~_Duplicate_1_q\;
\inst2|ALT_INV_Add0~33_sumout\ <= NOT \inst2|Add0~33_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_5~21_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_8~1_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_5~5_sumout\;
\inst3|ALT_INV_Q\(0) <= NOT \inst3|Q\(0);
\inst|ALT_INV_outputF[0]~7_combout\ <= NOT \inst|outputF[0]~7_combout\;
\inst2|ALT_INV_Mux5~1_combout\ <= NOT \inst2|Mux5~1_combout\;
\inst2|ALT_INV_LessThan0~1_combout\ <= NOT \inst2|LessThan0~1_combout\;
\inst2|ALT_INV_Mux7~1_combout\ <= NOT \inst2|Mux7~1_combout\;
\inst2|ALT_INV_Mux7~4_combout\ <= NOT \inst2|Mux7~4_combout\;
\inst2|ALT_INV_Mux1~0_combout\ <= NOT \inst2|Mux1~0_combout\;
\inst|ALT_INV_outputF[5]~2_combout\ <= NOT \inst|outputF[5]~2_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(2) <= NOT \inst2|Div0|auto_generated|divider|divider|sel\(2);
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_7~29_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_7~21_sumout\;
\inst|ALT_INV_outputF[6]~1_combout\ <= NOT \inst|outputF[6]~1_combout\;
\inst2|ALT_INV_Mux1~1_combout\ <= NOT \inst2|Mux1~1_combout\;
\inst2|ALT_INV_Mux2~1_combout\ <= NOT \inst2|Mux2~1_combout\;
\inst2|ALT_INV_ALU_RESULT~3_combout\ <= NOT \inst2|ALU_RESULT~3_combout\;
\inst|ALT_INV_outputF[3]~4_combout\ <= NOT \inst|outputF[3]~4_combout\;
\inst2|ALT_INV_Mux4~0_combout\ <= NOT \inst2|Mux4~0_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4) <= NOT \inst2|Div0|auto_generated|divider|divider|sel\(4);
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_7~25_sumout\;
\inst2|ALT_INV_ALU_RESULT~4_combout\ <= NOT \inst2|ALU_RESULT~4_combout\;
\inst2|ALT_INV_ALU_RESULT~6_combout\ <= NOT \inst2|ALU_RESULT~6_combout\;
\inst2|ALT_INV_Mux6~0_combout\ <= NOT \inst2|Mux6~0_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5) <= NOT \inst2|Div0|auto_generated|divider|divider|sel\(5);
\inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3) <= NOT \inst2|Div0|auto_generated|divider|divider|sel\(3);
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\inst2|ALT_INV_ALU_RESULT~2_combout\ <= NOT \inst2|ALU_RESULT~2_combout\;
\inst2|ALT_INV_Mux3~1_combout\ <= NOT \inst2|Mux3~1_combout\;
\inst2|ALT_INV_ALU_RESULT~5_combout\ <= NOT \inst2|ALU_RESULT~5_combout\;
\inst2|ALT_INV_Mux5~0_combout\ <= NOT \inst2|Mux5~0_combout\;
\inst2|ALT_INV_Mux7~0_combout\ <= NOT \inst2|Mux7~0_combout\;
\inst2|ALT_INV_LessThan0~0_combout\ <= NOT \inst2|LessThan0~0_combout\;
\inst2|ALT_INV_LessThan0~2_combout\ <= NOT \inst2|LessThan0~2_combout\;
\inst|ALT_INV_outputF[4]~3_combout\ <= NOT \inst|outputF[4]~3_combout\;
\inst2|ALT_INV_ALU_RESULT~0_combout\ <= NOT \inst2|ALU_RESULT~0_combout\;
\inst2|ALT_INV_Mux2~0_combout\ <= NOT \inst2|Mux2~0_combout\;
\inst2|ALT_INV_ALU_RESULT~7_combout\ <= NOT \inst2|ALU_RESULT~7_combout\;
\inst2|ALT_INV_Mux7~2_combout\ <= NOT \inst2|Mux7~2_combout\;
\inst2|ALT_INV_Mux7~3_combout\ <= NOT \inst2|Mux7~3_combout\;
\inst6|ALT_INV_curr_state.Wr_Result~q\ <= NOT \inst6|curr_state.Wr_Result~q\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_6~25_sumout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(1) <= NOT \inst2|Div0|auto_generated|divider|divider|sel\(1);
\inst2|ALT_INV_Mux3~0_combout\ <= NOT \inst2|Mux3~0_combout\;
\inst|ALT_INV_outputF[7]~0_combout\ <= NOT \inst|outputF[7]~0_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \inst2|Div0|auto_generated|divider|divider|op_6~21_sumout\;
\inst|ALT_INV_outputF[2]~5_combout\ <= NOT \inst|outputF[2]~5_combout\;
\inst|ALT_INV_outputF[1]~6_combout\ <= NOT \inst|outputF[1]~6_combout\;
\inst2|ALT_INV_Mux0~1_combout\ <= NOT \inst2|Mux0~1_combout\;
\inst2|ALT_INV_ALU_RESULT~1_combout\ <= NOT \inst2|ALU_RESULT~1_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_selnose\(36) <= NOT \inst2|Div0|auto_generated|divider|divider|selnose\(36);
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~20_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[42]~20_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[40]~23_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~5_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[27]~5_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\;
\inst2|ALT_INV_Mux7~5_combout\ <= NOT \inst2|Mux7~5_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~8_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[45]~8_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_selnose\(0) <= NOT \inst2|Div0|auto_generated|divider|divider|selnose\(0);
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_selnose\(54) <= NOT \inst2|Div0|auto_generated|divider|divider|selnose\(54);
\inst6|ALT_INV_curr_state.accu~q\ <= NOT \inst6|curr_state.accu~q\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[43]~17_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[33]~19_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~4_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~0_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~1_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\;
\inst2|ALT_INV_temp\(8) <= NOT \inst2|temp\(8);
\inst6|ALT_INV_sel~combout\ <= NOT \inst6|sel~combout\;
\ALT_INV_op_code[2]~input_o\ <= NOT \op_code[2]~input_o\;
\ALT_INV_op_code[0]~input_o\ <= NOT \op_code[0]~input_o\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~7_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[45]~7_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[26]~11_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_Rst_B~input_o\ <= NOT \Rst_B~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\inst6|ALT_INV_curr_state.fetch~q\ <= NOT \inst6|curr_state.fetch~q\;
\ALT_INV_op_code[1]~input_o\ <= NOT \op_code[1]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~6_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[36]~6_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[34]~16_combout\;
\inst6|ALT_INV_curr_state.init~q\ <= NOT \inst6|curr_state.init~q\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_selnose\(18) <= NOT \inst2|Div0|auto_generated|divider|divider|selnose\(18);
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~22_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[41]~22_combout\;
\inst6|ALT_INV_Wr_C~combout\ <= NOT \inst6|Wr_C~combout\;
\inst6|ALT_INV_curr_state.procc~q\ <= NOT \inst6|curr_state.procc~q\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|StageOut[24]~18_combout\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_acc~input_o\ <= NOT \acc~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X0_Y19_N5
\carry_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|temp\(8),
	devoe => ww_devoe,
	o => ww_carry_out);

-- Location: IOOBUF_X29_Y0_N19
\Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Q\(7),
	devoe => ww_devoe,
	o => ww_Result(7));

-- Location: IOOBUF_X54_Y21_N22
\Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Q\(6),
	devoe => ww_devoe,
	o => ww_Result(6));

-- Location: IOOBUF_X54_Y20_N56
\Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Q\(5),
	devoe => ww_devoe,
	o => ww_Result(5));

-- Location: IOOBUF_X54_Y14_N79
\Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Q\(4),
	devoe => ww_devoe,
	o => ww_Result(4));

-- Location: IOOBUF_X54_Y19_N22
\Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Q\(3),
	devoe => ww_devoe,
	o => ww_Result(3));

-- Location: IOOBUF_X54_Y15_N22
\Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Q\(2),
	devoe => ww_devoe,
	o => ww_Result(2));

-- Location: IOOBUF_X54_Y19_N39
\Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Q\(1),
	devoe => ww_devoe,
	o => ww_Result(1));

-- Location: IOOBUF_X54_Y17_N56
\Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Q\(0),
	devoe => ww_devoe,
	o => ww_Result(0));

-- Location: IOOBUF_X54_Y15_N39
\Alu_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_Alu_out(7));

-- Location: IOOBUF_X36_Y0_N19
\Alu_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~1_combout\,
	devoe => ww_devoe,
	o => ww_Alu_out(6));

-- Location: IOOBUF_X54_Y14_N62
\Alu_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_Alu_out(5));

-- Location: IOOBUF_X34_Y0_N2
\Alu_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~1_combout\,
	devoe => ww_devoe,
	o => ww_Alu_out(4));

-- Location: IOOBUF_X34_Y0_N19
\Alu_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_Alu_out(3));

-- Location: IOOBUF_X54_Y21_N39
\Alu_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_Alu_out(2));

-- Location: IOOBUF_X54_Y15_N56
\Alu_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux6~1_combout\,
	devoe => ww_devoe,
	o => ww_Alu_out(1));

-- Location: IOOBUF_X38_Y0_N53
\Alu_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux7~6_combout\,
	devoe => ww_devoe,
	o => ww_Alu_out(0));

-- Location: IOOBUF_X54_Y20_N39
\R_b_Output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q[7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_R_b_Output(7));

-- Location: IOOBUF_X54_Y17_N39
\R_b_Output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q[6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_R_b_Output(6));

-- Location: IOOBUF_X54_Y18_N96
\R_b_Output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q[5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_R_b_Output(5));

-- Location: IOOBUF_X54_Y17_N22
\R_b_Output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q[4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_R_b_Output(4));

-- Location: IOOBUF_X54_Y19_N5
\R_b_Output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q[3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_R_b_Output(3));

-- Location: IOOBUF_X54_Y20_N5
\R_b_Output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q[2]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_R_b_Output(2));

-- Location: IOOBUF_X54_Y20_N22
\R_b_Output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q[1]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_R_b_Output(1));

-- Location: IOOBUF_X54_Y18_N62
\R_b_Output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q[0]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_R_b_Output(0));

-- Location: IOOBUF_X36_Y0_N2
\STATE_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|curr_state.Wr_Result~q\,
	devoe => ww_devoe,
	o => ww_STATE_OUT(2));

-- Location: IOOBUF_X33_Y0_N76
\STATE_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|STATE_OUT\(1),
	devoe => ww_devoe,
	o => ww_STATE_OUT(1));

-- Location: IOOBUF_X54_Y16_N39
\STATE_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|STATE_OUT\(0),
	devoe => ww_devoe,
	o => ww_STATE_OUT(0));

-- Location: IOIBUF_X54_Y17_N4
\op_code[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(0),
	o => \op_code[0]~input_o\);

-- Location: IOIBUF_X54_Y18_N44
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y18_N78
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\acc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc,
	o => \acc~input_o\);

-- Location: LABCELL_X36_Y18_N6
\inst6|curr_state.Wr_Result~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|curr_state.Wr_Result~feeder_combout\ = ( \inst6|curr_state.procc~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst6|ALT_INV_curr_state.procc~q\,
	combout => \inst6|curr_state.Wr_Result~feeder_combout\);

-- Location: IOIBUF_X33_Y0_N41
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X36_Y18_N8
\inst6|curr_state.Wr_Result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst6|curr_state.Wr_Result~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|curr_state.Wr_Result~q\);

-- Location: LABCELL_X36_Y18_N12
\inst6|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Selector4~0_combout\ = ( \inst6|curr_state.init~q\ & ( !\inst6|curr_state.Wr_Result~q\ ) ) # ( !\inst6|curr_state.init~q\ & ( !\inst6|curr_state.Wr_Result~q\ & ( \start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	datae => \inst6|ALT_INV_curr_state.init~q\,
	dataf => \inst6|ALT_INV_curr_state.Wr_Result~q\,
	combout => \inst6|Selector4~0_combout\);

-- Location: FF_X36_Y18_N14
\inst6|curr_state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst6|Selector4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|curr_state.init~q\);

-- Location: LABCELL_X36_Y18_N39
\inst6|next_state.accu~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|next_state.accu~0_combout\ = ( !\inst6|curr_state.init~q\ & ( (\start~input_o\ & \acc~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datad => \ALT_INV_acc~input_o\,
	dataf => \inst6|ALT_INV_curr_state.init~q\,
	combout => \inst6|next_state.accu~0_combout\);

-- Location: FF_X36_Y18_N41
\inst6|curr_state.accu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst6|next_state.accu~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|curr_state.accu~q\);

-- Location: LABCELL_X36_Y18_N42
\inst6|next_state.fetch~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|next_state.fetch~0_combout\ = ( !\inst6|curr_state.init~q\ & ( (!\acc~input_o\ & \start~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_acc~input_o\,
	datac => \ALT_INV_start~input_o\,
	dataf => \inst6|ALT_INV_curr_state.init~q\,
	combout => \inst6|next_state.fetch~0_combout\);

-- Location: FF_X36_Y18_N44
\inst6|curr_state.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \inst6|next_state.fetch~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|curr_state.fetch~q\);

-- Location: LABCELL_X36_Y18_N57
\inst6|Wr_B\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Wr_B~combout\ = LCELL(( \inst6|curr_state.fetch~q\ ) # ( !\inst6|curr_state.fetch~q\ & ( \inst6|curr_state.accu~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_curr_state.accu~q\,
	dataf => \inst6|ALT_INV_curr_state.fetch~q\,
	combout => \inst6|Wr_B~combout\);

-- Location: FF_X35_Y19_N17
\inst6|curr_state.procc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst6|Wr_B~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|curr_state.procc~q\);

-- Location: LABCELL_X36_Y18_N33
\inst6|Wr_C\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Wr_C~combout\ = ( \inst6|curr_state.Wr_Result~q\ & ( (!\inst6|curr_state.procc~q\) # (\inst6|Wr_C~combout\) ) ) # ( !\inst6|curr_state.Wr_Result~q\ & ( (\inst6|Wr_C~combout\ & \inst6|curr_state.procc~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Wr_C~combout\,
	datac => \inst6|ALT_INV_curr_state.procc~q\,
	dataf => \inst6|ALT_INV_curr_state.Wr_Result~q\,
	combout => \inst6|Wr_C~combout\);

-- Location: LABCELL_X35_Y19_N15
\inst6|sel\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|sel~combout\ = ( \inst6|sel~combout\ & ( (\inst6|curr_state.procc~q\) # (\inst6|curr_state.accu~q\) ) ) # ( !\inst6|sel~combout\ & ( (\inst6|curr_state.accu~q\ & !\inst6|curr_state.procc~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_curr_state.accu~q\,
	datad => \inst6|ALT_INV_curr_state.procc~q\,
	dataf => \inst6|ALT_INV_sel~combout\,
	combout => \inst6|sel~combout\);

-- Location: IOIBUF_X54_Y21_N4
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X54_Y15_N4
\Rst_A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst_A,
	o => \Rst_A~input_o\);

-- Location: FF_X36_Y19_N56
\inst3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|curr_state.fetch~q\,
	asdata => \A[7]~input_o\,
	sclr => \Rst_A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(7));

-- Location: LABCELL_X35_Y19_N21
\inst|outputF[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|outputF[7]~0_combout\ = ( \inst5|Q\(7) & ( (\inst3|Q\(7)) # (\inst6|sel~combout\) ) ) # ( !\inst5|Q\(7) & ( (!\inst6|sel~combout\ & \inst3|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_sel~combout\,
	datad => \inst3|ALT_INV_Q\(7),
	dataf => \inst5|ALT_INV_Q\(7),
	combout => \inst|outputF[7]~0_combout\);

-- Location: IOIBUF_X25_Y0_N18
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\Rst_B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst_B,
	o => \Rst_B~input_o\);

-- Location: LABCELL_X35_Y18_N30
\inst4|Q[7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Q[7]~SCLR_LUT_combout\ = ( \B[7]~input_o\ & ( !\Rst_B~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_Rst_B~input_o\,
	combout => \inst4|Q[7]~SCLR_LUT_combout\);

-- Location: FF_X35_Y18_N59
\inst4|Q[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_B~combout\,
	asdata => \inst4|Q[7]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q[7]~_Duplicate_1_q\);

-- Location: MLABCELL_X37_Y19_N51
\inst2|ALU_RESULT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ALU_RESULT~0_combout\ = ( \inst4|Q[7]~_Duplicate_1_q\ & ( !\inst|outputF[7]~0_combout\ ) ) # ( !\inst4|Q[7]~_Duplicate_1_q\ & ( \inst|outputF[7]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_outputF[7]~0_combout\,
	dataf => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	combout => \inst2|ALU_RESULT~0_combout\);

-- Location: IOIBUF_X54_Y16_N21
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X36_Y18_N48
\inst4|Q[1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Q[1]~SCLR_LUT_combout\ = ( \B[1]~input_o\ & ( !\Rst_B~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Rst_B~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \inst4|Q[1]~SCLR_LUT_combout\);

-- Location: FF_X36_Y19_N53
\inst4|Q[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_B~combout\,
	asdata => \inst4|Q[1]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q[1]~_Duplicate_1_q\);

-- Location: IOIBUF_X29_Y0_N35
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X32_Y15_N12
\inst4|Q[6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Q[6]~SCLR_LUT_combout\ = ( !\Rst_B~input_o\ & ( \B[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_Rst_B~input_o\,
	combout => \inst4|Q[6]~SCLR_LUT_combout\);

-- Location: FF_X36_Y19_N38
\inst4|Q[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_B~combout\,
	asdata => \inst4|Q[6]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q[6]~_Duplicate_1_q\);

-- Location: IOIBUF_X38_Y0_N18
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X35_Y18_N15
\inst4|Q[4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Q[4]~SCLR_LUT_combout\ = ( \B[4]~input_o\ & ( !\Rst_B~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Rst_B~input_o\,
	combout => \inst4|Q[4]~SCLR_LUT_combout\);

-- Location: FF_X35_Y18_N17
\inst4|Q[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_B~combout\,
	d => \inst4|Q[4]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q[4]~_Duplicate_1_q\);

-- Location: IOIBUF_X29_Y0_N1
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X32_Y15_N33
\inst4|Q[2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Q[2]~SCLR_LUT_combout\ = ( !\Rst_B~input_o\ & ( \B[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_Rst_B~input_o\,
	combout => \inst4|Q[2]~SCLR_LUT_combout\);

-- Location: FF_X36_Y19_N50
\inst4|Q[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_B~combout\,
	asdata => \inst4|Q[2]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q[2]~_Duplicate_1_q\);

-- Location: IOIBUF_X0_Y18_N44
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X35_Y18_N18
\inst4|Q[3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Q[3]~SCLR_LUT_combout\ = ( !\Rst_B~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Rst_B~input_o\,
	combout => \inst4|Q[3]~SCLR_LUT_combout\);

-- Location: FF_X36_Y19_N44
\inst4|Q[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_B~combout\,
	asdata => \inst4|Q[3]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q[3]~_Duplicate_1_q\);

-- Location: IOIBUF_X34_Y0_N52
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X35_Y18_N24
\inst4|Q[5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Q[5]~SCLR_LUT_combout\ = ( \B[5]~input_o\ & ( !\Rst_B~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_Rst_B~input_o\,
	combout => \inst4|Q[5]~SCLR_LUT_combout\);

-- Location: FF_X35_Y18_N26
\inst4|Q[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_B~combout\,
	d => \inst4|Q[5]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q[5]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y19_N42
\inst2|Div0|auto_generated|divider|divider|sel[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|sel\(1) = ( \inst4|Q[3]~_Duplicate_1_q\ & ( \inst4|Q[5]~_Duplicate_1_q\ ) ) # ( !\inst4|Q[3]~_Duplicate_1_q\ & ( \inst4|Q[5]~_Duplicate_1_q\ ) ) # ( \inst4|Q[3]~_Duplicate_1_q\ & ( !\inst4|Q[5]~_Duplicate_1_q\ ) 
-- ) # ( !\inst4|Q[3]~_Duplicate_1_q\ & ( !\inst4|Q[5]~_Duplicate_1_q\ & ( (((\inst4|Q[7]~_Duplicate_1_q\) # (\inst4|Q[2]~_Duplicate_1_q\)) # (\inst4|Q[4]~_Duplicate_1_q\)) # (\inst4|Q[6]~_Duplicate_1_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[6]~_Duplicate_1_q\,
	datab => \inst4|ALT_INV_Q[4]~_Duplicate_1_q\,
	datac => \inst4|ALT_INV_Q[2]~_Duplicate_1_q\,
	datad => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	datae => \inst4|ALT_INV_Q[3]~_Duplicate_1_q\,
	dataf => \inst4|ALT_INV_Q[5]~_Duplicate_1_q\,
	combout => \inst2|Div0|auto_generated|divider|divider|sel\(1));

-- Location: IOIBUF_X29_Y0_N52
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X32_Y15_N39
\inst4|Q[0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Q[0]~SCLR_LUT_combout\ = ( !\Rst_B~input_o\ & ( \B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Rst_B~input_o\,
	combout => \inst4|Q[0]~SCLR_LUT_combout\);

-- Location: FF_X36_Y19_N47
\inst4|Q[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_B~combout\,
	asdata => \inst4|Q[0]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q[0]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y19_N0
\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ = SUM(( !\inst|outputF[7]~0_combout\ $ (!\inst4|Q[0]~_Duplicate_1_q\) ) + ( !VCC ) + ( !VCC ))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ = CARRY(( !\inst|outputF[7]~0_combout\ $ (!\inst4|Q[0]~_Duplicate_1_q\) ) + ( !VCC ) + ( !VCC ))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ = SHARE((!\inst4|Q[0]~_Duplicate_1_q\) # (\inst|outputF[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_outputF[7]~0_combout\,
	datad => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	cin => GND,
	sharein => GND,
	sumout => \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\,
	shareout => \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\);

-- Location: LABCELL_X36_Y19_N3
\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ = SUM(( VCC ) + ( \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ ) + ( \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\,
	sharein => \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\,
	sumout => \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\);

-- Location: IOIBUF_X34_Y0_N35
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: FF_X35_Y18_N38
\inst3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|curr_state.fetch~q\,
	asdata => \A[0]~input_o\,
	sclr => \Rst_A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(0));

-- Location: LABCELL_X35_Y19_N30
\inst2|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_cout\ = CARRY(( \op_code[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[0]~input_o\,
	cin => GND,
	cout => \inst2|Add0~38_cout\);

-- Location: LABCELL_X35_Y19_N33
\inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~29_sumout\ = SUM(( !\op_code[0]~input_o\ $ (!\inst4|Q[0]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(0)))) # (\inst6|sel~combout\ & (\inst5|Q\(0))) ) + ( \inst2|Add0~38_cout\ ))
-- \inst2|Add0~30\ = CARRY(( !\op_code[0]~input_o\ $ (!\inst4|Q[0]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(0)))) # (\inst6|sel~combout\ & (\inst5|Q\(0))) ) + ( \inst2|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[0]~input_o\,
	datab => \inst5|ALT_INV_Q\(0),
	datac => \inst6|ALT_INV_sel~combout\,
	datad => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	dataf => \inst3|ALT_INV_Q\(0),
	cin => \inst2|Add0~38_cout\,
	sumout => \inst2|Add0~29_sumout\,
	cout => \inst2|Add0~30\);

-- Location: IOIBUF_X54_Y16_N4
\op_code[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(2),
	o => \op_code[2]~input_o\);

-- Location: LABCELL_X36_Y19_N57
\inst2|Div0|auto_generated|divider|divider|selnose[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|selnose\(0) = ( \inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ ) # ( !\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & ( 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(1)) # (\inst4|Q[1]~_Duplicate_1_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(1),
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|selnose\(0));

-- Location: IOIBUF_X38_Y0_N1
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: FF_X36_Y17_N17
\inst3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|curr_state.fetch~q\,
	asdata => \A[6]~input_o\,
	sclr => \Rst_A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(6));

-- Location: LABCELL_X35_Y18_N48
\inst2|Div0|auto_generated|divider|divider|sel[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|sel\(2) = ( \inst4|Q[4]~_Duplicate_1_q\ ) # ( !\inst4|Q[4]~_Duplicate_1_q\ & ( (((\inst4|Q[6]~_Duplicate_1_q\) # (\inst4|Q[3]~_Duplicate_1_q\)) # (\inst4|Q[7]~_Duplicate_1_q\)) # (\inst4|Q[5]~_Duplicate_1_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[5]~_Duplicate_1_q\,
	datab => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	datac => \inst4|ALT_INV_Q[3]~_Duplicate_1_q\,
	datad => \inst4|ALT_INV_Q[6]~_Duplicate_1_q\,
	dataf => \inst4|ALT_INV_Q[4]~_Duplicate_1_q\,
	combout => \inst2|Div0|auto_generated|divider|divider|sel\(2));

-- Location: LABCELL_X41_Y19_N51
\inst2|Div0|auto_generated|divider|divider|sel[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|sel\(5) = ( \inst4|Q[7]~_Duplicate_1_q\ ) # ( !\inst4|Q[7]~_Duplicate_1_q\ & ( \inst4|Q[6]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Q[6]~_Duplicate_1_q\,
	datae => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	combout => \inst2|Div0|auto_generated|divider|divider|sel\(5));

-- Location: LABCELL_X40_Y19_N36
\inst2|Div0|auto_generated|divider|divider|sel[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|sel\(4) = ( \inst2|Div0|auto_generated|divider|divider|sel\(5) ) # ( !\inst2|Div0|auto_generated|divider|divider|sel\(5) & ( \inst4|Q[5]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_Q[5]~_Duplicate_1_q\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	combout => \inst2|Div0|auto_generated|divider|divider|sel\(4));

-- Location: LABCELL_X40_Y19_N54
\inst2|Div0|auto_generated|divider|divider|sel[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|sel\(3) = ( \inst4|Q[4]~_Duplicate_1_q\ ) # ( !\inst4|Q[4]~_Duplicate_1_q\ & ( \inst2|Div0|auto_generated|divider|divider|sel\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	dataf => \inst4|ALT_INV_Q[4]~_Duplicate_1_q\,
	combout => \inst2|Div0|auto_generated|divider|divider|sel\(3));

-- Location: LABCELL_X36_Y19_N51
\inst2|Div0|auto_generated|divider|divider|StageOut[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = ( \inst|outputF[7]~0_combout\ & ( (((\inst4|Q[1]~_Duplicate_1_q\) # (\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(1))) # (\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\) ) ) # ( !\inst|outputF[7]~0_combout\ & ( (!\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ 
-- & (!\inst2|Div0|auto_generated|divider|divider|sel\(1) & (\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ & !\inst4|Q[1]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000001111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(1),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\,
	datad => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_outputF[7]~0_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LABCELL_X36_Y19_N54
\inst2|Div0|auto_generated|divider|divider|StageOut[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ = ( \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ ) ) # ( 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( (\inst2|Div0|auto_generated|divider|divider|sel\(1) & \inst2|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(1),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~0_combout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\);

-- Location: LABCELL_X35_Y19_N0
\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ = SUM(( !\inst4|Q[0]~_Duplicate_1_q\ $ (!\inst|outputF[6]~1_combout\) ) + ( !VCC ) + ( !VCC ))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ = CARRY(( !\inst4|Q[0]~_Duplicate_1_q\ $ (!\inst|outputF[6]~1_combout\) ) + ( !VCC ) + ( !VCC ))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ = SHARE((!\inst4|Q[0]~_Duplicate_1_q\) # (\inst|outputF[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	datad => \inst|ALT_INV_outputF[6]~1_combout\,
	cin => GND,
	sharein => GND,
	sumout => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	shareout => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\);

-- Location: LABCELL_X35_Y19_N3
\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ = SUM(( !\inst4|Q[1]~_Duplicate_1_q\ $ (((!\inst2|Div0|auto_generated|divider|divider|selnose\(0) & 
-- ((\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\))) # (\inst2|Div0|auto_generated|divider|divider|selnose\(0) & (\inst|outputF[7]~0_combout\)))) ) + ( \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + 
-- ( \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ = CARRY(( !\inst4|Q[1]~_Duplicate_1_q\ $ (((!\inst2|Div0|auto_generated|divider|divider|selnose\(0) & ((\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|selnose\(0) & (\inst|outputF[7]~0_combout\)))) ) + ( \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ = SHARE((!\inst4|Q[1]~_Duplicate_1_q\ & ((!\inst2|Div0|auto_generated|divider|divider|selnose\(0) & ((\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|selnose\(0) & (\inst|outputF[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000101000000000000000000001100001110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_outputF[7]~0_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\,
	datac => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	sharein => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\,
	sumout => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	shareout => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\);

-- Location: IOIBUF_X36_Y45_N52
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: FF_X36_Y19_N11
\inst3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|curr_state.fetch~q\,
	asdata => \A[5]~input_o\,
	sclr => \Rst_A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(5));

-- Location: LABCELL_X36_Y19_N6
\inst2|Div0|auto_generated|divider|divider|op_3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_3~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst2|Div0|auto_generated|divider|divider|op_3~18_cout\);

-- Location: LABCELL_X36_Y19_N9
\inst2|Div0|auto_generated|divider|divider|op_3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_3~13_sumout\ = SUM(( (!\inst6|sel~combout\ & ((\inst3|Q\(5)))) # (\inst6|sel~combout\ & (\inst5|Q\(5))) ) + ( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_3~18_cout\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_3~14\ = CARRY(( (!\inst6|sel~combout\ & ((\inst3|Q\(5)))) # (\inst6|sel~combout\ & (\inst5|Q\(5))) ) + ( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_3~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Q\(5),
	datab => \inst6|ALT_INV_sel~combout\,
	datac => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	datad => \inst3|ALT_INV_Q\(5),
	cin => \inst2|Div0|auto_generated|divider|divider|op_3~18_cout\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_3~13_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_3~14\);

-- Location: LABCELL_X36_Y19_N12
\inst2|Div0|auto_generated|divider|divider|op_3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_3~9_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(1) & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\)) # (\inst2|Div0|auto_generated|divider|divider|sel\(1) & ((\inst|outputF[6]~1_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & 
-- (((\inst|outputF[6]~1_combout\)))) ) + ( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_3~14\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_3~10\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(1) & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\)) # (\inst2|Div0|auto_generated|divider|divider|sel\(1) & ((\inst|outputF[6]~1_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & 
-- (((\inst|outputF[6]~1_combout\)))) ) + ( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(1),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	datad => \inst|ALT_INV_outputF[6]~1_combout\,
	dataf => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_3~14\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_3~9_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_3~10\);

-- Location: LABCELL_X36_Y19_N15
\inst2|Div0|auto_generated|divider|divider|op_3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_3~5_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(1) & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) # (\inst2|Div0|auto_generated|divider|divider|sel\(1) & ((\inst2|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\))))) # 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\)))) ) + ( !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_3~10\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_3~6\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(1) & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) # (\inst2|Div0|auto_generated|divider|divider|sel\(1) & ((\inst2|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\))))) # 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\)))) ) + ( !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(1),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~0_combout\,
	dataf => \inst4|ALT_INV_Q[2]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_3~10\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_3~5_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_3~6\);

-- Location: LABCELL_X36_Y19_N18
\inst2|Div0|auto_generated|divider|divider|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst2|Div0|auto_generated|divider|divider|op_3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_3~6\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\);

-- Location: LABCELL_X39_Y19_N57
\inst2|Div0|auto_generated|divider|divider|StageOut[18]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_3~5_sumout\ & ( (((!\inst2|Div0|auto_generated|divider|divider|sel\(2) & !\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\)) # (\inst2|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_3~5_sumout\ & ( 
-- (!\inst2|Div0|auto_generated|divider|divider|sel\(2) & (\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|sel\(2) & (((\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100111111000101010011111110111111001111111011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(2),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~1_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LABCELL_X39_Y19_N54
\inst2|Div0|auto_generated|divider|divider|StageOut[27]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[27]~5_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ ) ) # ( 
-- !\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( (\inst2|Div0|auto_generated|divider|divider|sel\(3) & \inst2|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3),
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[27]~5_combout\);

-- Location: LABCELL_X36_Y19_N48
\inst2|Div0|auto_generated|divider|divider|selnose[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|selnose\(18) = ( \inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ ) # ( !\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|sel\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(2),
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|selnose\(18));

-- Location: MLABCELL_X37_Y19_N3
\inst2|Div0|auto_generated|divider|divider|StageOut[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ = ( \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( 
-- \inst|outputF[6]~1_combout\ ) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( \inst|outputF[6]~1_combout\ ) ) ) # ( 
-- \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ & ( !\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( (!\inst2|Div0|auto_generated|divider|divider|sel\(1)) # (\inst|outputF[6]~1_combout\) ) ) ) 
-- # ( !\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ & ( !\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( (\inst|outputF[6]~1_combout\ & \inst2|Div0|auto_generated|divider|divider|sel\(1)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_outputF[6]~1_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(1),
	datae => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\);

-- Location: MLABCELL_X37_Y19_N36
\inst|outputF[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|outputF[5]~2_combout\ = ( \inst3|Q\(5) & ( \inst5|Q\(5) ) ) # ( !\inst3|Q\(5) & ( \inst5|Q\(5) & ( \inst6|sel~combout\ ) ) ) # ( \inst3|Q\(5) & ( !\inst5|Q\(5) & ( !\inst6|sel~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_sel~combout\,
	datae => \inst3|ALT_INV_Q\(5),
	dataf => \inst5|ALT_INV_Q\(5),
	combout => \inst|outputF[5]~2_combout\);

-- Location: IOIBUF_X36_Y0_N52
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: FF_X36_Y19_N29
\inst3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|curr_state.fetch~q\,
	asdata => \A[4]~input_o\,
	sclr => \Rst_A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(4));

-- Location: IOIBUF_X54_Y14_N44
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: FF_X35_Y18_N8
\inst3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|curr_state.fetch~q\,
	asdata => \A[3]~input_o\,
	sclr => \Rst_A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(3));

-- Location: MLABCELL_X37_Y19_N24
\inst|outputF[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|outputF[3]~4_combout\ = ( \inst3|Q\(3) & ( (!\inst6|sel~combout\) # (\inst5|Q\(3)) ) ) # ( !\inst3|Q\(3) & ( (\inst5|Q\(3) & \inst6|sel~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_Q\(3),
	datac => \inst6|ALT_INV_sel~combout\,
	dataf => \inst3|ALT_INV_Q\(3),
	combout => \inst|outputF[3]~4_combout\);

-- Location: LABCELL_X35_Y18_N42
\inst2|ALU_RESULT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ALU_RESULT~4_combout\ = ( \inst4|Q[3]~_Duplicate_1_q\ & ( !\inst|outputF[3]~4_combout\ ) ) # ( !\inst4|Q[3]~_Duplicate_1_q\ & ( \inst|outputF[3]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_outputF[3]~4_combout\,
	dataf => \inst4|ALT_INV_Q[3]~_Duplicate_1_q\,
	combout => \inst2|ALU_RESULT~4_combout\);

-- Location: IOIBUF_X54_Y21_N55
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: FF_X36_Y19_N8
\inst3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|curr_state.fetch~q\,
	asdata => \A[2]~input_o\,
	sclr => \Rst_A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(2));

-- Location: MLABCELL_X37_Y19_N18
\inst|outputF[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|outputF[2]~5_combout\ = ( \inst5|Q\(2) & ( (\inst3|Q\(2)) # (\inst6|sel~combout\) ) ) # ( !\inst5|Q\(2) & ( (!\inst6|sel~combout\ & \inst3|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_sel~combout\,
	datac => \inst3|ALT_INV_Q\(2),
	dataf => \inst5|ALT_INV_Q\(2),
	combout => \inst|outputF[2]~5_combout\);

-- Location: LABCELL_X35_Y18_N0
\inst2|ALU_RESULT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ALU_RESULT~5_combout\ = ( \inst|outputF[2]~5_combout\ & ( !\inst4|Q[2]~_Duplicate_1_q\ ) ) # ( !\inst|outputF[2]~5_combout\ & ( \inst4|Q[2]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Q[2]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_outputF[2]~5_combout\,
	combout => \inst2|ALU_RESULT~5_combout\);

-- Location: IOIBUF_X36_Y0_N35
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: FF_X36_Y19_N59
\inst3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|curr_state.fetch~q\,
	asdata => \A[1]~input_o\,
	sclr => \Rst_A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(1));

-- Location: LABCELL_X35_Y19_N36
\inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~25_sumout\ = SUM(( !\op_code[0]~input_o\ $ (!\inst4|Q[1]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(1)))) # (\inst6|sel~combout\ & (\inst5|Q\(1))) ) + ( \inst2|Add0~30\ ))
-- \inst2|Add0~26\ = CARRY(( !\op_code[0]~input_o\ $ (!\inst4|Q[1]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(1)))) # (\inst6|sel~combout\ & (\inst5|Q\(1))) ) + ( \inst2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_sel~combout\,
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \inst5|ALT_INV_Q\(1),
	datad => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	dataf => \inst3|ALT_INV_Q\(1),
	cin => \inst2|Add0~30\,
	sumout => \inst2|Add0~25_sumout\,
	cout => \inst2|Add0~26\);

-- Location: LABCELL_X35_Y19_N39
\inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~21_sumout\ = SUM(( !\op_code[0]~input_o\ $ (!\inst4|Q[2]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(2)))) # (\inst6|sel~combout\ & (\inst5|Q\(2))) ) + ( \inst2|Add0~26\ ))
-- \inst2|Add0~22\ = CARRY(( !\op_code[0]~input_o\ $ (!\inst4|Q[2]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(2)))) # (\inst6|sel~combout\ & (\inst5|Q\(2))) ) + ( \inst2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_sel~combout\,
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \inst5|ALT_INV_Q\(2),
	datad => \inst4|ALT_INV_Q[2]~_Duplicate_1_q\,
	dataf => \inst3|ALT_INV_Q\(2),
	cin => \inst2|Add0~26\,
	sumout => \inst2|Add0~21_sumout\,
	cout => \inst2|Add0~22\);

-- Location: MLABCELL_X34_Y19_N12
\inst|outputF[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|outputF[4]~3_combout\ = ( \inst3|Q\(4) & ( (!\inst6|sel~combout\) # (\inst5|Q\(4)) ) ) # ( !\inst3|Q\(4) & ( (\inst6|sel~combout\ & \inst5|Q\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_sel~combout\,
	datac => \inst5|ALT_INV_Q\(4),
	dataf => \inst3|ALT_INV_Q\(4),
	combout => \inst|outputF[4]~3_combout\);

-- Location: DSP_X33_Y19_N0
\inst2|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst2|Mult0~8_ACLR_bus\,
	clk => \inst2|Mult0~8_CLK_bus\,
	ena => \inst2|Mult0~8_ENA_bus\,
	ax => \inst2|Mult0~8_AX_bus\,
	ay => \inst2|Mult0~8_AY_bus\,
	resulta => \inst2|Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X37_Y19_N42
\inst2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\op_code[0]~input_o\ & \inst2|Mult0~10\) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\op_code[0]~input_o\ & ((\inst2|Mult0~10\))) # 
-- (\op_code[0]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|sel\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011101110010001001110111000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[0]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datad => \inst2|ALT_INV_Mult0~10\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: IOIBUF_X54_Y19_N55
\op_code[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(1),
	o => \op_code[1]~input_o\);

-- Location: MLABCELL_X34_Y19_N6
\inst2|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux5~1_combout\ = ( \inst2|Mux5~0_combout\ & ( \op_code[1]~input_o\ & ( !\op_code[2]~input_o\ ) ) ) # ( \inst2|Mux5~0_combout\ & ( !\op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & (((\inst2|Add0~21_sumout\)))) # (\op_code[2]~input_o\ & 
-- (!\inst2|ALU_RESULT~5_combout\ $ ((!\op_code[0]~input_o\)))) ) ) ) # ( !\inst2|Mux5~0_combout\ & ( !\op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & (((\inst2|Add0~21_sumout\)))) # (\op_code[2]~input_o\ & (!\inst2|ALU_RESULT~5_combout\ $ 
-- ((!\op_code[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ALU_RESULT~5_combout\,
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \ALT_INV_op_code[2]~input_o\,
	datad => \inst2|ALT_INV_Add0~21_sumout\,
	datae => \inst2|ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_op_code[1]~input_o\,
	combout => \inst2|Mux5~1_combout\);

-- Location: MLABCELL_X34_Y19_N0
\inst5|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Q[2]~feeder_combout\ = ( \inst2|Mux5~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mux5~1_combout\,
	combout => \inst5|Q[2]~feeder_combout\);

-- Location: IOIBUF_X54_Y16_N55
\Rst_C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst_C,
	o => \Rst_C~input_o\);

-- Location: FF_X34_Y19_N2
\inst5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_C~combout\,
	d => \inst5|Q[2]~feeder_combout\,
	sclr => \Rst_C~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(2));

-- Location: LABCELL_X35_Y19_N42
\inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_sumout\ = SUM(( !\op_code[0]~input_o\ $ (!\inst4|Q[3]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(3)))) # (\inst6|sel~combout\ & (\inst5|Q\(3))) ) + ( \inst2|Add0~22\ ))
-- \inst2|Add0~18\ = CARRY(( !\op_code[0]~input_o\ $ (!\inst4|Q[3]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(3)))) # (\inst6|sel~combout\ & (\inst5|Q\(3))) ) + ( \inst2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[0]~input_o\,
	datab => \inst6|ALT_INV_sel~combout\,
	datac => \inst5|ALT_INV_Q\(3),
	datad => \inst4|ALT_INV_Q[3]~_Duplicate_1_q\,
	dataf => \inst3|ALT_INV_Q\(3),
	cin => \inst2|Add0~22\,
	sumout => \inst2|Add0~17_sumout\,
	cout => \inst2|Add0~18\);

-- Location: MLABCELL_X34_Y19_N27
\inst2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = ( \inst2|Mult0~11\ & ( \inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\op_code[0]~input_o\ ) ) ) # ( \inst2|Mult0~11\ & ( !\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\op_code[0]~input_o\) # 
-- (!\inst2|Div0|auto_generated|divider|divider|sel\(4)) ) ) ) # ( !\inst2|Mult0~11\ & ( !\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\op_code[0]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|sel\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111111001111110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	datae => \inst2|ALT_INV_Mult0~11\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: MLABCELL_X34_Y19_N42
\inst2|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux4~1_combout\ = ( !\op_code[2]~input_o\ & ( \op_code[1]~input_o\ & ( \inst2|Mux4~0_combout\ ) ) ) # ( \op_code[2]~input_o\ & ( !\op_code[1]~input_o\ & ( !\inst2|ALU_RESULT~4_combout\ $ (!\op_code[0]~input_o\) ) ) ) # ( !\op_code[2]~input_o\ & ( 
-- !\op_code[1]~input_o\ & ( \inst2|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101011010101000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ALU_RESULT~4_combout\,
	datab => \inst2|ALT_INV_Add0~17_sumout\,
	datac => \inst2|ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_op_code[0]~input_o\,
	datae => \ALT_INV_op_code[2]~input_o\,
	dataf => \ALT_INV_op_code[1]~input_o\,
	combout => \inst2|Mux4~1_combout\);

-- Location: FF_X35_Y19_N20
\inst5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_C~combout\,
	asdata => \inst2|Mux4~1_combout\,
	sclr => \Rst_C~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(3));

-- Location: LABCELL_X35_Y19_N45
\inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~13_sumout\ = SUM(( !\op_code[0]~input_o\ $ (!\inst4|Q[4]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(4)))) # (\inst6|sel~combout\ & (\inst5|Q\(4))) ) + ( \inst2|Add0~18\ ))
-- \inst2|Add0~14\ = CARRY(( !\op_code[0]~input_o\ $ (!\inst4|Q[4]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(4)))) # (\inst6|sel~combout\ & (\inst5|Q\(4))) ) + ( \inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[0]~input_o\,
	datab => \inst6|ALT_INV_sel~combout\,
	datac => \inst5|ALT_INV_Q\(4),
	datad => \inst4|ALT_INV_Q[4]~_Duplicate_1_q\,
	dataf => \inst3|ALT_INV_Q\(4),
	cin => \inst2|Add0~18\,
	sumout => \inst2|Add0~13_sumout\,
	cout => \inst2|Add0~14\);

-- Location: LABCELL_X35_Y18_N54
\inst2|ALU_RESULT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ALU_RESULT~3_combout\ = !\inst4|Q[4]~_Duplicate_1_q\ $ (!\inst|outputF[4]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Q[4]~_Duplicate_1_q\,
	datac => \inst|ALT_INV_outputF[4]~3_combout\,
	combout => \inst2|ALU_RESULT~3_combout\);

-- Location: MLABCELL_X34_Y19_N39
\inst2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( (\inst2|Mult0~12\ & !\op_code[0]~input_o\) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\op_code[0]~input_o\ & (\inst2|Mult0~12\)) # 
-- (\op_code[0]~input_o\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001011100010111000101110001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Mult0~12\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3),
	datac => \ALT_INV_op_code[0]~input_o\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: MLABCELL_X34_Y19_N51
\inst2|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux3~1_combout\ = ( \inst2|Mux3~0_combout\ & ( \op_code[1]~input_o\ & ( !\op_code[2]~input_o\ ) ) ) # ( \inst2|Mux3~0_combout\ & ( !\op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & (((\inst2|Add0~13_sumout\)))) # (\op_code[2]~input_o\ & 
-- (!\op_code[0]~input_o\ $ (((!\inst2|ALU_RESULT~3_combout\))))) ) ) ) # ( !\inst2|Mux3~0_combout\ & ( !\op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & (((\inst2|Add0~13_sumout\)))) # (\op_code[2]~input_o\ & (!\op_code[0]~input_o\ $ 
-- (((!\inst2|ALU_RESULT~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101001110000110110100111000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[2]~input_o\,
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \inst2|ALT_INV_Add0~13_sumout\,
	datad => \inst2|ALT_INV_ALU_RESULT~3_combout\,
	datae => \inst2|ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_op_code[1]~input_o\,
	combout => \inst2|Mux3~1_combout\);

-- Location: LABCELL_X35_Y19_N27
\inst5|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Q[4]~feeder_combout\ = ( \inst2|Mux3~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mux3~1_combout\,
	combout => \inst5|Q[4]~feeder_combout\);

-- Location: FF_X35_Y19_N29
\inst5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_C~combout\,
	d => \inst5|Q[4]~feeder_combout\,
	sclr => \Rst_C~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(4));

-- Location: LABCELL_X36_Y19_N24
\inst2|Div0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst2|Div0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: LABCELL_X36_Y19_N27
\inst2|Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (!\inst6|sel~combout\ & ((\inst3|Q\(4)))) # (\inst6|sel~combout\ & (\inst5|Q\(4))) ) + ( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( (!\inst6|sel~combout\ & ((\inst3|Q\(4)))) # (\inst6|sel~combout\ & (\inst5|Q\(4))) ) + ( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Q\(4),
	datab => \inst6|ALT_INV_sel~combout\,
	datac => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	datad => \inst3|ALT_INV_Q\(4),
	cin => \inst2|Div0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X36_Y19_N30
\inst2|Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(2) & (\inst2|Div0|auto_generated|divider|divider|op_3~13_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(2) & ((\inst|outputF[5]~2_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\inst|outputF[5]~2_combout\)))) ) + ( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( 
-- \inst2|Div0|auto_generated|divider|divider|op_4~18\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(2) & (\inst2|Div0|auto_generated|divider|divider|op_3~13_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(2) & ((\inst|outputF[5]~2_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\inst|outputF[5]~2_combout\)))) ) + ( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( 
-- \inst2|Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(2),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	datad => \inst|ALT_INV_outputF[5]~2_combout\,
	dataf => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_4~18\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X36_Y19_N33
\inst2|Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(2) & (\inst2|Div0|auto_generated|divider|divider|op_3~9_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(2) & ((\inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\)))) ) + ( !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_4~14\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(2) & (\inst2|Div0|auto_generated|divider|divider|op_3~9_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(2) & ((\inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\)))) ) + ( !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(2),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\,
	dataf => \inst4|ALT_INV_Q[2]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X36_Y19_N36
\inst2|Div0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|selnose\(18) & (((\inst2|Div0|auto_generated|divider|divider|op_3~5_sumout\)))) # (\inst2|Div0|auto_generated|divider|divider|selnose\(18) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\)) # (\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\))) ) + ( !\inst4|Q[3]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_4~10\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_4~6\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|selnose\(18) & (((\inst2|Div0|auto_generated|divider|divider|op_3~5_sumout\)))) # (\inst2|Div0|auto_generated|divider|divider|selnose\(18) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\)) # (\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\))) ) + ( !\inst4|Q[3]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~1_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_selnose\(18),
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\,
	dataf => \inst4|ALT_INV_Q[3]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_4~6\);

-- Location: MLABCELL_X37_Y19_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[17]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_3~9_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( 
-- \inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ ) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_3~9_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( 
-- \inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ ) ) ) # ( \inst2|Div0|auto_generated|divider|divider|op_3~9_sumout\ & ( !\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( (!\inst2|Div0|auto_generated|divider|divider|sel\(2)) 
-- # (\inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\) ) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_3~9_sumout\ & ( !\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(2) & \inst2|Div0|auto_generated|divider|divider|StageOut[8]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(2),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\,
	datae => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\);

-- Location: MLABCELL_X37_Y19_N48
\inst2|Div0|auto_generated|divider|divider|StageOut[16]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( \inst|outputF[5]~2_combout\ ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( 
-- (!\inst2|Div0|auto_generated|divider|divider|sel\(2) & (\inst2|Div0|auto_generated|divider|divider|op_3~13_sumout\)) # (\inst2|Div0|auto_generated|divider|divider|sel\(2) & ((\inst|outputF[5]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(2),
	datad => \inst|ALT_INV_outputF[5]~2_combout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\);

-- Location: LABCELL_X39_Y19_N24
\inst2|Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst2|Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X39_Y19_N27
\inst2|Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(3)))) # (\inst6|sel~combout\ & (\inst5|Q\(3))) ) + ( \inst2|Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(3)))) # (\inst6|sel~combout\ & (\inst5|Q\(3))) ) + ( \inst2|Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_sel~combout\,
	datac => \inst5|ALT_INV_Q\(3),
	datad => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	dataf => \inst3|ALT_INV_Q\(3),
	cin => \inst2|Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X39_Y19_N30
\inst2|Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|sel\(3) & ((!\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|op_4~17_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\inst|outputF[4]~3_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|sel\(3) & (((\inst|outputF[4]~3_combout\)))) ) + ( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( 
-- \inst2|Div0|auto_generated|divider|divider|op_5~22\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|sel\(3) & ((!\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|op_4~17_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\inst|outputF[4]~3_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|sel\(3) & (((\inst|outputF[4]~3_combout\)))) ) + ( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( 
-- \inst2|Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datad => \inst|ALT_INV_outputF[4]~3_combout\,
	dataf => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X39_Y19_N33
\inst2|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|sel\(3) & ((!\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|op_4~13_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|sel\(3) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\)))) ) + ( !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_5~18\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|sel\(3) & ((!\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|op_4~13_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|sel\(3) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\)))) ) + ( !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\,
	dataf => \inst4|ALT_INV_Q[2]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X39_Y19_N36
\inst2|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|sel\(3) & ((!\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_4~9_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|sel\(3) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) ) + ( !\inst4|Q[3]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_5~14\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|sel\(3) & ((!\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_4~9_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|sel\(3) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) ) + ( !\inst4|Q[3]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	dataf => \inst4|ALT_INV_Q[3]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X39_Y19_N39
\inst2|Div0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|sel\(3) & ((!\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_4~5_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|sel\(3) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\)))) ) + ( !\inst4|Q[4]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_5~10\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_5~6\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|sel\(3) & ((!\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_4~5_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|sel\(3) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\)))) ) + ( !\inst4|Q[4]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	dataf => \inst4|ALT_INV_Q[4]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X39_Y19_N42
\inst2|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst2|Div0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_5~6\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X40_Y19_N39
\inst2|Div0|auto_generated|divider|divider|StageOut[36]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[36]~6_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_5~5_sumout\ & ( (((!\inst2|Div0|auto_generated|divider|divider|sel\(4) & !\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\)) # (\inst2|Div0|auto_generated|divider|divider|StageOut[27]~5_combout\) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_5~5_sumout\ & ( 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[27]~5_combout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(4))))) # (\inst2|Div0|auto_generated|divider|divider|StageOut[27]~5_combout\ & (((\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\)) # (\inst2|Div0|auto_generated|divider|divider|sel\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001101011111000100110101111111011111010111111101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~5_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~4_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[36]~6_combout\);

-- Location: LABCELL_X39_Y19_N48
\inst2|Div0|auto_generated|divider|divider|selnose[36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|selnose\(36) = ( \inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) # ( !\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|sel\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|selnose\(36));

-- Location: MLABCELL_X37_Y19_N33
\inst2|Div0|auto_generated|divider|divider|StageOut[26]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[26]~11_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_4~9_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- \inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ ) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_4~9_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- \inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ ) ) ) # ( \inst2|Div0|auto_generated|divider|divider|op_4~9_sumout\ & ( !\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- (!\inst2|Div0|auto_generated|divider|divider|sel\(3)) # (\inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\) ) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_4~9_sumout\ & ( 
-- !\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( (\inst2|Div0|auto_generated|divider|divider|sel\(3) & \inst2|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\,
	datae => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[26]~11_combout\);

-- Location: MLABCELL_X37_Y19_N27
\inst2|Div0|auto_generated|divider|divider|StageOut[25]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ ) ) # ( 
-- !\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\inst2|Div0|auto_generated|divider|divider|sel\(3) & (\inst2|Div0|auto_generated|divider|divider|op_4~13_sumout\)) # (\inst2|Div0|auto_generated|divider|divider|sel\(3) & 
-- ((\inst2|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3),
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\);

-- Location: MLABCELL_X37_Y19_N54
\inst2|Div0|auto_generated|divider|divider|StageOut[24]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ = ( \inst2|Div0|auto_generated|divider|divider|sel\(3) & ( \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \inst|outputF[4]~3_combout\ ) ) ) # ( 
-- !\inst2|Div0|auto_generated|divider|divider|sel\(3) & ( \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \inst|outputF[4]~3_combout\ ) ) ) # ( \inst2|Div0|auto_generated|divider|divider|sel\(3) & ( 
-- !\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \inst|outputF[4]~3_combout\ ) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|sel\(3) & ( !\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- \inst2|Div0|auto_generated|divider|divider|op_4~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_outputF[4]~3_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datae => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3),
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[24]~18_combout\);

-- Location: LABCELL_X39_Y19_N0
\inst2|Div0|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst2|Div0|auto_generated|divider|divider|op_6~30_cout\);

-- Location: LABCELL_X39_Y19_N3
\inst2|Div0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( (!\inst6|sel~combout\ & ((\inst3|Q\(2)))) # (\inst6|sel~combout\ & (\inst5|Q\(2))) ) + ( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~30_cout\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_6~26\ = CARRY(( (!\inst6|sel~combout\ & ((\inst3|Q\(2)))) # (\inst6|sel~combout\ & (\inst5|Q\(2))) ) + ( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Q\(2),
	datac => \inst6|ALT_INV_sel~combout\,
	datad => \inst3|ALT_INV_Q\(2),
	dataf => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X39_Y19_N6
\inst2|Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|sel\(4) & ((!\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|op_5~21_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|outputF[3]~4_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|sel\(4) & (((\inst|outputF[3]~4_combout\)))) ) + ( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( 
-- \inst2|Div0|auto_generated|divider|divider|op_6~26\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|sel\(4) & ((!\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|op_5~21_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|outputF[3]~4_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|sel\(4) & (((\inst|outputF[3]~4_combout\)))) ) + ( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( 
-- \inst2|Div0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \inst|ALT_INV_outputF[3]~4_combout\,
	dataf => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_6~26\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X39_Y19_N9
\inst2|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|sel\(4) & ((!\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|op_5~17_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|sel\(4) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[24]~18_combout\)))) ) + ( !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~22\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|sel\(4) & ((!\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|op_5~17_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|sel\(4) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[24]~18_combout\)))) ) + ( !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\,
	dataf => \inst4|ALT_INV_Q[2]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X39_Y19_N12
\inst2|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|sel\(4) & ((!\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|sel\(4) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) ) + ( !\inst4|Q[3]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~18\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|sel\(4) & ((!\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|sel\(4) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) ) + ( !\inst4|Q[3]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \inst4|ALT_INV_Q[3]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X39_Y19_N15
\inst2|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|sel\(4) & ((!\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|sel\(4) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) ) + ( !\inst4|Q[4]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|sel\(4) & ((!\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|sel\(4) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) ) + ( !\inst4|Q[4]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	dataf => \inst4|ALT_INV_Q[4]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X39_Y19_N18
\inst2|Div0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|selnose\(36) & (((\inst2|Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # (\inst2|Div0|auto_generated|divider|divider|selnose\(36) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[27]~5_combout\)) # (\inst2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\))) ) + ( !\inst4|Q[5]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~10\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_6~6\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|selnose\(36) & (((\inst2|Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # (\inst2|Div0|auto_generated|divider|divider|selnose\(36) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[27]~5_combout\)) # (\inst2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\))) ) + ( !\inst4|Q[5]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~4_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_selnose\(36),
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~5_combout\,
	dataf => \inst4|ALT_INV_Q[5]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X40_Y19_N45
\inst2|Div0|auto_generated|divider|divider|StageOut[35]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_5~9_sumout\ & ( ((!\inst2|Div0|auto_generated|divider|divider|sel\(4) & !\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[26]~11_combout\) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_5~9_sumout\ & ( (\inst2|Div0|auto_generated|divider|divider|StageOut[26]~11_combout\ & 
-- ((\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\inst2|Div0|auto_generated|divider|divider|sel\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\);

-- Location: LABCELL_X40_Y19_N42
\inst2|Div0|auto_generated|divider|divider|StageOut[34]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ = ( \inst2|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ & ( ((\inst2|Div0|auto_generated|divider|divider|op_5~13_sumout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\)) # (\inst2|Div0|auto_generated|divider|divider|sel\(4)) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ & ( (!\inst2|Div0|auto_generated|divider|divider|sel\(4) & 
-- (!\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \inst2|Div0|auto_generated|divider|divider|op_5~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[34]~16_combout\);

-- Location: LABCELL_X40_Y19_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[33]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( ((!\inst2|Div0|auto_generated|divider|divider|sel\(4) & !\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[24]~18_combout\) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( (\inst2|Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ & 
-- ((\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\inst2|Div0|auto_generated|divider|divider|sel\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[33]~19_combout\);

-- Location: LABCELL_X40_Y19_N57
\inst2|Div0|auto_generated|divider|divider|StageOut[32]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ = (!\inst2|Div0|auto_generated|divider|divider|sel\(4) & ((!\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\inst|outputF[3]~4_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|sel\(4) & (\inst|outputF[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100110011000110110011001100011011001100110001101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(4),
	datab => \inst|ALT_INV_outputF[3]~4_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\);

-- Location: LABCELL_X40_Y19_N0
\inst2|Div0|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~34_cout\);

-- Location: LABCELL_X40_Y19_N3
\inst2|Div0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(1)))) # (\inst6|sel~combout\ & (\inst5|Q\(1))) ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~34_cout\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_7~30\ = CARRY(( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(1)))) # (\inst6|sel~combout\ & (\inst5|Q\(1))) ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010101100101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Q\(1),
	datab => \inst3|ALT_INV_Q\(1),
	datac => \inst6|ALT_INV_sel~combout\,
	datad => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X40_Y19_N6
\inst2|Div0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|op_6~25_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst|outputF[2]~5_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\inst|outputF[2]~5_combout\)))) ) + ( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( 
-- \inst2|Div0|auto_generated|divider|divider|op_7~30\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|op_6~25_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst|outputF[2]~5_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\inst|outputF[2]~5_combout\)))) ) + ( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( 
-- \inst2|Div0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	datad => \inst|ALT_INV_outputF[2]~5_combout\,
	dataf => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~30\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X40_Y19_N9
\inst2|Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|op_6~21_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\)))) ) + ( !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~26\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|op_6~21_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\))))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\)))) ) + ( !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\,
	dataf => \inst4|ALT_INV_Q[2]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~26\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X40_Y19_N12
\inst2|Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst2|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) ) + ( !\inst4|Q[3]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~22\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst2|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) ) + ( !\inst4|Q[3]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	dataf => \inst4|ALT_INV_Q[3]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X40_Y19_N15
\inst2|Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst2|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) ) + ( !\inst4|Q[4]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~18\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst2|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) ) + ( !\inst4|Q[4]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \inst4|ALT_INV_Q[4]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X40_Y19_N18
\inst2|Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst2|Div0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) ) + ( !\inst4|Q[5]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~14\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst2|Div0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) ) + ( !\inst4|Q[5]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \inst4|ALT_INV_Q[5]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X40_Y19_N21
\inst2|Div0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst2|Div0|auto_generated|divider|divider|op_6~5_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|StageOut[36]~6_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[36]~6_combout\)))) ) + ( !\inst4|Q[6]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~10\ ))
-- \inst2|Div0|auto_generated|divider|divider|op_7~6\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & ((\inst2|Div0|auto_generated|divider|divider|op_6~5_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5) & (\inst2|Div0|auto_generated|divider|divider|StageOut[36]~6_combout\)))) # (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[36]~6_combout\)))) ) + ( !\inst4|Q[6]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~6_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \inst4|ALT_INV_Q[6]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~10\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X40_Y19_N24
\inst2|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst2|Div0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~6\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X39_Y18_N3
\inst2|ALU_RESULT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ALU_RESULT~6_combout\ = ( \inst4|Q[1]~_Duplicate_1_q\ & ( !\inst|outputF[1]~6_combout\ ) ) # ( !\inst4|Q[1]~_Duplicate_1_q\ & ( \inst|outputF[1]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_outputF[1]~6_combout\,
	dataf => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	combout => \inst2|ALU_RESULT~6_combout\);

-- Location: MLABCELL_X37_Y19_N12
\inst2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = ( \inst2|Mult0~9\ & ( \op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & !\op_code[0]~input_o\) ) ) ) # ( \inst2|Mult0~9\ & ( !\op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & (((\inst2|Add0~25_sumout\)))) # (\op_code[2]~input_o\ 
-- & (!\inst2|ALU_RESULT~6_combout\ $ ((!\op_code[0]~input_o\)))) ) ) ) # ( !\inst2|Mult0~9\ & ( !\op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & (((\inst2|Add0~25_sumout\)))) # (\op_code[2]~input_o\ & (!\inst2|ALU_RESULT~6_combout\ $ 
-- ((!\op_code[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001011011110000100101101111000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ALU_RESULT~6_combout\,
	datab => \ALT_INV_op_code[2]~input_o\,
	datac => \ALT_INV_op_code[0]~input_o\,
	datad => \inst2|ALT_INV_Add0~25_sumout\,
	datae => \inst2|ALT_INV_Mult0~9\,
	dataf => \ALT_INV_op_code[1]~input_o\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LABCELL_X40_Y19_N48
\inst2|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux6~1_combout\ = ( \op_code[1]~input_o\ & ( \inst2|Mux6~0_combout\ ) ) # ( !\op_code[1]~input_o\ & ( \inst2|Mux6~0_combout\ ) ) # ( \op_code[1]~input_o\ & ( !\inst2|Mux6~0_combout\ & ( (!\op_code[2]~input_o\ & (\op_code[0]~input_o\ & 
-- (!\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & !\inst4|Q[7]~_Duplicate_1_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[2]~input_o\,
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	datae => \ALT_INV_op_code[1]~input_o\,
	dataf => \inst2|ALT_INV_Mux6~0_combout\,
	combout => \inst2|Mux6~1_combout\);

-- Location: FF_X40_Y19_N56
\inst5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_C~combout\,
	asdata => \inst2|Mux6~1_combout\,
	sclr => \Rst_C~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(1));

-- Location: LABCELL_X41_Y19_N33
\inst|outputF[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|outputF[1]~6_combout\ = ( \inst3|Q\(1) & ( (!\inst6|sel~combout\) # (\inst5|Q\(1)) ) ) # ( !\inst3|Q\(1) & ( (\inst6|sel~combout\ & \inst5|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_sel~combout\,
	datad => \inst5|ALT_INV_Q\(1),
	dataf => \inst3|ALT_INV_Q\(1),
	combout => \inst|outputF[1]~6_combout\);

-- Location: MLABCELL_X34_Y19_N21
\inst2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( (!\op_code[0]~input_o\ & \inst2|Mult0~13\) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( (!\op_code[0]~input_o\ & ((\inst2|Mult0~13\))) # 
-- (\op_code[0]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|sel\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100001111110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(2),
	datad => \inst2|ALT_INV_Mult0~13\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LABCELL_X35_Y19_N48
\inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_sumout\ = SUM(( (!\inst6|sel~combout\ & ((\inst3|Q\(5)))) # (\inst6|sel~combout\ & (\inst5|Q\(5))) ) + ( !\op_code[0]~input_o\ $ (!\inst4|Q[5]~_Duplicate_1_q\) ) + ( \inst2|Add0~14\ ))
-- \inst2|Add0~10\ = CARRY(( (!\inst6|sel~combout\ & ((\inst3|Q\(5)))) # (\inst6|sel~combout\ & (\inst5|Q\(5))) ) + ( !\op_code[0]~input_o\ $ (!\inst4|Q[5]~_Duplicate_1_q\) ) + ( \inst2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[0]~input_o\,
	datab => \inst6|ALT_INV_sel~combout\,
	datac => \inst5|ALT_INV_Q\(5),
	datad => \inst3|ALT_INV_Q\(5),
	dataf => \inst4|ALT_INV_Q[5]~_Duplicate_1_q\,
	cin => \inst2|Add0~14\,
	sumout => \inst2|Add0~9_sumout\,
	cout => \inst2|Add0~10\);

-- Location: MLABCELL_X37_Y18_N42
\inst2|ALU_RESULT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ALU_RESULT~2_combout\ = !\inst4|Q[5]~_Duplicate_1_q\ $ (!\inst|outputF[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Q[5]~_Duplicate_1_q\,
	datac => \inst|ALT_INV_outputF[5]~2_combout\,
	combout => \inst2|ALU_RESULT~2_combout\);

-- Location: MLABCELL_X37_Y18_N15
\inst2|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux2~1_combout\ = ( \op_code[1]~input_o\ & ( \inst2|ALU_RESULT~2_combout\ & ( (!\op_code[2]~input_o\ & \inst2|Mux2~0_combout\) ) ) ) # ( !\op_code[1]~input_o\ & ( \inst2|ALU_RESULT~2_combout\ & ( (!\op_code[2]~input_o\ & ((\inst2|Add0~9_sumout\))) 
-- # (\op_code[2]~input_o\ & (!\op_code[0]~input_o\)) ) ) ) # ( \op_code[1]~input_o\ & ( !\inst2|ALU_RESULT~2_combout\ & ( (!\op_code[2]~input_o\ & \inst2|Mux2~0_combout\) ) ) ) # ( !\op_code[1]~input_o\ & ( !\inst2|ALU_RESULT~2_combout\ & ( 
-- (!\op_code[2]~input_o\ & ((\inst2|Add0~9_sumout\))) # (\op_code[2]~input_o\ & (\op_code[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101001000100111011100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[2]~input_o\,
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \inst2|ALT_INV_Mux2~0_combout\,
	datad => \inst2|ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_op_code[1]~input_o\,
	dataf => \inst2|ALT_INV_ALU_RESULT~2_combout\,
	combout => \inst2|Mux2~1_combout\);

-- Location: MLABCELL_X37_Y18_N51
\inst5|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Q[5]~feeder_combout\ = ( \inst2|Mux2~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mux2~1_combout\,
	combout => \inst5|Q[5]~feeder_combout\);

-- Location: FF_X37_Y18_N52
\inst5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_C~combout\,
	d => \inst5|Q[5]~feeder_combout\,
	sclr => \Rst_C~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(5));

-- Location: LABCELL_X35_Y19_N51
\inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_sumout\ = SUM(( !\op_code[0]~input_o\ $ (!\inst4|Q[6]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(6)))) # (\inst6|sel~combout\ & (\inst5|Q\(6))) ) + ( \inst2|Add0~10\ ))
-- \inst2|Add0~6\ = CARRY(( !\op_code[0]~input_o\ $ (!\inst4|Q[6]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(6)))) # (\inst6|sel~combout\ & (\inst5|Q\(6))) ) + ( \inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[0]~input_o\,
	datab => \inst6|ALT_INV_sel~combout\,
	datac => \inst5|ALT_INV_Q\(6),
	datad => \inst4|ALT_INV_Q[6]~_Duplicate_1_q\,
	dataf => \inst3|ALT_INV_Q\(6),
	cin => \inst2|Add0~10\,
	sumout => \inst2|Add0~5_sumout\,
	cout => \inst2|Add0~6\);

-- Location: LABCELL_X35_Y18_N57
\inst2|ALU_RESULT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ALU_RESULT~1_combout\ = ( \inst|outputF[6]~1_combout\ & ( !\inst4|Q[6]~_Duplicate_1_q\ ) ) # ( !\inst|outputF[6]~1_combout\ & ( \inst4|Q[6]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Q[6]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_outputF[6]~1_combout\,
	combout => \inst2|ALU_RESULT~1_combout\);

-- Location: MLABCELL_X34_Y19_N30
\inst2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = ( \inst2|Mult0~14\ & ( \op_code[0]~input_o\ & ( (!\inst2|Div0|auto_generated|divider|divider|sel\(1) & !\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) ) ) ) # ( !\inst2|Mult0~14\ & ( 
-- \op_code[0]~input_o\ & ( (!\inst2|Div0|auto_generated|divider|divider|sel\(1) & !\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) ) ) ) # ( \inst2|Mult0~14\ & ( !\op_code[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(1),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datae => \inst2|ALT_INV_Mult0~14\,
	dataf => \ALT_INV_op_code[0]~input_o\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LABCELL_X35_Y17_N39
\inst2|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = ( \op_code[0]~input_o\ & ( \op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & \inst2|Mux1~0_combout\) ) ) ) # ( !\op_code[0]~input_o\ & ( \op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & \inst2|Mux1~0_combout\) ) ) ) # ( 
-- \op_code[0]~input_o\ & ( !\op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & (\inst2|Add0~5_sumout\)) # (\op_code[2]~input_o\ & ((!\inst2|ALU_RESULT~1_combout\))) ) ) ) # ( !\op_code[0]~input_o\ & ( !\op_code[1]~input_o\ & ( (!\op_code[2]~input_o\ & 
-- (\inst2|Add0~5_sumout\)) # (\op_code[2]~input_o\ & ((\inst2|ALU_RESULT~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111011101000111010000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_op_code[2]~input_o\,
	datac => \inst2|ALT_INV_ALU_RESULT~1_combout\,
	datad => \inst2|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_op_code[0]~input_o\,
	dataf => \ALT_INV_op_code[1]~input_o\,
	combout => \inst2|Mux1~1_combout\);

-- Location: LABCELL_X35_Y17_N42
\inst5|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Q[6]~feeder_combout\ = ( \inst2|Mux1~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mux1~1_combout\,
	combout => \inst5|Q[6]~feeder_combout\);

-- Location: FF_X35_Y17_N44
\inst5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_C~combout\,
	d => \inst5|Q[6]~feeder_combout\,
	sclr => \Rst_C~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(6));

-- Location: LABCELL_X35_Y17_N48
\inst|outputF[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|outputF[6]~1_combout\ = ( \inst3|Q\(6) & ( \inst6|sel~combout\ & ( \inst5|Q\(6) ) ) ) # ( !\inst3|Q\(6) & ( \inst6|sel~combout\ & ( \inst5|Q\(6) ) ) ) # ( \inst3|Q\(6) & ( !\inst6|sel~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_Q\(6),
	datae => \inst3|ALT_INV_Q\(6),
	dataf => \inst6|ALT_INV_sel~combout\,
	combout => \inst|outputF[6]~1_combout\);

-- Location: LABCELL_X35_Y19_N6
\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ = SUM(( VCC ) + ( \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ ) + ( \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	sharein => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\,
	sumout => \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\);

-- Location: LABCELL_X35_Y19_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (!\inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (!\inst2|Div0|auto_generated|divider|divider|sel\(1) & 
-- \inst2|Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(1),
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LABCELL_X36_Y19_N39
\inst2|Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst2|Div0|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_4~6\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: LABCELL_X39_Y19_N51
\inst2|Div0|auto_generated|divider|divider|StageOut[27]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\ = ( !\inst2|Div0|auto_generated|divider|divider|sel\(3) & ( (!\inst2|Div0|auto_generated|divider|divider|op_4~1_sumout\ & \inst2|Div0|auto_generated|divider|divider|op_4~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(3),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\);

-- Location: LABCELL_X39_Y19_N21
\inst2|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst2|Div0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_6~6\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X41_Y19_N39
\inst2|Div0|auto_generated|divider|divider|selnose[54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|selnose\(54) = ( \inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ ) # ( !\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \inst4|Q[7]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|selnose\(54));

-- Location: LABCELL_X40_Y19_N33
\inst2|Div0|auto_generated|divider|divider|StageOut[45]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[45]~7_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_6~5_sumout\ & ( (!\inst2|Div0|auto_generated|divider|divider|sel\(5) & !\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[45]~7_combout\);

-- Location: LABCELL_X41_Y19_N36
\inst2|Div0|auto_generated|divider|divider|StageOut[45]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[45]~8_combout\ = ( \inst2|Div0|auto_generated|divider|divider|StageOut[36]~6_combout\ & ( (\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|sel\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[45]~8_combout\);

-- Location: LABCELL_X41_Y19_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[44]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_6~9_sumout\ & ( ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & !\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_6~9_sumout\ & ( (\inst2|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ & 
-- ((\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\inst2|Div0|auto_generated|divider|divider|sel\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\);

-- Location: LABCELL_X41_Y19_N54
\inst2|Div0|auto_generated|divider|divider|StageOut[43]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_6~13_sumout\ & ( ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & !\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[34]~16_combout\) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_6~13_sumout\ & ( (\inst2|Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ & 
-- ((\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\inst2|Div0|auto_generated|divider|divider|sel\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011110001000111111111000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\);

-- Location: LABCELL_X41_Y19_N57
\inst2|Div0|auto_generated|divider|divider|StageOut[42]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[42]~20_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_6~17_sumout\ & ( ((!\inst2|Div0|auto_generated|divider|divider|sel\(5) & !\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[33]~19_combout\) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_6~17_sumout\ & ( (\inst2|Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ & 
-- ((\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\inst2|Div0|auto_generated|divider|divider|sel\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[42]~20_combout\);

-- Location: MLABCELL_X42_Y19_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[41]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[41]~22_combout\ = ( \inst2|Div0|auto_generated|divider|divider|op_6~21_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- \inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ ) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_6~21_sumout\ & ( \inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- \inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ ) ) ) # ( \inst2|Div0|auto_generated|divider|divider|op_6~21_sumout\ & ( !\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- (!\inst2|Div0|auto_generated|divider|divider|sel\(5)) # (\inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\) ) ) ) # ( !\inst2|Div0|auto_generated|divider|divider|op_6~21_sumout\ & ( 
-- !\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\inst2|Div0|auto_generated|divider|divider|sel\(5) & \inst2|Div0|auto_generated|divider|divider|StageOut[32]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\,
	datae => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[41]~22_combout\);

-- Location: MLABCELL_X42_Y19_N15
\inst2|Div0|auto_generated|divider|divider|StageOut[40]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[40]~23_combout\ = ( \inst|outputF[2]~5_combout\ & ( \inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( \inst|outputF[2]~5_combout\ & ( 
-- !\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\inst2|Div0|auto_generated|divider|divider|op_6~25_sumout\) # (\inst2|Div0|auto_generated|divider|divider|sel\(5)) ) ) ) # ( !\inst|outputF[2]~5_combout\ & ( 
-- !\inst2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\inst2|Div0|auto_generated|divider|divider|sel\(5) & \inst2|Div0|auto_generated|divider|divider|op_6~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(5),
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	datae => \inst|ALT_INV_outputF[2]~5_combout\,
	dataf => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[40]~23_combout\);

-- Location: LABCELL_X41_Y19_N0
\inst2|Div0|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~38_cout\);

-- Location: LABCELL_X41_Y19_N3
\inst2|Div0|auto_generated|divider|divider|op_8~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~34_cout\ = CARRY(( (!\inst6|sel~combout\ & ((\inst3|Q\(0)))) # (\inst6|sel~combout\ & (\inst5|Q\(0))) ) + ( !\inst4|Q[0]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Q\(0),
	datac => \inst6|ALT_INV_sel~combout\,
	datad => \inst3|ALT_INV_Q\(0),
	dataf => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~38_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~34_cout\);

-- Location: LABCELL_X41_Y19_N6
\inst2|Div0|auto_generated|divider|divider|op_8~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~30_cout\ = CARRY(( !\inst4|Q[1]~_Duplicate_1_q\ ) + ( (!\inst4|Q[7]~_Duplicate_1_q\ & ((!\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\inst2|Div0|auto_generated|divider|divider|op_7~29_sumout\)) # (\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|outputF[1]~6_combout\))))) # (\inst4|Q[7]~_Duplicate_1_q\ & (((\inst|outputF[1]~6_combout\)))) ) + ( 
-- \inst2|Div0|auto_generated|divider|divider|op_8~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	datad => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_outputF[1]~6_combout\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~34_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~30_cout\);

-- Location: LABCELL_X41_Y19_N9
\inst2|Div0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( (!\inst4|Q[7]~_Duplicate_1_q\ & ((!\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~25_sumout\)) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[40]~23_combout\))))) # (\inst4|Q[7]~_Duplicate_1_q\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[40]~23_combout\)))) ) + ( 
-- !\inst4|Q[2]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_8~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\,
	dataf => \inst4|ALT_INV_Q[2]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~30_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~26_cout\);

-- Location: LABCELL_X41_Y19_N12
\inst2|Div0|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( (!\inst4|Q[7]~_Duplicate_1_q\ & ((!\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~21_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[41]~22_combout\)))) # (\inst4|Q[7]~_Duplicate_1_q\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[41]~22_combout\)))) ) + ( 
-- !\inst4|Q[3]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~22_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	dataf => \inst4|ALT_INV_Q[3]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~26_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~22_cout\);

-- Location: LABCELL_X41_Y19_N15
\inst2|Div0|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( (!\inst4|Q[7]~_Duplicate_1_q\ & ((!\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~17_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[42]~20_combout\)))) # (\inst4|Q[7]~_Duplicate_1_q\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[42]~20_combout\)))) ) + ( 
-- !\inst4|Q[4]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~20_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	dataf => \inst4|ALT_INV_Q[4]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~22_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~18_cout\);

-- Location: LABCELL_X41_Y19_N18
\inst2|Div0|auto_generated|divider|divider|op_8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~14_cout\ = CARRY(( (!\inst4|Q[7]~_Duplicate_1_q\ & ((!\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) # (\inst4|Q[7]~_Duplicate_1_q\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) ) + ( 
-- !\inst4|Q[5]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[43]~17_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	dataf => \inst4|ALT_INV_Q[5]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~18_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~14_cout\);

-- Location: LABCELL_X41_Y19_N21
\inst2|Div0|auto_generated|divider|divider|op_8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~10_cout\ = CARRY(( (!\inst4|Q[7]~_Duplicate_1_q\ & ((!\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~9_sumout\))) # 
-- (\inst2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\)))) # (\inst4|Q[7]~_Duplicate_1_q\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[44]~13_combout\)))) ) + ( 
-- !\inst4|Q[6]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_8~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	dataf => \inst4|ALT_INV_Q[6]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~14_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~10_cout\);

-- Location: LABCELL_X41_Y19_N24
\inst2|Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (!\inst2|Div0|auto_generated|divider|divider|selnose\(54) & (\inst2|Div0|auto_generated|divider|divider|op_7~5_sumout\)) # (\inst2|Div0|auto_generated|divider|divider|selnose\(54) & 
-- (((\inst2|Div0|auto_generated|divider|divider|StageOut[45]~8_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[45]~7_combout\)))) ) + ( !\inst4|Q[7]~_Duplicate_1_q\ ) + ( \inst2|Div0|auto_generated|divider|divider|op_8~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datab => \inst2|Div0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~7_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~8_combout\,
	dataf => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~10_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~6_cout\);

-- Location: LABCELL_X41_Y19_N27
\inst2|Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst2|Div0|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \inst2|Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X35_Y18_N51
\inst2|ALU_RESULT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ALU_RESULT~7_combout\ = ( \inst|outputF[0]~7_combout\ & ( !\inst4|Q[0]~_Duplicate_1_q\ ) ) # ( !\inst|outputF[0]~7_combout\ & ( \inst4|Q[0]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_outputF[0]~7_combout\,
	combout => \inst2|ALU_RESULT~7_combout\);

-- Location: LABCELL_X35_Y18_N9
\inst2|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux7~2_combout\ = ( !\inst2|ALU_RESULT~5_combout\ & ( !\inst2|ALU_RESULT~7_combout\ & ( (!\inst2|ALU_RESULT~3_combout\ & (!\op_code[0]~input_o\ & (!\inst2|ALU_RESULT~4_combout\ & !\inst2|ALU_RESULT~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ALU_RESULT~3_combout\,
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \inst2|ALT_INV_ALU_RESULT~4_combout\,
	datad => \inst2|ALT_INV_ALU_RESULT~6_combout\,
	datae => \inst2|ALT_INV_ALU_RESULT~5_combout\,
	dataf => \inst2|ALT_INV_ALU_RESULT~7_combout\,
	combout => \inst2|Mux7~2_combout\);

-- Location: MLABCELL_X37_Y19_N45
\inst2|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux7~3_combout\ = ( !\inst2|ALU_RESULT~0_combout\ & ( !\inst2|ALU_RESULT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_ALU_RESULT~1_combout\,
	dataf => \inst2|ALT_INV_ALU_RESULT~0_combout\,
	combout => \inst2|Mux7~3_combout\);

-- Location: LABCELL_X36_Y18_N27
\inst2|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = ( \inst3|Q\(0) & ( \inst5|Q\(0) & ( !\inst4|Q[0]~_Duplicate_1_q\ $ (\op_code[0]~input_o\) ) ) ) # ( !\inst3|Q\(0) & ( \inst5|Q\(0) & ( !\inst6|sel~combout\ $ (!\inst4|Q[0]~_Duplicate_1_q\ $ (\op_code[0]~input_o\)) ) ) ) # ( 
-- \inst3|Q\(0) & ( !\inst5|Q\(0) & ( !\inst6|sel~combout\ $ (!\inst4|Q[0]~_Duplicate_1_q\ $ (!\op_code[0]~input_o\)) ) ) ) # ( !\inst3|Q\(0) & ( !\inst5|Q\(0) & ( !\inst4|Q[0]~_Duplicate_1_q\ $ (!\op_code[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000110000110011110000111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_sel~combout\,
	datac => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	datad => \ALT_INV_op_code[0]~input_o\,
	datae => \inst3|ALT_INV_Q\(0),
	dataf => \inst5|ALT_INV_Q\(0),
	combout => \inst2|Mux7~0_combout\);

-- Location: LABCELL_X35_Y18_N45
\inst2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = ( \inst|outputF[1]~6_combout\ & ( (!\inst4|Q[1]~_Duplicate_1_q\) # ((!\inst4|Q[0]~_Duplicate_1_q\ & \inst|outputF[0]~7_combout\)) ) ) # ( !\inst|outputF[1]~6_combout\ & ( (!\inst4|Q[1]~_Duplicate_1_q\ & 
-- (!\inst4|Q[0]~_Duplicate_1_q\ & \inst|outputF[0]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	datab => \inst4|ALT_INV_Q[0]~_Duplicate_1_q\,
	datac => \inst|ALT_INV_outputF[0]~7_combout\,
	dataf => \inst|ALT_INV_outputF[1]~6_combout\,
	combout => \inst2|LessThan0~0_combout\);

-- Location: LABCELL_X35_Y18_N3
\inst2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = ( \inst|outputF[2]~5_combout\ & ( (!\inst4|Q[3]~_Duplicate_1_q\ & ((!\inst4|Q[2]~_Duplicate_1_q\) # ((\inst|outputF[3]~4_combout\) # (\inst2|LessThan0~0_combout\)))) # (\inst4|Q[3]~_Duplicate_1_q\ & 
-- (\inst|outputF[3]~4_combout\ & ((!\inst4|Q[2]~_Duplicate_1_q\) # (\inst2|LessThan0~0_combout\)))) ) ) # ( !\inst|outputF[2]~5_combout\ & ( (!\inst4|Q[3]~_Duplicate_1_q\ & (((!\inst4|Q[2]~_Duplicate_1_q\ & \inst2|LessThan0~0_combout\)) # 
-- (\inst|outputF[3]~4_combout\))) # (\inst4|Q[3]~_Duplicate_1_q\ & (!\inst4|Q[2]~_Duplicate_1_q\ & (\inst2|LessThan0~0_combout\ & \inst|outputF[3]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101110000010001010111010001010111011111000101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[3]~_Duplicate_1_q\,
	datab => \inst4|ALT_INV_Q[2]~_Duplicate_1_q\,
	datac => \inst2|ALT_INV_LessThan0~0_combout\,
	datad => \inst|ALT_INV_outputF[3]~4_combout\,
	dataf => \inst|ALT_INV_outputF[2]~5_combout\,
	combout => \inst2|LessThan0~1_combout\);

-- Location: LABCELL_X35_Y18_N21
\inst2|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = ( \inst|outputF[5]~2_combout\ & ( (!\inst4|Q[5]~_Duplicate_1_q\) # ((!\inst|outputF[4]~3_combout\ & (!\inst4|Q[4]~_Duplicate_1_q\ & \inst2|LessThan0~1_combout\)) # (\inst|outputF[4]~3_combout\ & 
-- ((!\inst4|Q[4]~_Duplicate_1_q\) # (\inst2|LessThan0~1_combout\)))) ) ) # ( !\inst|outputF[5]~2_combout\ & ( (!\inst4|Q[5]~_Duplicate_1_q\ & ((!\inst|outputF[4]~3_combout\ & (!\inst4|Q[4]~_Duplicate_1_q\ & \inst2|LessThan0~1_combout\)) # 
-- (\inst|outputF[4]~3_combout\ & ((!\inst4|Q[4]~_Duplicate_1_q\) # (\inst2|LessThan0~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100010001000001010001010111010111110111011101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[5]~_Duplicate_1_q\,
	datab => \inst|ALT_INV_outputF[4]~3_combout\,
	datac => \inst4|ALT_INV_Q[4]~_Duplicate_1_q\,
	datad => \inst2|ALT_INV_LessThan0~1_combout\,
	dataf => \inst|ALT_INV_outputF[5]~2_combout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LABCELL_X35_Y18_N36
\inst2|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux7~1_combout\ = ( \inst4|Q[6]~_Duplicate_1_q\ & ( \op_code[0]~input_o\ & ( (!\inst4|Q[7]~_Duplicate_1_q\ & (((\inst2|LessThan0~2_combout\ & \inst|outputF[6]~1_combout\)) # (\inst|outputF[7]~0_combout\))) # (\inst4|Q[7]~_Duplicate_1_q\ & 
-- (\inst2|LessThan0~2_combout\ & (\inst|outputF[6]~1_combout\ & \inst|outputF[7]~0_combout\))) ) ) ) # ( !\inst4|Q[6]~_Duplicate_1_q\ & ( \op_code[0]~input_o\ & ( (!\inst4|Q[7]~_Duplicate_1_q\ & (((\inst|outputF[7]~0_combout\) # 
-- (\inst|outputF[6]~1_combout\)) # (\inst2|LessThan0~2_combout\))) # (\inst4|Q[7]~_Duplicate_1_q\ & (\inst|outputF[7]~0_combout\ & ((\inst|outputF[6]~1_combout\) # (\inst2|LessThan0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001100110111110000010011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan0~2_combout\,
	datab => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	datac => \inst|ALT_INV_outputF[6]~1_combout\,
	datad => \inst|ALT_INV_outputF[7]~0_combout\,
	datae => \inst4|ALT_INV_Q[6]~_Duplicate_1_q\,
	dataf => \ALT_INV_op_code[0]~input_o\,
	combout => \inst2|Mux7~1_combout\);

-- Location: MLABCELL_X42_Y19_N18
\inst2|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux7~4_combout\ = ( \inst2|Mux7~1_combout\ & ( \op_code[1]~input_o\ ) ) # ( !\inst2|Mux7~1_combout\ & ( \op_code[1]~input_o\ & ( (\inst2|Mux7~2_combout\ & (!\inst2|ALU_RESULT~2_combout\ & \inst2|Mux7~3_combout\)) ) ) ) # ( \inst2|Mux7~1_combout\ & 
-- ( !\op_code[1]~input_o\ & ( \inst2|Mux7~0_combout\ ) ) ) # ( !\inst2|Mux7~1_combout\ & ( !\op_code[1]~input_o\ & ( \inst2|Mux7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Mux7~2_combout\,
	datab => \inst2|ALT_INV_ALU_RESULT~2_combout\,
	datac => \inst2|ALT_INV_Mux7~3_combout\,
	datad => \inst2|ALT_INV_Mux7~0_combout\,
	datae => \inst2|ALT_INV_Mux7~1_combout\,
	dataf => \ALT_INV_op_code[1]~input_o\,
	combout => \inst2|Mux7~4_combout\);

-- Location: LABCELL_X41_Y19_N42
\inst2|Mux7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux7~6_combout\ = ( !\op_code[0]~input_o\ & ( (!\op_code[2]~input_o\ & ((!\op_code[1]~input_o\ & (\inst2|Add0~29_sumout\)) # (\op_code[1]~input_o\ & (((\inst2|Mult0~8_resulta\)))))) # (\op_code[2]~input_o\ & ((((\inst2|Mux7~4_combout\))))) ) ) # ( 
-- \op_code[0]~input_o\ & ( (!\op_code[2]~input_o\ & ((!\op_code[1]~input_o\ & (\inst2|Add0~29_sumout\)) # (\op_code[1]~input_o\ & (((!\inst2|Div0|auto_generated|divider|divider|op_8~1_sumout\)))))) # (\op_code[2]~input_o\ & ((((\inst2|Mux7~4_combout\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010000001100010001001100000001110111001111110111011111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_op_code[2]~input_o\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \ALT_INV_op_code[1]~input_o\,
	datae => \ALT_INV_op_code[0]~input_o\,
	dataf => \inst2|ALT_INV_Mux7~4_combout\,
	datag => \inst2|ALT_INV_Mult0~8_resulta\,
	combout => \inst2|Mux7~6_combout\);

-- Location: FF_X41_Y19_N50
\inst5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_C~combout\,
	asdata => \inst2|Mux7~6_combout\,
	sclr => \Rst_C~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(0));

-- Location: LABCELL_X36_Y18_N18
\inst|outputF[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|outputF[0]~7_combout\ = ( \inst3|Q\(0) & ( \inst5|Q\(0) ) ) # ( !\inst3|Q\(0) & ( \inst5|Q\(0) & ( \inst6|sel~combout\ ) ) ) # ( \inst3|Q\(0) & ( !\inst5|Q\(0) & ( !\inst6|sel~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_sel~combout\,
	datae => \inst3|ALT_INV_Q\(0),
	dataf => \inst5|ALT_INV_Q\(0),
	combout => \inst|outputF[0]~7_combout\);

-- Location: MLABCELL_X34_Y19_N18
\inst2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = ( \inst2|Mult0~15\ & ( (!\op_code[0]~input_o\) # ((!\inst4|Q[1]~_Duplicate_1_q\ & (!\inst2|Div0|auto_generated|divider|divider|sel\(1) & !\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\))) ) ) # ( 
-- !\inst2|Mult0~15\ & ( (!\inst4|Q[1]~_Duplicate_1_q\ & (\op_code[0]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|sel\(1) & !\inst2|Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000011101100110011001110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q[1]~_Duplicate_1_q\,
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \inst2|Div0|auto_generated|divider|divider|ALT_INV_sel\(1),
	datad => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	dataf => \inst2|ALT_INV_Mult0~15\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LABCELL_X35_Y19_N54
\inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_sumout\ = SUM(( !\op_code[0]~input_o\ $ (!\inst4|Q[7]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(7)))) # (\inst6|sel~combout\ & (\inst5|Q\(7))) ) + ( \inst2|Add0~6\ ))
-- \inst2|Add0~2\ = CARRY(( !\op_code[0]~input_o\ $ (!\inst4|Q[7]~_Duplicate_1_q\) ) + ( (!\inst6|sel~combout\ & ((\inst3|Q\(7)))) # (\inst6|sel~combout\ & (\inst5|Q\(7))) ) + ( \inst2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[0]~input_o\,
	datab => \inst5|ALT_INV_Q\(7),
	datac => \inst6|ALT_INV_sel~combout\,
	datad => \inst4|ALT_INV_Q[7]~_Duplicate_1_q\,
	dataf => \inst3|ALT_INV_Q\(7),
	cin => \inst2|Add0~6\,
	sumout => \inst2|Add0~1_sumout\,
	cout => \inst2|Add0~2\);

-- Location: MLABCELL_X34_Y19_N54
\inst2|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux0~1_combout\ = ( !\op_code[2]~input_o\ & ( \op_code[1]~input_o\ & ( \inst2|Mux0~0_combout\ ) ) ) # ( \op_code[2]~input_o\ & ( !\op_code[1]~input_o\ & ( !\inst2|ALU_RESULT~0_combout\ $ (!\op_code[0]~input_o\) ) ) ) # ( !\op_code[2]~input_o\ & ( 
-- !\op_code[1]~input_o\ & ( \inst2|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111011001100110011000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ALU_RESULT~0_combout\,
	datab => \ALT_INV_op_code[0]~input_o\,
	datac => \inst2|ALT_INV_Mux0~0_combout\,
	datad => \inst2|ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_op_code[2]~input_o\,
	dataf => \ALT_INV_op_code[1]~input_o\,
	combout => \inst2|Mux0~1_combout\);

-- Location: LABCELL_X35_Y19_N24
\inst5|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Q[7]~feeder_combout\ = ( \inst2|Mux0~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mux0~1_combout\,
	combout => \inst5|Q[7]~feeder_combout\);

-- Location: FF_X35_Y19_N26
\inst5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|Wr_C~combout\,
	d => \inst5|Q[7]~feeder_combout\,
	sclr => \Rst_C~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(7));

-- Location: LABCELL_X35_Y19_N57
\inst2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~33_sumout\ = SUM(( \op_code[0]~input_o\ ) + ( GND ) + ( \inst2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code[0]~input_o\,
	cin => \inst2|Add0~2\,
	sumout => \inst2|Add0~33_sumout\);

-- Location: MLABCELL_X34_Y19_N36
\inst2|Mux7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux7~5_combout\ = ( !\op_code[1]~input_o\ & ( !\op_code[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_op_code[2]~input_o\,
	dataf => \ALT_INV_op_code[1]~input_o\,
	combout => \inst2|Mux7~5_combout\);

-- Location: LABCELL_X35_Y19_N18
\inst2|temp[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|temp\(8) = ( \inst2|Mux7~5_combout\ & ( \inst2|Add0~33_sumout\ ) ) # ( !\inst2|Mux7~5_combout\ & ( \inst2|temp\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_temp\(8),
	datac => \inst2|ALT_INV_Add0~33_sumout\,
	dataf => \inst2|ALT_INV_Mux7~5_combout\,
	combout => \inst2|temp\(8));

-- Location: LABCELL_X36_Y18_N3
\inst6|STATE_OUT[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|STATE_OUT\(1) = ( \inst6|curr_state.accu~q\ ) # ( !\inst6|curr_state.accu~q\ & ( \inst6|curr_state.procc~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_curr_state.procc~q\,
	dataf => \inst6|ALT_INV_curr_state.accu~q\,
	combout => \inst6|STATE_OUT\(1));

-- Location: LABCELL_X36_Y18_N30
\inst6|STATE_OUT[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|STATE_OUT\(0) = ( \inst6|curr_state.fetch~q\ ) # ( !\inst6|curr_state.fetch~q\ & ( \inst6|curr_state.procc~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_curr_state.procc~q\,
	dataf => \inst6|ALT_INV_curr_state.fetch~q\,
	combout => \inst6|STATE_OUT\(0));

-- Location: LABCELL_X52_Y41_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


