library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

entity ALU is 
port(
	A: in STD_LOGIC_VECTOR(7 downto 0);
	B: in STD_LOGIC_VECTOR( 7 downto 0);
	op_code: in STD_LOGIC_VECTOR (2 downto 0);
	Result: out STD_LOGIC_VECTOR (7 downto 0);
	carry_out: out STD_LOGIC
	);
end entity;

architecture behavioral of ALU is
signal ALU_RESULT: STD_LOGIC_VECTOR (7 downto 0);--An intermediate between two ports
signal temp: std_logic_vector( 8 downto 0);
	begin
	process (A, B, op_code)
		begin
			case(op_code) is
				when "000" => --Addition
				ALU_RESULT <= A + B;
				temp<= ('0' & A) + ('0' & B);
				when "001" => --Subtraction
				ALU_RESULT <= A - B;
				temp<= ('0' & A) - ('0' & B);
				when "010" => --multiplication
				ALU_RESULT <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) * to_integer(unsigned(B)), 8));
				when "011" => --division
				ALU_RESULT <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) / to_integer(unsigned(B)), 8));
				when "100" => --XOR
				ALU_RESULT <= A xor B;
				when "101" => --XNOR
				ALU_RESULT <= A xnor B;
				when "110" => -- a eq b
				if(A=B) then
					ALU_RESULT <=x"01";
				else
					ALU_RESULT <= x"00";
				end if;
				when "111" => --a eq b
				if(a>b) then
					ALU_RESULT <= x"01";
				else
					ALU_RESULT <= x"00";
				end if;
				when others => --Any other operations
				ALU_RESULT <= A;
			end case;
	end process;
	Result <= ALU_RESULT;
	carry_out <= temp(8);
	
end architecture;
---


