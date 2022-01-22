library ieee;
use ieee.std_logic_1164.all;

entity Uarith is port(
	A, B: in std_logic_vector(2 downto 0);
	SEL: in std_logic_vector(1 downto 0);
	Cin2: in std_logic;
	SAL: out std_logic_vector(2 downto 0);
	Cout: out std_logic);
end entity Uarith;

architecture arqUarith of Uarith is
	signal cable: std_logic_vector(2 downto 0);
begin
	U1: entity work.mux4x1 (arqmux4x1) port map (B, SEL, cable);
	U2: entity work.sumador (arqsumador) port map (A, cable, Cin2, SAL, Cout);
end architecture arqUarith;