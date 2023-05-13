library ieee;
use ieee.std_logic_1164.all;

entity exercise is
	port (x1, x2, x3, x4: in std_logic;
			f: out std_logic);
end exercise;

architecture solve of exercise is
begin
	f <= (x1 or x3 or x4) and (not x1 or x3 or not x4) and (x1 or not x3 or not x4) and (not x1 or x2 or not x3 or x4);
end solve;
	