library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is port(
	UA, UL: in std_logic_vector(2 downto 0);
	SEL: in std_logic;
	SALMUX2X1: out std_logic_vector(2 downto 0));
end entity mux2x1;

architecture arqmux2x1 of mux2x1 is
begin 
	with SEL select
	SALMUX2X1 <=
					UA when '0',
					UL when '1',
					(others => '0') when others;
end architecture arqmux2x1;



