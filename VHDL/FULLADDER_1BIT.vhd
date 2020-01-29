-- FULL-ADDER

library ieee;
use ieee.std_logic_1164.all;

entity FULLADDER is port (
	A:	in std_logic;
	B:	in std_logic;
	Ci:	in std_logic;
	S:	out std_logic;
	Co:	out std_logic);
end FULLADDER;

architecture FAD of FULLADDER is
	signal S_HAD1:	std_logic;
	signal C_HAD1:	std_logic;
	signal C_HAD2:	std_logic;


begin

	had1: entity work.HALFADDER PORT MAP (
		A=>A,
		B=>B,
		S=>S_HAD1,
		C=>C_HAD1);
	had2: entity work.HALFADDER PORT MAP (
		A=>S_HAD1,
		B=>Ci,
		S=>S,
		C=>C_HAD2);
	Co <= C_HAD1 or C_HAD2;

end FAD;
