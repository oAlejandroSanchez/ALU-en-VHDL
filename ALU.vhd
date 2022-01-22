library ieee;
use ieee.std_logic_1164.all;

entity ALU is port(
	A, B: in std_logic_vector(2 downto 0);
	SEL: in std_logic_vector(1 downto 0);
	S2, Cin2: in std_logic;
	SAL: out std_logic_vector(2 downto 0);
	Cout: out std_logic);
end entity ALU;

architecture arqtopALU of ALU is
	signal UA, UL: std_logic_vector(2 downto 0);
begin
	u1: entity work.mux2x1 (arqmux2x1) port map(UA, UL, S2, SAL);
	u2: entity work.Uarith(arqUarith) port map (A, B, SEL, Cin2, UA, Cout);
	u3: entity work.Ulog(arqUlog) port map (A, B, SEL, UL);
end architecture arqtopALU;
