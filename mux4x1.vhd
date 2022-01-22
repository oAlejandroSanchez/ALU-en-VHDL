library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is port(
	B: in std_logic_vector(2 downto 0);
	SEL: in std_logic_vector(1 downto 0);
	SALMUX4X1: out std_logic_vector(2 downto 0));
end entity mux4x1;

architecture arqmux4x1 of mux4x1 is
begin
	with SEL select
	SALMUX4X1 <=
		(others => '0') when "00",
						 b when "01",
					not b when "10",
		(others => '1') when "11",
		(others => '0') when others;
end architecture arqmux4x1;
