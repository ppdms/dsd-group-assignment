library ieee;
use ieee.std_logic_1164.all;

library work;
use work.my_components.all;

--Create the ALU--
entity alu is
	port (cin, a, b: in std_logic;
			-- s bits: Ainvert(1) - Binvert(1) - mul4_s(2) 
			s: in std_logic_vector(0 to 3); 
			cout, res: out std_logic);
end alu;

architecture beh_alu of alu is
	signal Aout, Bout : std_logic;
	signal w0, w1, w2, w3: std_logic;
begin
	mulA: mul_X_Xinv port map (a, s(0), Aout);
	mulB: mul_X_Xinv port map (b, s(1), Bout);
	AND_gate: and_2 port map (Aout, Bout, w0);
	OR_gate: or_2 port map (Aout, Bout, w1);
	Adder_1bit: adder1bit port map (cin, Aout, Bout, cout, w2);
	XOR_gate: xor_2 port map (Aout, Bout, w3);
   Output_Mux: mul_4 port map (w0, w1, w2, w3, s(2 to 3), res);
end;
	
