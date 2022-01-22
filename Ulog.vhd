library ieee;
use ieee.std_logic_1164.all;

entity Ulog is port(
		A, B: in std_logic_vector(2 downto 0);
		S: in std_logic_vector(1 downto 0);
		F: out std_logic_vector(2 downto 0));
end entity Ulog;

architecture arqUlog of Ulog is
	signal sand, sor, sxor, snot: std_logic_vector(2 downto 0);
begin
	sand <= A and B;
	sor <= A or B;
	sxor <= A xor B;
	snot <= not A;
	with S select
	F <= 	sand when "00",
			sor  when "01",
			sxor when "10",
			snot when "11",
			(others => '0') when others;
end architecture arqUlog;
