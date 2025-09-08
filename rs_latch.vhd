library IEEE;
use IEEE.std_logic_1164.all;

entity rs_latch is 
port(
	R: in std_logic;
	S: in std_logic;
	Q: inout std_logic
	);
end entity;


architecture behavioral of rs_latch is
signal notQ: std_logic;
begin
	Q<= R nor notQ;
	notQ <= Q nor S;
end architecture;