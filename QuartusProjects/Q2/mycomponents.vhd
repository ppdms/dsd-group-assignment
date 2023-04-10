library ieee;
use ieee.std_logic_1164.all;

package mycomponents is
	component term1 is
		port (a, c, d : in std_logic;
				t1 : out std_logic);
	end component;
	component term2 is
		port (a, b, c, e : in std_logic;
				t2 : out std_logic);
	end component;
	component term3 is
		port (a, b, c, e : in std_logic;
				t3 : out std_logic);
	end component;
	component term4 is
		port (b, d, e : in std_logic;
				t4 : out std_logic);
	end component;
	component term5 is
		port (a, c, d, e : in std_logic;
				t5 : out std_logic);
	end component;	
end package mycomponents;

library ieee;
use ieee.std_logic_1164.all;
entity term1 is
		port (a, c, d : in std_logic;
				t1 : out std_logic);
end term1;
architecture LogicFunc of term1 is
begin
	t1 <= (not a) and (not c) and (not d);
end architecture LogicFunc;

library ieee;
use ieee.std_logic_1164.all;
entity term2 is
	port (a, b, c, e : in std_logic;
				t2 : out std_logic);
end term2;
architecture LogicFunc of term2 is
begin
	t2 <= (not a) and (not b) and (not c) and (not e);
end architecture LogicFunc;

library ieee;
use ieee.std_logic_1164.all;
entity term3 is
		port (a, b, c, e : in std_logic;
				t3 : out std_logic);
end term3;
architecture LogicFunc of term3 is
begin
	t3 <= (not a) and b and c and (not e);
end architecture LogicFunc;

library ieee;
use ieee.std_logic_1164.all;
entity term4 is
		port (b, d, e : in std_logic;
				t4 : out std_logic);
end term4;
architecture LogicFunc of term4 is
begin
	t4 <= (not b) and (not d) and e;
end architecture LogicFunc;

library ieee;
use ieee.std_logic_1164.all;
entity term5 is
		port (a, c, d, e : in std_logic;
				t5 : out std_logic);
end term5;
architecture LogicFunc of term5 is
begin
	t5 <= a and (not c) and d and e;
end architecture LogicFunc;

library ieee;
use ieee.std_logic_1164.all;
entity term6 is
		port (a, b, e : in std_logic;
				t6 : out std_logic);
end term6;
architecture LogicFunc of term6 is
begin
	t6 <= a and (not b) and e;
end architecture LogicFunc;
