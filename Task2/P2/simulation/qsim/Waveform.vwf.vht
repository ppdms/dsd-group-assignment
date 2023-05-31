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
-- Generated on "05/30/2023 11:02:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU16_vhd_vec_tst IS
END ALU16_vhd_vec_tst;
ARCHITECTURE ALU16_arch OF ALU16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL control : STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL cout : STD_LOGIC;
SIGNAL overflow : STD_LOGIC;
SIGNAL res : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ALU16
	PORT (
	a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	control : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	cout : OUT STD_LOGIC;
	overflow : OUT STD_LOGIC;
	res : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU16
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	control => control,
	cout => cout,
	overflow => overflow,
	res => res
	);
-- a[15]
t_prcs_a_15: PROCESS
BEGIN
	a(15) <= '0';
WAIT;
END PROCESS t_prcs_a_15;
-- a[14]
t_prcs_a_14: PROCESS
BEGIN
	a(14) <= '1';
WAIT;
END PROCESS t_prcs_a_14;
-- a[13]
t_prcs_a_13: PROCESS
BEGIN
	a(13) <= '1';
WAIT;
END PROCESS t_prcs_a_13;
-- a[12]
t_prcs_a_12: PROCESS
BEGIN
	a(12) <= '0';
WAIT;
END PROCESS t_prcs_a_12;
-- a[11]
t_prcs_a_11: PROCESS
BEGIN
	a(11) <= '1';
WAIT;
END PROCESS t_prcs_a_11;
-- a[10]
t_prcs_a_10: PROCESS
BEGIN
	a(10) <= '1';
WAIT;
END PROCESS t_prcs_a_10;
-- a[9]
t_prcs_a_9: PROCESS
BEGIN
	a(9) <= '0';
WAIT;
END PROCESS t_prcs_a_9;
-- a[8]
t_prcs_a_8: PROCESS
BEGIN
	a(8) <= '0';
WAIT;
END PROCESS t_prcs_a_8;
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '1';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= '1';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= '0';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '0';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '1';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '1';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '1';
WAIT;
END PROCESS t_prcs_a_0;
-- b[15]
t_prcs_b_15: PROCESS
BEGIN
	b(15) <= '0';
WAIT;
END PROCESS t_prcs_b_15;
-- b[14]
t_prcs_b_14: PROCESS
BEGIN
	b(14) <= '0';
WAIT;
END PROCESS t_prcs_b_14;
-- b[13]
t_prcs_b_13: PROCESS
BEGIN
	b(13) <= '1';
WAIT;
END PROCESS t_prcs_b_13;
-- b[12]
t_prcs_b_12: PROCESS
BEGIN
	b(12) <= '0';
WAIT;
END PROCESS t_prcs_b_12;
-- b[11]
t_prcs_b_11: PROCESS
BEGIN
	b(11) <= '0';
WAIT;
END PROCESS t_prcs_b_11;
-- b[10]
t_prcs_b_10: PROCESS
BEGIN
	b(10) <= '1';
WAIT;
END PROCESS t_prcs_b_10;
-- b[9]
t_prcs_b_9: PROCESS
BEGIN
	b(9) <= '1';
WAIT;
END PROCESS t_prcs_b_9;
-- b[8]
t_prcs_b_8: PROCESS
BEGIN
	b(8) <= '1';
WAIT;
END PROCESS t_prcs_b_8;
-- b[7]
t_prcs_b_7: PROCESS
BEGIN
	b(7) <= '0';
WAIT;
END PROCESS t_prcs_b_7;
-- b[6]
t_prcs_b_6: PROCESS
BEGIN
	b(6) <= '0';
WAIT;
END PROCESS t_prcs_b_6;
-- b[5]
t_prcs_b_5: PROCESS
BEGIN
	b(5) <= '0';
