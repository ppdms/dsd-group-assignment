--And gate--
library ieee;
use ieee.std_logic_1164.all;

entity and_2 is
	port (a, b: in std_logic;
			f1: out std_logic);
end and_2;

architecture beh_and_2 of and_2 is
begin
	f1 <= a and b;
end;

--Or gate--
library ieee;
use ieee.std_logic_1164.all;

entity or_2 is
	port (a, b: in std_logic;
			f2: out std_logic);
end or_2;

architecture beh_or_2 of or_2 is
begin
	f2 <= a or b;
end;

--Adder--
library ieee;
use ieee.std_logic_1164.all;

entity adder1bit is
	port (cin, a, b: in std_logic;
			cout, sum: out std_logic);
end adder1bit;

architecture beh_adder of adder1bit is
begin
	cout <= (b and cin) or (a and cin) or (a and b);
	sum <= (a and (not b) and (not cin)) or ((not a) and b and (not cin)) or  ((not a) and (not b) and cin ) or (a and b and cin);
end;

--Multiplexer--
library ieee;
use ieee.std_logic_1164.all;

entity mul_4 is
	port (w0, w1, w2: in std_logic;
			s: in std_logic_vector(1 downto 0);
			res: out std_logic);
end mul_4;

architecture beh_mul_4 of mul_4 is
begin
	with s select
		res <= w0 when "00",
				 w1 when "01",
				 w2 when others;
end;


--Place all the components inside of a package--
library ieee;
use ieee.std_logic_1164.all;

package my_components is
	component and_2
	port (a, b: in std_logic;
			f1: out std_logic);
	end component;
	
	component or_2
	port (a, b: in std_logic;
			f2: out std_logic);
	end component;
	
	component adder1bit
	port (cin, a, b: in std_logic;
				cout, sum: out std_logic);
	end component;
	
	component mul_4 is
	port (w0, w1, w2: in std_logic;
			s: in std_logic_vector(1 downto 0);
			res: out std_logic);
	end component;
end my_components;
