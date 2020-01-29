-- HALF-ADDER

library ieee;
use ieee.std_logic_1164.all;

entity HALFADDER is port (
	A: in std_logic;
	B: in std_logic;
	S: out std_logic;
	C: out std_logic);
end HALFADDER;

architecture HAD of HALFADDER is
begin

	S<= A xor B;
	C<= A and B;

end HAD;