WAIT;
END PROCESS t_prcs_b_5;
-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= '1';
WAIT;
END PROCESS t_prcs_b_4;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '1';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '1';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '0';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	b(0) <= '0';
WAIT;
END PROCESS t_prcs_b_0;
-- control[47]
t_prcs_control_47: PROCESS
BEGIN
	control(47) <= '0';
WAIT;
END PROCESS t_prcs_control_47;
-- control[46]
t_prcs_control_46: PROCESS
BEGIN
	control(46) <= '0';
WAIT;
END PROCESS t_prcs_control_46;
-- control[45]
t_prcs_control_45: PROCESS
BEGIN
	control(45) <= '0';
WAIT;
END PROCESS t_prcs_control_45;
-- control[44]
t_prcs_control_44: PROCESS
BEGIN
	control(44) <= '0';
WAIT;
END PROCESS t_prcs_control_44;
-- control[43]
t_prcs_control_43: PROCESS
BEGIN
	control(43) <= '0';
WAIT;
END PROCESS t_prcs_control_43;
-- control[42]
t_prcs_control_42: PROCESS
BEGIN
	control(42) <= '0';
WAIT;
END PROCESS t_prcs_control_42;
-- control[41]
t_prcs_control_41: PROCESS
BEGIN
	control(41) <= '0';
WAIT;
END PROCESS t_prcs_control_41;
-- control[40]
t_prcs_control_40: PROCESS
BEGIN
	control(40) <= '0';
WAIT;
END PROCESS t_prcs_control_40;
-- control[39]
t_prcs_control_39: PROCESS
BEGIN
	control(39) <= '0';
WAIT;
END PROCESS t_prcs_control_39;
-- control[38]
t_prcs_control_38: PROCESS
BEGIN
	control(38) <= '0';
WAIT;
END PROCESS t_prcs_control_38;
-- control[37]
t_prcs_control_37: PROCESS
BEGIN
	control(37) <= '0';
WAIT;
END PROCESS t_prcs_control_37;
-- control[36]
t_prcs_control_36: PROCESS
BEGIN
	control(36) <= '0';
WAIT;
END PROCESS t_prcs_control_36;
-- control[35]
t_prcs_control_35: PROCESS
BEGIN
	control(35) <= '0';
WAIT;
END PROCESS t_prcs_control_35;
-- control[34]
t_prcs_control_34: PROCESS
BEGIN
	control(34) <= '0';
WAIT;
END PROCESS t_prcs_control_34;
-- control[33]
t_prcs_control_33: PROCESS
BEGIN
	control(33) <= '0';
WAIT;
END PROCESS t_prcs_control_33;
-- control[32]
t_prcs_control_32: PROCESS
BEGIN
	control(32) <= '0';
WAIT;
END PROCESS t_prcs_control_32;
-- control[31]
t_prcs_control_31: PROCESS
BEGIN
	control(31) <= '0';
WAIT;
END PROCESS t_prcs_control_31;
-- control[30]
t_prcs_control_30: PROCESS
BEGIN
	control(30) <= '0';
WAIT;
END PROCESS t_prcs_control_30;
-- control[29]
t_prcs_control_29: PROCESS
BEGIN
	control(29) <= '0';
WAIT;
END PROCESS t_prcs_control_29;
-- control[28]
t_prcs_control_28: PROCESS
BEGIN
	control(28) <= '0';
WAIT;
END PROCESS t_prcs_control_28;
-- control[27]
t_prcs_control_27: PROCESS
BEGIN
	control(27) <= '0';
WAIT;
END PROCESS t_prcs_control_27;
-- control[26]
t_prcs_control_26: PROCESS
BEGIN
	control(26) <= '0';
WAIT;
END PROCESS t_prcs_control_26;
-- control[25]
t_prcs_control_25: PROCESS
BEGIN
	control(25) <= '0';
WAIT;
END PROCESS t_prcs_control_25;
-- control[24]
t_prcs_control_24: PROCESS
BEGIN
	control(24) <= '0';
