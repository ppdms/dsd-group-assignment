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
	--We trea the first pair of bits differently becuase of the cin the second vector may receive initially from the control--
	C0: cc port map (control(2 downto 0), s(1 downto 0), s(3), s(2), controlCin);
	A0: alu port map (controlCin, a(0), b(0), s(3 downto 0), regularCout(0), res(0));

	--We run a loop that does the same thing for every alu--
	C1: for i in 0 to 14 generate
		ALU1o: alu port map (regularCout(i), a(i+1), b(i+1), s(3 downto 0), regularCout(i+1), res(i+1));
	end generate C1;
	
	--Check wheather or not the overflow should be taken into acount (f we have the operation add/sub)--
	with s(1 downto 0) select
		overflow <= regularCout(15) XOR regularCout(14) WHEN "10",
						'0' when others;
end;	


