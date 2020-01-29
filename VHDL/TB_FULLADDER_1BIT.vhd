-- FULL-ADDER

library ieee;
use ieee.std_logic_1164.all;

entity TB_FAD is
end TB_FAD;

architecture TB_ARQUITETURA_FAD of TB_FAD is
signal a: std_logic;
signal b: std_logic;
signal ci: std_logic;
signal s: std_logic;
signal co: std_logic;

begin

	fad1: entity work.FULLADDER PORT MAP (
		A=>a,
		B=>b,
		Ci=>ci,
		S=>s,
		Co=>co);

	ger_sinais: PROCESS
	begin
		a<= '0'; b<= '0'; ci<= '0';	wait for 10 ns;
		a<= '0'; b<= '0'; ci<= '1';	wait for 10 ns;
		a<= '0'; b<= '1'; ci<= '0';	wait for 10 ns;
		a<= '0'; b<= '1'; ci<= '1';	wait for 10 ns;
		a<= '1'; b<= '0'; ci<= '0';	wait for 10 ns;
		a<= '1'; b<= '0'; ci<= '1';	wait for 10 ns;
		a<= '1'; b<= '1'; ci<= '0';	wait for 10 ns;
		a<= '1'; b<= '1'; ci<= '1';	wait for 10 ns;
		a<= '0'; b<= '0'; ci<= '0';	wait for 50 ns;

	end PROCESS ger_sinais;

end TB_ARQUITETURA_FAD;
