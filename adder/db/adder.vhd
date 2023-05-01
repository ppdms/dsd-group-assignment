library ieee;
use ieee.std_logic_1164.all;

package mycomponents is
	component fulladder1 is
		port (a, b, cin : in std_logic
				cout, s : out std_logic);
	end component;
end package mycomponents;

library ieee;
use ieee.std_logic_1164.all;
entity fulladder1 is
	port (a, b : in std_logic
				c, s : out std_logic);
end fulladder1;

architecture addition of fulladder1 is
begin
	s <= a XOR b XOR cin;
	cout <= (a AND b) OR (cin AND (a XOR b))
end architecture addition;