library ieee;
use ieee.std_logic_1164.all;

library work;
use work.my_components.all;

entity ALU16 is
port (a, b: in std_logic_vector(15 downto 0);
		--cin: in std_logic;
		--control: in std_logic_vector(47 downto 0);
		control: in std_logic_vector(2 downto 0);
		--control: in std_logic_vector(2 downto 0)
		res: out std_logic_vector(15 downto 0);
		cout, overflow: out std_logic);
end ALU16;

architecture behofALU16 of ALU16 is
	--signal controlCin: std_logic_vector (15 downto 0); --Control carryIn--
	signal regularCout: std_logic_vector(15 downto 0); --ALU carry out--
	signal controlCin: std_logic;
	signal s: std_logic_vector(3 downto 0);
	--signal s: std_logic_vector (63 downto 0); --opertions and invertions (for a and b)--
begin
	C0: cc port map (control(2 downto 0), s(1 downto 0), s(3), s(2), controlCin);
	A0: alu port map (controlCin, a(0), b(0), s(3 downto 0), regularCout(0), res(0));
	
	--C1: cc port map (control(5 downto 3), s(5 downto 4), s(7), s(6), controlCin(1));
	A1: alu port map (regularCout(0), a(1), b(1), s(3 downto 0), regularCout(1), res(1));
	
	--C2: cc port map (control(8 downto 6), s(9 downto 8), s(11), s(10), controlCin(2));
	A2: alu port map (regularCout(1), a(2), b(2), s(3 downto 0), regularCout(2), res(2));
	
	--C3: cc port map (control(11 downto 9), s(13 downto 12), s(15), s(14), controlCin(3));
	A3: alu port map (regularCout(2), a(3), b(3), s(3 downto 0), regularCout(3), res(3));
	
	--C4: cc port map (control(14 downto 12), s(17 downto 16), s(19), s(18), controlCin(4));
	A4: alu port map (regularCout(3), a(4), b(4), s(3 downto 0), regularCout(4), res(4));
	
	--C5: cc port map (control(17 downto 15), s(21 downto 20), s(23), s(22), controlCin(5));
	A5: alu port map (regularCout(4), a(5), b(5), s(3 downto 0), regularCout(5), res(5));
	
	--C6: cc port map (control(20 downto 18), s(25 downto 24), s(27), s(26), controlCin(6));
	A6: alu port map (regularCout(5), a(6), b(6), s(3 downto 0), regularCout(6), res(6));
	
	--C7: cc port map (control(23 downto 21), s(29 downto 28), s(31), s(30), controlCin(7));
	A7: alu port map (regularCout(6), a(7), b(7), s(3 downto 0), regularCout(7), res(7));
	
	--C8: cc port map (control(26 downto 24), s(33 downto 32), s(35), s(34), controlCin(8));
	A8: alu port map (regularCout(7), a(8), b(8), s(3 downto 0), regularCout(8), res(8));
	
	--C9: cc port map (control(29 downto 27), s(37 downto 36), s(39), s(38), controlCin(9));
	A9: alu port map (regularCout(8), a(9), b(9), s(3 downto 0), regularCout(9), res(9));
	
	--C10: cc port map (control(32 downto 30), s(41 downto 40), s(43), s(42), controlCin(10));
	A10: alu port map (regularCout(9), a(10), b(10), s(3 downto 0), regularCout(10), res(10));
	
	--C11: cc port map (control(35 downto 33), s(45 downto 44), s(47), s(46), controlCin(11));
	A11: alu port map (regularCout(10), a(11), b(11), s(3 downto 0), regularCout(11), res(11));
	
	--C12: cc port map (control(38 downto 36), s(49 downto 48), s(51), s(50), controlCin(12));
	A12: alu port map (regularCout(11), a(12), b(12), s(3 downto 0), regularCout(12), res(12));
	
	--C13: cc port map (control(41 downto 39), s(53 downto 52), s(55), s(54), controlCin(13));
	A13: alu port map (regularCout(12), a(13), b(13), s(3 downto 0), regularCout(13), res(13));
	
	--C14: cc port map (control(44 downto 42), s(57 downto 56), s(59), s(58), controlCin(14));
	A14: alu port map (regularCout(13), a(14), b(14), s(3 downto 0), regularCout(14), res(14));
	
	--C15: cc port map (control(47 downto 45), s(61 downto 60), s(63), s(62), controlCin(15));
	A15: alu port map (regularCout(14), a(15), b(15), s(3 downto 0), regularCout(15), res(15));
end;	
		
	--C1: for i in 0 to 14 generate
	--	ControlC: cc port map (control(i*3 downto (i*3)+2), s(i*4 downto (i*4)+1), s((i*4)+3), s((i*4)+2), c(i));
	--	ALU1o: alu port map (c(i), a(i), b(i), s(i*4 downto (i*4)+3));
	--ControlC: cc port map (control(47 downto 45), s(61 downto 60), s(63), s(62), cout);
	--ALU1o: alu port map (c(i), a(i), b(i), s(i*4 downto (i*4)+3));



