library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity project1_Xor_gate is
port(
	input_A, input_B,input_C: IN STD_LOGIC;
	output : OUT STD_LOGIC
);

end project1_Xor_gate;

Architecture behavioral of project1_Xor_gate is
begin

	output <= input_A XOR input_B XOR input_C;

end behavioral;
