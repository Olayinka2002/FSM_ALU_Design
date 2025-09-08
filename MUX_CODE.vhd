library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity MUX_CODE  is
port(
	inputA: in STD_LOGIC_VECTOR(7 downto 0);
	inputB: in STD_LOGIC_VECTOR(7 downto 0);
	inputS: in STD_LOGIC;
	outputF: out STD_LOGIC_VECTOR(7 downto 0)
);
end MUX_CODE;

Architecture behavioral of MUX_CODE is
begin

outputF <= inputA when (inputS = '0') else
			  inputB when (inputS = '1');
end behavioral;
