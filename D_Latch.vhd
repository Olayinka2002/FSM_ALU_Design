library IEEE;
use IEEE.std_logic_1164.all;

entity D_Latch is 
	port(
		D: in std_logic;
		enable: in std_logic;
		Q: out std_logic
);
end entity;

architecture behavioral of D_Latch is
begin
	process (enable, D) 
	begin
		if (enable = '1') then
			Q<= D;
		end if;
	end process;
end architecture;