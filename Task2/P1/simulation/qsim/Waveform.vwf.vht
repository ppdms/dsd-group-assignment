-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/13/2023 13:19:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_vec_tst IS
END alu_vhd_vec_tst;
ARCHITECTURE alu_arch OF alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL cin : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL res : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT alu
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	cin : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	res : OUT STD_LOGIC;
	s : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	cin => cin,
	cout => cout,
	res => res,
	s => s
	);

-- a
t_prcs_a: PROCESS
BEGIN
LOOP
	a <= '0';
	WAIT FOR 80000 ps;
	a <= '1';
	WAIT FOR 80000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '0';
	WAIT FOR 40000 ps;
	b <= '1';
	WAIT FOR 40000 ps;
	b <= '0';
	WAIT FOR 40000 ps;
	b <= '1';
WAIT;
END PROCESS t_prcs_b;

-- cin
t_prcs_cin: PROCESS
BEGIN
	cin <= '1';
WAIT;
END PROCESS t_prcs_cin;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	s(1) <= '0';
	WAIT FOR 80000 ps;
	s(1) <= '1';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	s(0) <= '0';
	WAIT FOR 40000 ps;
	s(0) <= '1';
	WAIT FOR 40000 ps;
	s(0) <= '0';
	WAIT FOR 40000 ps;
	s(0) <= '1';
WAIT;
END PROCESS t_prcs_s_0;
END alu_arch;
