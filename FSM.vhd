library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fsm is
port(
	clk: in std_logic;
	reset: in std_logic;
	acc, start: in std_logic;
	Wr_A, Wr_B, Wr_C, sel: out std_logic;
	STATE_OUT: out std_logic_vector(2 downto 0)
);
end fsm;

Architecture behavioral of fsm is
--We can have user defined type
type state is (init, fetch, procc, Wr_Result, accu);
signal curr_state, next_state: state; --Like pointers in C, telling u what ur current and nxt states are.
begin
process(clk, reset) --Remember that fms run on clk
begin
	if(reset = '1') then
		curr_state<= init;
	elsif(falling_edge(clk))then
		curr_state<= next_state;
	end if;
end process;

process(start, acc)
begin
	case curr_state is
	when init =>
		STATE_OUT <= "000";
		Wr_A <= '0';
		Wr_B <= '0';
		Wr_C <= '0';
		sel <= '0';
		if(start ='1' and acc = '0') then
			next_state <= fetch;
		elsif(start ='1' and acc = '1') then
			next_state <=accu;
		else
			next_state <= init;
		end if;
	when fetch =>
		STATE_OUT <= "001";
		Wr_A <= '1';
		Wr_B <= '1';
		Wr_C <= '0';
		sel <= '0';
		next_state<= procc;
	when accu =>
		STATE_OUT <= "010";
		Wr_A <= '0';
		Wr_B <= '1';
		Wr_C <= '0';
		sel <= '1';
		next_state <= procc;
	when procc =>
		STATE_OUT <= "011";
		Wr_A <= '0';
		Wr_B <= '0';
		next_state <= Wr_Result;
	when Wr_Result =>
		STATE_OUT <= "100";
		Wr_A <= '0';
		Wr_B <= '0';
		Wr_C <= '1';
		sel <= '0';
		next_state <= init;
	end case;

end process;
--Multiple process run concurrently
--The first process simply for controlling the timing
--The second process controls the transition between states


end architecture;