library ieee;
use ieee.std_logic_1164.all;

library work;
use work.mycomponents.all;

entity q2 is
	port (
		x1, x2, x3, x4, x5 : in std_logic;
		f : out std_logic );
end q2;

architecture structural of q2 is
	signal t1out, t2out, t3out, t4out, t5out : std_logic;
begin
	MyTerm1: term1
	port map (x1, x3, x4, t1out);
	MyTerm2: term2
	port map (x1, x2, x3, x5, t2out);
	MyTerm3: term3
	port map (x1, x2, x3, x5, t3out);
	MyTerm4: term4
	port map (x2, x4, x5, t4out);
	MyTerm5: term5
	port map (x1, x3, x4, x5, t5out);
	f <= t1out or t2out or t3out or t4out or t5out;
end structural;
	