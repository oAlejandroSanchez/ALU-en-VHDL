library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith;
use ieee.std_logic_unsigned.all;

entity sumador is port(
	A, B: in std_logic_vector(2 downto 0);
	Cin2: in std_logic;
	SALSUM: out std_logic_vector(2 downto 0);
	Cout: out std_logic);
end entity sumador;

architecture arqsumador of sumador is
	signal mid: std_logic_vector(3 downto 0);
begin
	mid <=('0' & A) + ('0' & B) + Cin2;
	Cout <=mid(3);
	SALSUM <=mid(2 downto 0);
end architecture arqsumador;