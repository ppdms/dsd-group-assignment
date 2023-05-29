--AND gate--
library ieee;
use ieee.std_logic_1164.all;

entity and_2 is
	port (a, b: in std_logic;
			f0: out std_logic);
end and_2;

architecture beh_and_2 of and_2 is
begin
	f0 <= a and b;
end;

--OR gate--
library ieee;
use ieee.std_logic_1164.all;

entity or_2 is
	port (a, b: in std_logic;
			f1: out std_logic);
end or_2;

architecture beh_or_2 of or_2 is
begin
	f1 <= a or b;
end;

--XOR gate--
library ieee;
use ieee.std_logic_1164.all;

entity xor_2 is
	port (a, b: in std_logic;
			f3: out std_logic);
end xor_2;

architecture beh_xor_2 of xor_2 is
begin
	f3 <= a xor b;
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

--Minor Multiplexer--
library ieee;
use ieee.std_logic_1164.all;

entity mul_X_Xinv is
	port (X, sel: in std_logic;
			Xout: out std_logic);
end mul_X_Xinv;

architecture beh_mul_X_Xinv of mul_X_Xinv is
begin
	with sel select
		Xout <= X when '0',
				 not X when '1';
end;

--Major Multiplexer--
library ieee;
use ieee.std_logic_1164.all;

entity mul_4 is
	port (w0, w1, w2, w3: in std_logic;
			s: in std_logic_vector(1 downto 0);
			res: out std_logic);
end mul_4;

architecture beh_mul_4 of mul_4 is
begin
	with s select
		res <= w0 when "00",
				 w1 when "01",
				 w2 when "10",
				 w3 when "11";
end;

--1-bit ALU--
library ieee;
use ieee.std_logic_1164.all;

entity alu is
	port (cin, a, b: in std_logic;
			-- s bits: Ainvert(1) - Binvert(1) - mul4_s(2) 
			s: in std_logic_vector(3 downto 0); 
			cout, res: out std_logic);
end alu;

architecture beh_alu of alu is
--Placing all the components into the alu--
	component mul_X_Xinv
		port (X, sel: in std_logic;
			Xout: out std_logic);
	end component;
	
	component and_2
		port (a, b: in std_logic;
			f0: out std_logic);
	end component;
	
	component or_2
		port (a, b: in std_logic;
			f1: out std_logic);
	end component;
	
	component xor_2
		port (a, b: in std_logic;
			f3: out std_logic);
	end component;
	
	component adder1bit
		port (cin, a, b: in std_logic;
			cout, sum: out std_logic);
	end component;
	
	component mul_4
		port (w0, w1, w2, w3: in std_logic;
			s: in std_logic_vector(1 downto 0);
			res: out std_logic);
	end component;
		
	signal Aout, Bout : std_logic;
	signal w0, w1, w2, w3: std_logic;
begin
	mulA: mul_X_Xinv port map (a, s(3), Aout);
	mulB: mul_X_Xinv port map (b, s(2), Bout);
	AND_gate: and_2 port map (Aout, Bout, w0);
	OR_gate: or_2 port map (Aout, Bout, w1);
	XOR_gate: xor_2 port map (Aout, Bout, w2);
	Adder_1bit: adder1bit port map (cin, Aout, Bout, cout, w3);
	Output_Mux: mul_4 port map (w0, w1, w2, w3, s(1 downto 0), res);
end;

--Control Circuit--
library ieee;
use ieee.std_logic_1164.all;

entity cc is
	port (opc : in std_logic_vector(2 downto 0);
			op : out std_logic_vector(1 downto 0);
			Ainv, Binv, Cin : out std_logic);
end cc;

architecture decode of cc is
begin
	process (opc)
	begin
		case opc is
			when "000" => op <= "00"; Ainv <= '0'; Binv <= '0'; Cin <= '0';
			when "001" => op <= "01"; Ainv <= '0'; Binv <= '0'; Cin <= '0';
			when "010" => op <= "10"; Ainv <= '0'; Binv <= '0'; Cin <= '0';
			when "011" => op <= "10"; Ainv <= '0'; Binv <= '1'; Cin <= '1';
			when "100" => op <= "00"; Ainv <= '1'; Binv <= '1'; Cin <= '0';
			when "101" => op <= "01"; Ainv <= '1'; Binv <= '1'; Cin <= '0';
			when "110" => op <= "11"; Ainv <= '0'; Binv <= '0'; Cin <= '0';
			when others => op <= "00"; Ainv <= '0'; Binv <= '0'; Cin <= '0';
		end case;
	end process;
end;

--Place all the components inside of a package--
library ieee;
use ieee.std_logic_1164.all;

package my_components is
	component and_2
	port (a, b: in std_logic;
			f0: out std_logic);
	end component;
	
	component or_2
	port (a, b: in std_logic;
			f1: out std_logic);
	end component;
	
	component xor_2
	port (a, b: in std_logic;
			f3: out std_logic);
	end component;
	
	component adder1bit
	port (cin, a, b: in std_logic;
				cout, sum: out std_logic);
	end component;
	
	component mul_X_Xinv is
	port (X, sel: in std_logic;
			Xout: out std_logic);
	end component;
	
	component mul_4 is
	port (w0, w1, w2, w3: in std_logic;
			s: in std_logic_vector(1 downto 0);
			res: out std_logic);
	end component;
	
	component alu is
	port (cin, a, b: in std_logic;
			s: in std_logic_vector(3 downto 0); 
			cout, res: out std_logic);
	end component;
	
	
	component cc is
		port (opc : in std_logic_vector(2 downto 0);
				op : out std_logic_vector(1 downto 0);
				Ainv, Binv, Cin : out std_logic);
	end component;
end package my_components;
