-- FULL-ADDER

library ieee;
use ieee.std_logic_1164.all;

entity FULLADDER4 is port (
	A:	in std_logic_vector (3 downto 0);
	B:	in std_logic_vector (3 downto 0);
	Ci:	in std_logic;
	S:	out std_logic_vector (3 downto 0);
	Co:	out std_logic);
end FULLADDER4;

architecture FAD4 of FULLADDER4 is
	signal CO_FAD1: std_logic;
	signal CO_FAD2: std_logic;
	signal CO_FAD3: std_logic;


begin

	Fad1: entity work.FULLADDER PORT MAP (
		A=>A(0),
		B=>B(0),
		Ci=>Ci,
		S=>S(0),
		Co=>CO_FAD1);
	Fad2: entity work.FULLADDER PORT MAP (
		A=>A(1),
		B=>B(1),
		Ci=>CO_FAD1,
		S=>S(1),
		Co=>CO_FAD2);
	Fad3: entity work.FULLADDER PORT MAP (
		A=>A(2),
		B=>B(2),
		Ci=>CO_FAD2,
		S=>S(2),
		Co=>CO_FAD3);
	Fad4: entity work.FULLADDER PORT MAP (
		A=>A(3),
		B=>B(3),
		Ci=>CO_FAD3,
		S=>S(3),
		Co=>Co);

end FAD4;
