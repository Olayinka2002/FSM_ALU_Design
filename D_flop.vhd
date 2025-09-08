library IEEE;
use IEEE.std_logic_1164.all;

entity D_flop is 
port(D: in std_logic_vector(7 downto 0);
		clk: in std_logic;
		rst: in std_logic;
		Q: out std_logic_vector(7 downto 0));
end entity;

architecture behavioral of D_flop is
begin
	process (clk, rst) 
	begin
		if (rising_edge (clk))then 
				if ( rst ='1') then 
					Q <= (others=> '0');
				else
					Q<= D;
				end if;
		end if;
	end process;
end architecture;