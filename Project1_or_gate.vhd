library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity project1_or_gate is
port(
	input_A, input_B: IN STD_LOGIC;
	output : OUT STD_LOGIC
);

end project1_or_gate;

Architecture behavioral of project1_or_gate is
begin

	output <= input_A OR input_B;

end behavioral;
