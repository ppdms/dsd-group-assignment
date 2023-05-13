library ieee;
use ieee.std_logic_1164.all;
use work.my_components.all;

--Create the ALU--
entity alu is
	port (cin, a, b: in std_logic;
			s: in std_logic_vector(1 downto 0);
			cout, res: out std_logic);
end alu;

architecture beh_alu of alu is
	signal w0, w1, w2: std_logic;
begin
	s1: and_2 port map (a, b, w0);
	s2: or_2 port map (a, b, w1);
	s3: adder1bit port map (cin, a, b, cout, w2);
	s4: mul_4 port map (w0, w1, w2, s, res);
end;
	