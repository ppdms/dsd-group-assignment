library ieee;
use ieee.std_logic_1164.all;

library work;
use work.mycomponents.all;

entity adder is
	port (cin : in std_logic;
	x3, x2, x1, x0 : in std_logic;
	y3, y2, y1, y0 : in std_logic;
	s3, s2, s1, s0 : out std_logic;
	cout: out std_logic);
END adder;

architecture addition of adder is
	signal c1, c2, c3 : std_logic;
	begin
		stage0: fulladder1 PORT MAP (Cin, x0, y0, s0, c1);
		stage1: fulladder1 PORT MAP (c1, x1, y1, s1, c2);
		stage2: fulladder1 PORT MAP (c2, x2, y2, s2, c3);
		stage3: fulladder1 PORT MAP (c3, x3, y3, s3, Cout);
end addition;