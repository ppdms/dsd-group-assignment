library ieee;
use ieee.std_logic_1164.all;

library work;
use work.my_components.all;

entity ALU16 is
port (a, b: in std_logic_vector(15 downto 0);
		control: in std_logic_vector(2 downto 0);
		res: out std_logic_vector(15 downto 0);
		overflow: out std_logic);
end ALU16;

architecture behofALU16 of ALU16 is
	signal regularCout: std_logic_vector(15 downto 0);
	signal controlCin: std_logic;
	signal s: std_logic_vector(3 downto 0);
begin
	C0: cc port map (control(2 downto 0), s(1 downto 0), s(3), s(2), controlCin);
	A0: alu port map (controlCin, a(0), b(0), s(3 downto 0), regularCout(0), res(0));
	
	A1: alu port map (regularCout(0), a(1), b(1), s(3 downto 0), regularCout(1), res(1));
	A2: alu port map (regularCout(1), a(2), b(2), s(3 downto 0), regularCout(2), res(2));
	A3: alu port map (regularCout(2), a(3), b(3), s(3 downto 0), regularCout(3), res(3));
	A4: alu port map (regularCout(3), a(4), b(4), s(3 downto 0), regularCout(4), res(4));
	A5: alu port map (regularCout(4), a(5), b(5), s(3 downto 0), regularCout(5), res(5));
	A6: alu port map (regularCout(5), a(6), b(6), s(3 downto 0), regularCout(6), res(6));
	A7: alu port map (regularCout(6), a(7), b(7), s(3 downto 0), regularCout(7), res(7));
	A8: alu port map (regularCout(7), a(8), b(8), s(3 downto 0), regularCout(8), res(8));
	A9: alu port map (regularCout(8), a(9), b(9), s(3 downto 0), regularCout(9), res(9));
	A10: alu port map (regularCout(9), a(10), b(10), s(3 downto 0), regularCout(10), res(10));
	A11: alu port map (regularCout(10), a(11), b(11), s(3 downto 0), regularCout(11), res(11));
	A12: alu port map (regularCout(11), a(12), b(12), s(3 downto 0), regularCout(12), res(12));
	A13: alu port map (regularCout(12), a(13), b(13), s(3 downto 0), regularCout(13), res(13));
	A14: alu port map (regularCout(13), a(14), b(14), s(3 downto 0), regularCout(14), res(14));
	A15: alu port map (regularCout(14), a(15), b(15), s(3 downto 0), regularCout(15), res(15));
end;	