WAIT;
END PROCESS t_prcs_control_24;
-- control[23]
t_prcs_control_23: PROCESS
BEGIN
	control(23) <= '0';
WAIT;
END PROCESS t_prcs_control_23;
-- control[22]
t_prcs_control_22: PROCESS
BEGIN
	control(22) <= '0';
WAIT;
END PROCESS t_prcs_control_22;
-- control[21]
t_prcs_control_21: PROCESS
BEGIN
	control(21) <= '0';
WAIT;
END PROCESS t_prcs_control_21;
-- control[20]
t_prcs_control_20: PROCESS
BEGIN
	control(20) <= '0';
WAIT;
END PROCESS t_prcs_control_20;
-- control[19]
t_prcs_control_19: PROCESS
BEGIN
	control(19) <= '0';
WAIT;
END PROCESS t_prcs_control_19;
-- control[18]
t_prcs_control_18: PROCESS
BEGIN
	control(18) <= '0';
WAIT;
END PROCESS t_prcs_control_18;
-- control[17]
t_prcs_control_17: PROCESS
BEGIN
	control(17) <= '0';
WAIT;
END PROCESS t_prcs_control_17;
-- control[16]
t_prcs_control_16: PROCESS
BEGIN
	control(16) <= '0';
WAIT;
END PROCESS t_prcs_control_16;
-- control[15]
t_prcs_control_15: PROCESS
BEGIN
	control(15) <= '0';
WAIT;
END PROCESS t_prcs_control_15;
-- control[14]
t_prcs_control_14: PROCESS
BEGIN
	control(14) <= '0';
WAIT;
END PROCESS t_prcs_control_14;
-- control[13]
t_prcs_control_13: PROCESS
BEGIN
	control(13) <= '0';
WAIT;
END PROCESS t_prcs_control_13;
-- control[12]
t_prcs_control_12: PROCESS
BEGIN
	control(12) <= '0';
WAIT;
END PROCESS t_prcs_control_12;
-- control[11]
t_prcs_control_11: PROCESS
BEGIN
	control(11) <= '0';
WAIT;
END PROCESS t_prcs_control_11;
-- control[10]
t_prcs_control_10: PROCESS
BEGIN
	control(10) <= '0';
WAIT;
END PROCESS t_prcs_control_10;
-- control[9]
t_prcs_control_9: PROCESS
BEGIN
	control(9) <= '0';
WAIT;
END PROCESS t_prcs_control_9;
-- control[8]
t_prcs_control_8: PROCESS
BEGIN
	control(8) <= '0';
WAIT;
END PROCESS t_prcs_control_8;
-- control[7]
t_prcs_control_7: PROCESS
BEGIN
	control(7) <= '0';
WAIT;
END PROCESS t_prcs_control_7;
-- control[6]
t_prcs_control_6: PROCESS
BEGIN
	control(6) <= '0';
WAIT;
END PROCESS t_prcs_control_6;
-- control[5]
t_prcs_control_5: PROCESS
BEGIN
	control(5) <= '0';
WAIT;
END PROCESS t_prcs_control_5;
-- control[4]
t_prcs_control_4: PROCESS
BEGIN
	control(4) <= '0';
WAIT;
END PROCESS t_prcs_control_4;
-- control[3]
t_prcs_control_3: PROCESS
BEGIN
	control(3) <= '0';
WAIT;
END PROCESS t_prcs_control_3;
-- control[2]
t_prcs_control_2: PROCESS
BEGIN
	control(2) <= '0';
WAIT;
END PROCESS t_prcs_control_2;
-- control[1]
t_prcs_control_1: PROCESS
BEGIN
	control(1) <= '0';
WAIT;
END PROCESS t_prcs_control_1;
-- control[0]
t_prcs_control_0: PROCESS
BEGIN
	control(0) <= '0';
WAIT;
END PROCESS t_prcs_control_0;
END ALU16_arch;
