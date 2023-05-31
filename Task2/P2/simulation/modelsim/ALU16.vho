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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/30/2023 10:57:39"

-- 
-- Device: Altera 5M570ZF256C4 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	ALU16 IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	control : IN std_logic_vector(47 DOWNTO 0);
	res : OUT std_logic_vector(15 DOWNTO 0);
	cout : OUT std_logic;
	overflow : OUT std_logic
	);
END ALU16;

-- Design Ports Information


ARCHITECTURE structure OF ALU16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_control : std_logic_vector(47 DOWNTO 0);
SIGNAL ww_res : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \A0|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A0|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \A0|Output_Mux|Mux0~8_combout\ : std_logic;
SIGNAL \A1|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A1|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A1|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A1|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \A0|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A0|Adder_1bit|cout~1_combout\ : std_logic;
SIGNAL \A1|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A2|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A2|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A2|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A2|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \C1|Mux3~0_combout\ : std_logic;
SIGNAL \A1|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A2|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A3|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A3|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A3|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A3|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \C2|Mux3~0_combout\ : std_logic;
SIGNAL \A2|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A3|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A4|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A4|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A4|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A4|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \C3|Mux3~0_combout\ : std_logic;
SIGNAL \A3|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A4|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A5|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \C4|Mux3~0_combout\ : std_logic;
SIGNAL \A4|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A5|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A5|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A5|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \A5|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A6|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \C5|Mux3~0_combout\ : std_logic;
SIGNAL \A5|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A6|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A6|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A6|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \A6|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A7|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A7|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A7|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A7|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \C6|Mux3~0_combout\ : std_logic;
SIGNAL \A6|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A7|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \C7|Mux3~0_combout\ : std_logic;
SIGNAL \A7|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A8|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A8|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A8|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A8|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \A8|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A9|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A9|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A9|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A9|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \C8|Mux3~0_combout\ : std_logic;
SIGNAL \A8|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A9|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \C9|Mux3~0_combout\ : std_logic;
SIGNAL \A9|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A10|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A10|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A10|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A10|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \A10|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A11|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \C10|Mux3~0_combout\ : std_logic;
SIGNAL \A10|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A11|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A11|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A11|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \A11|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \C11|Mux3~0_combout\ : std_logic;
SIGNAL \A11|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A12|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A12|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A12|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A12|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \A12|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \C12|Mux3~0_combout\ : std_logic;
SIGNAL \A12|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A13|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A13|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \A13|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A13|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \A13|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A14|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A14|Output_Mux|Mux0~5_combout\ : std_logic;
SIGNAL \C13|Mux3~0_combout\ : std_logic;
SIGNAL \A13|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A14|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A14|Output_Mux|Mux0~6_combout\ : std_logic;
SIGNAL \A14|Output_Mux|Mux0~7_combout\ : std_logic;
SIGNAL \A15|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \C14|Mux3~0_combout\ : std_logic;
SIGNAL \A14|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A15|Output_Mux|Mux0~2_combout\ : std_logic;
SIGNAL \A15|Output_Mux|Mux0~3_combout\ : std_logic;
SIGNAL \A15|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \C15|Mux0~0_combout\ : std_logic;
SIGNAL \A15|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A15|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \control~combout\ : std_logic_vector(47 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_control <= control;
res <= ww_res;
cout <= ww_cout;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(2),
	combout => \control~combout\(2));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(0),
	combout => \control~combout\(0));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(1),
	combout => \control~combout\(1));

-- Location: LC_X12_Y7_N2
\A0|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A0|Output_Mux|Mux0~7_combout\ = (\b~combout\(0) & ((\control~combout\(1) & ((\control~combout\(0)))) # (!\control~combout\(1) & (!\control~combout\(2))))) # (!\b~combout\(0) & ((\control~combout\(0) $ (\control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c374",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \b~combout\(0),
	datac => \control~combout\(0),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A0|Output_Mux|Mux0~7_combout\);

-- Location: LC_X12_Y7_N5
\A0|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A0|Output_Mux|Mux0~6_combout\ = (\b~combout\(0) & ((\control~combout\(0) $ (\control~combout\(1))))) # (!\b~combout\(0) & ((\control~combout\(2) & ((!\control~combout\(1)))) # (!\control~combout\(2) & (\control~combout\(0) & \control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \b~combout\(0),
	datac => \control~combout\(0),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A0|Output_Mux|Mux0~6_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LC_X12_Y7_N9
\A0|Output_Mux|Mux0~8\ : maxv_lcell
-- Equation(s):
-- \A0|Output_Mux|Mux0~8_combout\ = ((\a~combout\(0) & (\A0|Output_Mux|Mux0~7_combout\)) # (!\a~combout\(0) & ((\A0|Output_Mux|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A0|Output_Mux|Mux0~7_combout\,
	datac => \A0|Output_Mux|Mux0~6_combout\,
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A0|Output_Mux|Mux0~8_combout\);

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(4),
	combout => \control~combout\(4));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(5),
	combout => \control~combout\(5));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(3),
	combout => \control~combout\(3));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X7_Y4_N8
\A1|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A1|Output_Mux|Mux0~4_combout\ = (\control~combout\(4) & (!\control~combout\(5) & ((!\a~combout\(1)) # (!\control~combout\(3))))) # (!\control~combout\(4) & ((\control~combout\(3)) # ((\control~combout\(5) & !\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5276",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(4),
	datab => \control~combout\(5),
	datac => \control~combout\(3),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|Output_Mux|Mux0~4_combout\);

-- Location: LC_X7_Y4_N9
\A1|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A1|Output_Mux|Mux0~5_combout\ = (\control~combout\(5) & (\control~combout\(4) $ ((\control~combout\(3))))) # (!\control~combout\(5) & (\control~combout\(3) & (\control~combout\(4) $ (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5868",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(4),
	datab => \control~combout\(5),
	datac => \control~combout\(3),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|Output_Mux|Mux0~5_combout\);

-- Location: LC_X7_Y4_N5
\A1|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A1|Adder_1bit|sum~0_combout\ = (\a~combout\(1) $ (((\control~combout\(5) & !\control~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(5),
	datac => \control~combout\(4),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|Adder_1bit|sum~0_combout\);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LC_X7_Y4_N6
\A1|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A1|Output_Mux|Mux0~6_combout\ = (\b~combout\(1) & (\A1|Output_Mux|Mux0~4_combout\ $ (\A1|Output_Mux|Mux0~5_combout\ $ (\A1|Adder_1bit|sum~0_combout\)))) # (!\b~combout\(1) & ((\A1|Output_Mux|Mux0~4_combout\ & ((\A1|Output_Mux|Mux0~5_combout\) # 
-- (\A1|Adder_1bit|sum~0_combout\))) # (!\A1|Output_Mux|Mux0~4_combout\ & (\A1|Output_Mux|Mux0~5_combout\ & \A1|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Output_Mux|Mux0~4_combout\,
	datab => \A1|Output_Mux|Mux0~5_combout\,
	datac => \A1|Adder_1bit|sum~0_combout\,
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|Output_Mux|Mux0~6_combout\);

-- Location: LC_X12_Y7_N4
\A0|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A0|Adder_1bit|cout~0_combout\ = (\b~combout\(0) & (\a~combout\(0) & ((\control~combout\(1)) # (!\control~combout\(2))))) # (!\b~combout\(0) & ((\control~combout\(2) & (!\control~combout\(1) & !\a~combout\(0))) # (!\control~combout\(2) & 
-- (\control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d406",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \control~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A0|Adder_1bit|cout~0_combout\);

-- Location: LC_X12_Y7_N8
\A0|Adder_1bit|cout~1\ : maxv_lcell
-- Equation(s):
-- \A0|Adder_1bit|cout~1_combout\ = (\A0|Adder_1bit|cout~0_combout\ & ((\b~combout\(0)) # ((\control~combout\(0)) # (!\control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Adder_1bit|cout~0_combout\,
	datab => \b~combout\(0),
	datac => \control~combout\(0),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A0|Adder_1bit|cout~1_combout\);

-- Location: LC_X7_Y4_N7
\A1|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A1|Output_Mux|Mux0~7_combout\ = \A1|Output_Mux|Mux0~6_combout\ $ (((!\A1|Output_Mux|Mux0~4_combout\ & (\A1|Output_Mux|Mux0~5_combout\ & \A0|Adder_1bit|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Output_Mux|Mux0~4_combout\,
	datab => \A1|Output_Mux|Mux0~5_combout\,
	datac => \A1|Output_Mux|Mux0~6_combout\,
	datad => \A0|Adder_1bit|cout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|Output_Mux|Mux0~7_combout\);

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(8),
	combout => \control~combout\(8));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(6),
	combout => \control~combout\(6));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(7),
	combout => \control~combout\(7));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X4_Y4_N4
\A2|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A2|Output_Mux|Mux0~5_combout\ = (\control~combout\(8) & (\control~combout\(6) $ ((\control~combout\(7))))) # (!\control~combout\(8) & (\control~combout\(6) & (\control~combout\(7) $ (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2c68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(8),
	datab => \control~combout\(6),
	datac => \control~combout\(7),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|Output_Mux|Mux0~5_combout\);

-- Location: LC_X4_Y4_N7
\A2|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A2|Output_Mux|Mux0~4_combout\ = (\control~combout\(7) & (!\control~combout\(8) & ((!\a~combout\(2)) # (!\control~combout\(6))))) # (!\control~combout\(7) & ((\control~combout\(6)) # ((\control~combout\(8) & !\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1c5e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(8),
	datab => \control~combout\(6),
	datac => \control~combout\(7),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|Output_Mux|Mux0~4_combout\);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X4_Y4_N8
\A2|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A2|Adder_1bit|sum~0_combout\ = (\a~combout\(2) $ (((\control~combout\(8) & !\control~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(8),
	datac => \control~combout\(7),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|Adder_1bit|sum~0_combout\);

-- Location: LC_X4_Y4_N5
\A2|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A2|Output_Mux|Mux0~6_combout\ = (\b~combout\(2) & (\A2|Output_Mux|Mux0~5_combout\ $ (\A2|Output_Mux|Mux0~4_combout\ $ (\A2|Adder_1bit|sum~0_combout\)))) # (!\b~combout\(2) & ((\A2|Output_Mux|Mux0~5_combout\ & ((\A2|Output_Mux|Mux0~4_combout\) # 
-- (\A2|Adder_1bit|sum~0_combout\))) # (!\A2|Output_Mux|Mux0~5_combout\ & (\A2|Output_Mux|Mux0~4_combout\ & \A2|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Output_Mux|Mux0~5_combout\,
	datab => \A2|Output_Mux|Mux0~4_combout\,
	datac => \b~combout\(2),
	datad => \A2|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|Output_Mux|Mux0~6_combout\);

-- Location: LC_X7_Y4_N4
\C1|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C1|Mux3~0_combout\ = (\control~combout\(4) & (!\control~combout\(5) & (\control~combout\(3)))) # (!\control~combout\(4) & (\control~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6464",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(4),
	datab => \control~combout\(5),
	datac => \control~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Mux3~0_combout\);

-- Location: LC_X7_Y4_N2
\A1|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|Adder_1bit|cout~0_combout\ = (\A1|Adder_1bit|sum~0_combout\ & ((\A0|Adder_1bit|cout~1_combout\) # (\b~combout\(1) $ (\C1|Mux3~0_combout\)))) # (!\A1|Adder_1bit|sum~0_combout\ & (\A0|Adder_1bit|cout~1_combout\ & (\b~combout\(1) $ 
-- (\C1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Adder_1bit|sum~0_combout\,
	datab => \b~combout\(1),
	datac => \C1|Mux3~0_combout\,
	datad => \A0|Adder_1bit|cout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|Adder_1bit|cout~0_combout\);

-- Location: LC_X4_Y4_N2
\A2|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A2|Output_Mux|Mux0~7_combout\ = \A2|Output_Mux|Mux0~6_combout\ $ (((!\A2|Output_Mux|Mux0~4_combout\ & (\A2|Output_Mux|Mux0~5_combout\ & \A1|Adder_1bit|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Output_Mux|Mux0~6_combout\,
	datab => \A2|Output_Mux|Mux0~4_combout\,
	datac => \A2|Output_Mux|Mux0~5_combout\,
	datad => \A1|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|Output_Mux|Mux0~7_combout\);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(9),
	combout => \control~combout\(9));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(10),
	combout => \control~combout\(10));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(11),
	combout => \control~combout\(11));

-- Location: LC_X6_Y4_N6
\A3|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A3|Output_Mux|Mux0~5_combout\ = (\control~combout\(9) & (\control~combout\(10) $ (((\a~combout\(3)) # (\control~combout\(11)))))) # (!\control~combout\(9) & (((\control~combout\(10) & \control~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \control~combout\(9),
	datac => \control~combout\(10),
	datad => \control~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|Output_Mux|Mux0~5_combout\);

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X6_Y4_N7
\A3|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A3|Output_Mux|Mux0~4_combout\ = (\control~combout\(10) & (!\control~combout\(11) & ((!\control~combout\(9)) # (!\a~combout\(3))))) # (!\control~combout\(10) & ((\control~combout\(9)) # ((!\a~combout\(3) & \control~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d7c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \control~combout\(9),
	datac => \control~combout\(10),
	datad => \control~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|Output_Mux|Mux0~4_combout\);

-- Location: LC_X6_Y4_N9
\A3|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A3|Adder_1bit|sum~0_combout\ = \a~combout\(3) $ ((((!\control~combout\(10) & \control~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datac => \control~combout\(10),
	datad => \control~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|Adder_1bit|sum~0_combout\);

-- Location: LC_X6_Y4_N2
\A3|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A3|Output_Mux|Mux0~6_combout\ = (\b~combout\(3) & (\A3|Output_Mux|Mux0~5_combout\ $ (\A3|Output_Mux|Mux0~4_combout\ $ (\A3|Adder_1bit|sum~0_combout\)))) # (!\b~combout\(3) & ((\A3|Output_Mux|Mux0~5_combout\ & ((\A3|Output_Mux|Mux0~4_combout\) # 
-- (\A3|Adder_1bit|sum~0_combout\))) # (!\A3|Output_Mux|Mux0~5_combout\ & (\A3|Output_Mux|Mux0~4_combout\ & \A3|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b668",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Output_Mux|Mux0~5_combout\,
	datab => \b~combout\(3),
	datac => \A3|Output_Mux|Mux0~4_combout\,
	datad => \A3|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|Output_Mux|Mux0~6_combout\);

-- Location: LC_X4_Y4_N9
\C2|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C2|Mux3~0_combout\ = (\control~combout\(8) & (((!\control~combout\(7))))) # (!\control~combout\(8) & (\control~combout\(6) & (\control~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4a4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(8),
	datab => \control~combout\(6),
	datac => \control~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Mux3~0_combout\);

-- Location: LC_X4_Y4_N6
\A2|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A2|Adder_1bit|cout~0_combout\ = (\A2|Adder_1bit|sum~0_combout\ & ((\A1|Adder_1bit|cout~0_combout\) # (\C2|Mux3~0_combout\ $ (\b~combout\(2))))) # (!\A2|Adder_1bit|sum~0_combout\ & (\A1|Adder_1bit|cout~0_combout\ & (\C2|Mux3~0_combout\ $ 
-- (\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Adder_1bit|sum~0_combout\,
	datab => \C2|Mux3~0_combout\,
	datac => \b~combout\(2),
	datad => \A1|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|Adder_1bit|cout~0_combout\);

-- Location: LC_X6_Y4_N8
\A3|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A3|Output_Mux|Mux0~7_combout\ = \A3|Output_Mux|Mux0~6_combout\ $ (((\A3|Output_Mux|Mux0~5_combout\ & (\A2|Adder_1bit|cout~0_combout\ & !\A3|Output_Mux|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc6c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Output_Mux|Mux0~5_combout\,
	datab => \A3|Output_Mux|Mux0~6_combout\,
	datac => \A2|Adder_1bit|cout~0_combout\,
	datad => \A3|Output_Mux|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|Output_Mux|Mux0~7_combout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(14),
	combout => \control~combout\(14));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(12),
	combout => \control~combout\(12));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(13),
	combout => \control~combout\(13));

-- Location: LC_X6_Y6_N4
\A4|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A4|Output_Mux|Mux0~4_combout\ = (\control~combout\(13) & (!\control~combout\(14) & ((!\control~combout\(12)) # (!\a~combout\(4))))) # (!\control~combout\(13) & ((\control~combout\(12)) # ((\control~combout\(14) & !\a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "15f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(14),
	datab => \a~combout\(4),
	datac => \control~combout\(12),
	datad => \control~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Output_Mux|Mux0~4_combout\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LC_X6_Y6_N7
\A4|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A4|Output_Mux|Mux0~5_combout\ = (\control~combout\(14) & ((\control~combout\(12) $ (\control~combout\(13))))) # (!\control~combout\(14) & (\control~combout\(12) & (\a~combout\(4) $ (\control~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ae0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(14),
	datab => \a~combout\(4),
	datac => \control~combout\(12),
	datad => \control~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Output_Mux|Mux0~5_combout\);

-- Location: LC_X6_Y6_N2
\A4|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A4|Adder_1bit|sum~0_combout\ = (\a~combout\(4) $ (((\control~combout\(14) & !\control~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(4),
	datac => \control~combout\(14),
	datad => \control~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Adder_1bit|sum~0_combout\);

-- Location: LC_X6_Y6_N6
\A4|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A4|Output_Mux|Mux0~6_combout\ = (\b~combout\(4) & (\A4|Output_Mux|Mux0~4_combout\ $ (\A4|Output_Mux|Mux0~5_combout\ $ (\A4|Adder_1bit|sum~0_combout\)))) # (!\b~combout\(4) & ((\A4|Output_Mux|Mux0~4_combout\ & ((\A4|Output_Mux|Mux0~5_combout\) # 
-- (\A4|Adder_1bit|sum~0_combout\))) # (!\A4|Output_Mux|Mux0~4_combout\ & (\A4|Output_Mux|Mux0~5_combout\ & \A4|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b668",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A4|Output_Mux|Mux0~4_combout\,
	datab => \b~combout\(4),
	datac => \A4|Output_Mux|Mux0~5_combout\,
	datad => \A4|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Output_Mux|Mux0~6_combout\);

-- Location: LC_X6_Y4_N4
\C3|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C3|Mux3~0_combout\ = ((\control~combout\(10) & (\control~combout\(9) & !\control~combout\(11))) # (!\control~combout\(10) & ((\control~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(9),
	datac => \control~combout\(10),
	datad => \control~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C3|Mux3~0_combout\);

-- Location: LC_X6_Y4_N5
\A3|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A3|Adder_1bit|cout~0_combout\ = (\A2|Adder_1bit|cout~0_combout\ & ((\A3|Adder_1bit|sum~0_combout\) # (\C3|Mux3~0_combout\ $ (\b~combout\(3))))) # (!\A2|Adder_1bit|cout~0_combout\ & (\A3|Adder_1bit|sum~0_combout\ & (\C3|Mux3~0_combout\ $ 
-- (\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Mux3~0_combout\,
	datab => \b~combout\(3),
	datac => \A2|Adder_1bit|cout~0_combout\,
	datad => \A3|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|Adder_1bit|cout~0_combout\);

-- Location: LC_X6_Y6_N5
\A4|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A4|Output_Mux|Mux0~7_combout\ = \A4|Output_Mux|Mux0~6_combout\ $ (((\A4|Output_Mux|Mux0~5_combout\ & (\A3|Adder_1bit|cout~0_combout\ & !\A4|Output_Mux|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A4|Output_Mux|Mux0~6_combout\,
	datab => \A4|Output_Mux|Mux0~5_combout\,
	datac => \A3|Adder_1bit|cout~0_combout\,
	datad => \A4|Output_Mux|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Output_Mux|Mux0~7_combout\);

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(15),
	combout => \control~combout\(15));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(17),
	combout => \control~combout\(17));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(16),
	combout => \control~combout\(16));

-- Location: LC_X10_Y4_N8
\A5|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A5|Output_Mux|Mux0~5_combout\ = (\control~combout\(15) & (\control~combout\(16) $ (((\a~combout\(5)) # (\control~combout\(17)))))) # (!\control~combout\(15) & (((\control~combout\(17) & \control~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \control~combout\(15),
	datac => \control~combout\(17),
	datad => \control~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|Output_Mux|Mux0~5_combout\);

-- Location: LC_X6_Y6_N8
\C4|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C4|Mux3~0_combout\ = (\control~combout\(14) & (((!\control~combout\(13))))) # (!\control~combout\(14) & (((\control~combout\(12) & \control~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(14),
	datac => \control~combout\(12),
	datad => \control~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Mux3~0_combout\);

-- Location: LC_X6_Y6_N9
\A4|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A4|Adder_1bit|cout~0_combout\ = (\A3|Adder_1bit|cout~0_combout\ & ((\A4|Adder_1bit|sum~0_combout\) # (\C4|Mux3~0_combout\ $ (\b~combout\(4))))) # (!\A3|Adder_1bit|cout~0_combout\ & (\A4|Adder_1bit|sum~0_combout\ & (\C4|Mux3~0_combout\ $ 
-- (\b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C4|Mux3~0_combout\,
	datab => \b~combout\(4),
	datac => \A3|Adder_1bit|cout~0_combout\,
	datad => \A4|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Adder_1bit|cout~0_combout\);

-- Location: LC_X10_Y4_N9
\A5|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A5|Output_Mux|Mux0~4_combout\ = (\control~combout\(16) & (!\control~combout\(17) & ((!\control~combout\(15)) # (!\a~combout\(5))))) # (!\control~combout\(16) & ((\control~combout\(15)) # ((!\a~combout\(5) & \control~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "07dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \control~combout\(15),
	datac => \control~combout\(17),
	datad => \control~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|Output_Mux|Mux0~4_combout\);

-- Location: LC_X10_Y4_N7
\A5|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A5|Adder_1bit|sum~0_combout\ = \a~combout\(5) $ ((((\control~combout\(17) & !\control~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datac => \control~combout\(17),
	datad => \control~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|Adder_1bit|sum~0_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LC_X10_Y4_N6
\A5|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A5|Output_Mux|Mux0~6_combout\ = (\b~combout\(5) & (\A5|Output_Mux|Mux0~5_combout\ $ (\A5|Output_Mux|Mux0~4_combout\ $ (\A5|Adder_1bit|sum~0_combout\)))) # (!\b~combout\(5) & ((\A5|Output_Mux|Mux0~5_combout\ & ((\A5|Output_Mux|Mux0~4_combout\) # 
-- (\A5|Adder_1bit|sum~0_combout\))) # (!\A5|Output_Mux|Mux0~5_combout\ & (\A5|Output_Mux|Mux0~4_combout\ & \A5|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Output_Mux|Mux0~5_combout\,
	datab => \A5|Output_Mux|Mux0~4_combout\,
	datac => \A5|Adder_1bit|sum~0_combout\,
	datad => \b~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|Output_Mux|Mux0~6_combout\);

-- Location: LC_X10_Y4_N2
\A5|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A5|Output_Mux|Mux0~7_combout\ = \A5|Output_Mux|Mux0~6_combout\ $ (((\A5|Output_Mux|Mux0~5_combout\ & (\A4|Adder_1bit|cout~0_combout\ & !\A5|Output_Mux|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f078",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Output_Mux|Mux0~5_combout\,
	datab => \A4|Adder_1bit|cout~0_combout\,
	datac => \A5|Output_Mux|Mux0~6_combout\,
	datad => \A5|Output_Mux|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|Output_Mux|Mux0~7_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(19),
	combout => \control~combout\(19));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(18),
	combout => \control~combout\(18));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(20),
	combout => \control~combout\(20));

-- Location: LC_X12_Y4_N8
\A6|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A6|Output_Mux|Mux0~5_combout\ = (\control~combout\(18) & (\control~combout\(19) $ (((\a~combout\(6)) # (\control~combout\(20)))))) # (!\control~combout\(18) & (\control~combout\(19) & ((\control~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(19),
	datab => \a~combout\(6),
	datac => \control~combout\(18),
	datad => \control~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|Output_Mux|Mux0~5_combout\);

-- Location: LC_X10_Y4_N5
\C5|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C5|Mux3~0_combout\ = ((\control~combout\(17) & ((!\control~combout\(16)))) # (!\control~combout\(17) & (\control~combout\(15) & \control~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(15),
	datac => \control~combout\(17),
	datad => \control~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Mux3~0_combout\);

-- Location: LC_X10_Y4_N4
\A5|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A5|Adder_1bit|cout~0_combout\ = (\A4|Adder_1bit|cout~0_combout\ & ((\A5|Adder_1bit|sum~0_combout\) # (\C5|Mux3~0_combout\ $ (\b~combout\(5))))) # (!\A4|Adder_1bit|cout~0_combout\ & (\A5|Adder_1bit|sum~0_combout\ & (\C5|Mux3~0_combout\ $ 
-- (\b~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C5|Mux3~0_combout\,
	datab => \A4|Adder_1bit|cout~0_combout\,
	datac => \A5|Adder_1bit|sum~0_combout\,
	datad => \b~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|Adder_1bit|cout~0_combout\);

-- Location: LC_X12_Y4_N9
\A6|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A6|Output_Mux|Mux0~4_combout\ = (\control~combout\(19) & (!\control~combout\(20) & ((!\control~combout\(18)) # (!\a~combout\(6))))) # (!\control~combout\(19) & ((\control~combout\(18)) # ((!\a~combout\(6) & \control~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "517a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(19),
	datab => \a~combout\(6),
	datac => \control~combout\(18),
	datad => \control~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|Output_Mux|Mux0~4_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LC_X12_Y4_N2
\A6|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A6|Adder_1bit|sum~0_combout\ = (\a~combout\(6) $ (((!\control~combout\(19) & \control~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(19),
	datac => \a~combout\(6),
	datad => \control~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|Adder_1bit|sum~0_combout\);

-- Location: LC_X12_Y4_N6
\A6|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A6|Output_Mux|Mux0~6_combout\ = (\b~combout\(6) & (\A6|Output_Mux|Mux0~5_combout\ $ (\A6|Output_Mux|Mux0~4_combout\ $ (\A6|Adder_1bit|sum~0_combout\)))) # (!\b~combout\(6) & ((\A6|Output_Mux|Mux0~5_combout\ & ((\A6|Output_Mux|Mux0~4_combout\) # 
-- (\A6|Adder_1bit|sum~0_combout\))) # (!\A6|Output_Mux|Mux0~5_combout\ & (\A6|Output_Mux|Mux0~4_combout\ & \A6|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A6|Output_Mux|Mux0~5_combout\,
	datab => \A6|Output_Mux|Mux0~4_combout\,
	datac => \b~combout\(6),
	datad => \A6|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|Output_Mux|Mux0~6_combout\);

-- Location: LC_X12_Y4_N5
\A6|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A6|Output_Mux|Mux0~7_combout\ = \A6|Output_Mux|Mux0~6_combout\ $ (((\A6|Output_Mux|Mux0~5_combout\ & (\A5|Adder_1bit|cout~0_combout\ & !\A6|Output_Mux|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f078",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A6|Output_Mux|Mux0~5_combout\,
	datab => \A5|Adder_1bit|cout~0_combout\,
	datac => \A6|Output_Mux|Mux0~6_combout\,
	datad => \A6|Output_Mux|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|Output_Mux|Mux0~7_combout\);

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(23),
	combout => \control~combout\(23));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(21),
	combout => \control~combout\(21));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(22),
	combout => \control~combout\(22));

-- Location: LC_X5_Y4_N4
\A7|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A7|Output_Mux|Mux0~5_combout\ = (\control~combout\(23) & ((\control~combout\(21) $ (\control~combout\(22))))) # (!\control~combout\(23) & (\control~combout\(21) & (\a~combout\(7) $ (\control~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ae0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(23),
	datab => \a~combout\(7),
	datac => \control~combout\(21),
	datad => \control~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|Output_Mux|Mux0~5_combout\);

-- Location: LC_X5_Y4_N9
\A7|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A7|Output_Mux|Mux0~4_combout\ = (\control~combout\(22) & (!\control~combout\(23) & ((!\control~combout\(21)) # (!\a~combout\(7))))) # (!\control~combout\(22) & ((\control~combout\(21)) # ((\control~combout\(23) & !\a~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "15f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(23),
	datab => \a~combout\(7),
	datac => \control~combout\(21),
	datad => \control~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|Output_Mux|Mux0~4_combout\);

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LC_X5_Y4_N5
\A7|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A7|Adder_1bit|sum~0_combout\ = \a~combout\(7) $ (((\control~combout\(23) & ((!\control~combout\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(23),
	datab => \a~combout\(7),
	datad => \control~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|Adder_1bit|sum~0_combout\);

-- Location: LC_X5_Y4_N6
\A7|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A7|Output_Mux|Mux0~6_combout\ = (\b~combout\(7) & (\A7|Output_Mux|Mux0~5_combout\ $ (\A7|Output_Mux|Mux0~4_combout\ $ (\A7|Adder_1bit|sum~0_combout\)))) # (!\b~combout\(7) & ((\A7|Output_Mux|Mux0~5_combout\ & ((\A7|Output_Mux|Mux0~4_combout\) # 
-- (\A7|Adder_1bit|sum~0_combout\))) # (!\A7|Output_Mux|Mux0~5_combout\ & (\A7|Output_Mux|Mux0~4_combout\ & \A7|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A7|Output_Mux|Mux0~5_combout\,
	datab => \A7|Output_Mux|Mux0~4_combout\,
	datac => \b~combout\(7),
	datad => \A7|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|Output_Mux|Mux0~6_combout\);

-- Location: LC_X12_Y4_N7
\C6|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C6|Mux3~0_combout\ = (\control~combout\(19) & (((\control~combout\(18) & !\control~combout\(20))))) # (!\control~combout\(19) & (((\control~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(19),
	datac => \control~combout\(18),
	datad => \control~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C6|Mux3~0_combout\);

-- Location: LC_X12_Y4_N4
\A6|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A6|Adder_1bit|cout~0_combout\ = (\A5|Adder_1bit|cout~0_combout\ & ((\A6|Adder_1bit|sum~0_combout\) # (\b~combout\(6) $ (\C6|Mux3~0_combout\)))) # (!\A5|Adder_1bit|cout~0_combout\ & (\A6|Adder_1bit|sum~0_combout\ & (\b~combout\(6) $ 
-- (\C6|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \A5|Adder_1bit|cout~0_combout\,
	datac => \C6|Mux3~0_combout\,
	datad => \A6|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|Adder_1bit|cout~0_combout\);

-- Location: LC_X5_Y4_N8
\A7|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A7|Output_Mux|Mux0~7_combout\ = \A7|Output_Mux|Mux0~6_combout\ $ (((!\A7|Output_Mux|Mux0~4_combout\ & (\A7|Output_Mux|Mux0~5_combout\ & \A6|Adder_1bit|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A7|Output_Mux|Mux0~6_combout\,
	datab => \A7|Output_Mux|Mux0~4_combout\,
	datac => \A7|Output_Mux|Mux0~5_combout\,
	datad => \A6|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|Output_Mux|Mux0~7_combout\);

-- Location: LC_X5_Y4_N7
\C7|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C7|Mux3~0_combout\ = (\control~combout\(23) & (((!\control~combout\(22))))) # (!\control~combout\(23) & (((\control~combout\(21) & \control~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(23),
	datac => \control~combout\(21),
	datad => \control~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C7|Mux3~0_combout\);

-- Location: LC_X5_Y4_N2
\A7|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A7|Adder_1bit|cout~0_combout\ = (\A7|Adder_1bit|sum~0_combout\ & ((\A6|Adder_1bit|cout~0_combout\) # (\C7|Mux3~0_combout\ $ (\b~combout\(7))))) # (!\A7|Adder_1bit|sum~0_combout\ & (\A6|Adder_1bit|cout~0_combout\ & (\C7|Mux3~0_combout\ $ 
-- (\b~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A7|Adder_1bit|sum~0_combout\,
	datab => \C7|Mux3~0_combout\,
	datac => \b~combout\(7),
	datad => \A6|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|Adder_1bit|cout~0_combout\);

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(25),
	combout => \control~combout\(25));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(26),
	combout => \control~combout\(26));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(24),
	combout => \control~combout\(24));

-- Location: LC_X3_Y4_N2
\A8|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A8|Output_Mux|Mux0~4_combout\ = (\control~combout\(25) & (!\control~combout\(26) & ((!\control~combout\(24)) # (!\a~combout\(8))))) # (!\control~combout\(25) & ((\control~combout\(24)) # ((!\a~combout\(8) & \control~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "371c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(8),
	datab => \control~combout\(25),
	datac => \control~combout\(26),
	datad => \control~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|Output_Mux|Mux0~4_combout\);

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: LC_X3_Y4_N5
\A8|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A8|Adder_1bit|sum~0_combout\ = \a~combout\(8) $ ((((\control~combout\(26) & !\control~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(8),
	datac => \control~combout\(26),
	datad => \control~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|Adder_1bit|sum~0_combout\);

-- Location: LC_X3_Y4_N9
\A8|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A8|Output_Mux|Mux0~5_combout\ = (\control~combout\(26) & ((\control~combout\(25) $ (\control~combout\(24))))) # (!\control~combout\(26) & (\control~combout\(24) & (\a~combout\(8) $ (\control~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "36c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(8),
	datab => \control~combout\(25),
	datac => \control~combout\(26),
	datad => \control~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|Output_Mux|Mux0~5_combout\);

-- Location: LC_X3_Y4_N7
\A8|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A8|Output_Mux|Mux0~6_combout\ = (\b~combout\(8) & (\A8|Output_Mux|Mux0~4_combout\ $ (\A8|Adder_1bit|sum~0_combout\ $ (\A8|Output_Mux|Mux0~5_combout\)))) # (!\b~combout\(8) & ((\A8|Output_Mux|Mux0~4_combout\ & ((\A8|Adder_1bit|sum~0_combout\) # 
-- (\A8|Output_Mux|Mux0~5_combout\))) # (!\A8|Output_Mux|Mux0~4_combout\ & (\A8|Adder_1bit|sum~0_combout\ & \A8|Output_Mux|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d668",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(8),
	datab => \A8|Output_Mux|Mux0~4_combout\,
	datac => \A8|Adder_1bit|sum~0_combout\,
	datad => \A8|Output_Mux|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|Output_Mux|Mux0~6_combout\);

-- Location: LC_X3_Y4_N6
\A8|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A8|Output_Mux|Mux0~7_combout\ = \A8|Output_Mux|Mux0~6_combout\ $ (((\A7|Adder_1bit|cout~0_combout\ & (!\A8|Output_Mux|Mux0~4_combout\ & \A8|Output_Mux|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A7|Adder_1bit|cout~0_combout\,
	datab => \A8|Output_Mux|Mux0~4_combout\,
	datac => \A8|Output_Mux|Mux0~6_combout\,
	datad => \A8|Output_Mux|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|Output_Mux|Mux0~7_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(29),
	combout => \control~combout\(29));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(27),
	combout => \control~combout\(27));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(28),
	combout => \control~combout\(28));

-- Location: LC_X3_Y5_N8
\A9|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A9|Output_Mux|Mux0~4_combout\ = (\control~combout\(28) & (!\control~combout\(29) & ((!\control~combout\(27)) # (!\a~combout\(9))))) # (!\control~combout\(28) & ((\control~combout\(27)) # ((\control~combout\(29) & !\a~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "15f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(29),
	datab => \a~combout\(9),
	datac => \control~combout\(27),
	datad => \control~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|Output_Mux|Mux0~4_combout\);

-- Location: LC_X3_Y5_N9
\A9|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A9|Adder_1bit|sum~0_combout\ = \a~combout\(9) $ (((\control~combout\(29) & ((!\control~combout\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(29),
	datab => \a~combout\(9),
	datad => \control~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|Adder_1bit|sum~0_combout\);

-- Location: LC_X3_Y5_N7
\A9|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A9|Output_Mux|Mux0~5_combout\ = (\control~combout\(29) & ((\control~combout\(27) $ (\control~combout\(28))))) # (!\control~combout\(29) & (\control~combout\(27) & (\a~combout\(9) $ (\control~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ae0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(29),
	datab => \a~combout\(9),
	datac => \control~combout\(27),
	datad => \control~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|Output_Mux|Mux0~5_combout\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LC_X3_Y5_N6
\A9|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A9|Output_Mux|Mux0~6_combout\ = (\b~combout\(9) & (\A9|Output_Mux|Mux0~4_combout\ $ (\A9|Adder_1bit|sum~0_combout\ $ (\A9|Output_Mux|Mux0~5_combout\)))) # (!\b~combout\(9) & ((\A9|Output_Mux|Mux0~4_combout\ & ((\A9|Adder_1bit|sum~0_combout\) # 
-- (\A9|Output_Mux|Mux0~5_combout\))) # (!\A9|Output_Mux|Mux0~4_combout\ & (\A9|Adder_1bit|sum~0_combout\ & \A9|Output_Mux|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A9|Output_Mux|Mux0~4_combout\,
	datab => \A9|Adder_1bit|sum~0_combout\,
	datac => \A9|Output_Mux|Mux0~5_combout\,
	datad => \b~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|Output_Mux|Mux0~6_combout\);

-- Location: LC_X3_Y4_N4
\C8|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C8|Mux3~0_combout\ = ((\control~combout\(25) & (!\control~combout\(26) & \control~combout\(24))) # (!\control~combout\(25) & (\control~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(25),
	datac => \control~combout\(26),
	datad => \control~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|Mux3~0_combout\);

-- Location: LC_X3_Y4_N8
\A8|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A8|Adder_1bit|cout~0_combout\ = (\A8|Adder_1bit|sum~0_combout\ & ((\A7|Adder_1bit|cout~0_combout\) # (\b~combout\(8) $ (\C8|Mux3~0_combout\)))) # (!\A8|Adder_1bit|sum~0_combout\ & (\A7|Adder_1bit|cout~0_combout\ & (\b~combout\(8) $ 
-- (\C8|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A8|Adder_1bit|sum~0_combout\,
	datab => \b~combout\(8),
	datac => \A7|Adder_1bit|cout~0_combout\,
	datad => \C8|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|Adder_1bit|cout~0_combout\);

-- Location: LC_X3_Y5_N5
\A9|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A9|Output_Mux|Mux0~7_combout\ = \A9|Output_Mux|Mux0~6_combout\ $ (((\A8|Adder_1bit|cout~0_combout\ & (\A9|Output_Mux|Mux0~5_combout\ & !\A9|Output_Mux|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A9|Output_Mux|Mux0~6_combout\,
	datab => \A8|Adder_1bit|cout~0_combout\,
	datac => \A9|Output_Mux|Mux0~5_combout\,
	datad => \A9|Output_Mux|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|Output_Mux|Mux0~7_combout\);

-- Location: LC_X3_Y5_N4
\C9|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C9|Mux3~0_combout\ = (\control~combout\(29) & (((!\control~combout\(28))))) # (!\control~combout\(29) & (((\control~combout\(27) & \control~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(29),
	datac => \control~combout\(27),
	datad => \control~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Mux3~0_combout\);

-- Location: LC_X3_Y5_N2
\A9|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A9|Adder_1bit|cout~0_combout\ = (\A8|Adder_1bit|cout~0_combout\ & ((\A9|Adder_1bit|sum~0_combout\) # (\b~combout\(9) $ (\C9|Mux3~0_combout\)))) # (!\A8|Adder_1bit|cout~0_combout\ & (\A9|Adder_1bit|sum~0_combout\ & (\b~combout\(9) $ 
-- (\C9|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(9),
	datab => \A8|Adder_1bit|cout~0_combout\,
	datac => \C9|Mux3~0_combout\,
	datad => \A9|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|Adder_1bit|cout~0_combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(32),
	combout => \control~combout\(32));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(30),
	combout => \control~combout\(30));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(31),
	combout => \control~combout\(31));

-- Location: LC_X1_Y6_N9
\A10|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A10|Output_Mux|Mux0~5_combout\ = (\control~combout\(32) & ((\control~combout\(30) $ (\control~combout\(31))))) # (!\control~combout\(32) & (\control~combout\(30) & (\a~combout\(10) $ (\control~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ae0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(32),
	datab => \a~combout\(10),
	datac => \control~combout\(30),
	datad => \control~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|Output_Mux|Mux0~5_combout\);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: LC_X1_Y6_N6
\A10|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A10|Adder_1bit|sum~0_combout\ = (\a~combout\(10) $ (((\control~combout\(32) & !\control~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(10),
	datac => \control~combout\(32),
	datad => \control~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|Adder_1bit|sum~0_combout\);

-- Location: LC_X1_Y6_N2
\A10|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A10|Output_Mux|Mux0~4_combout\ = (\control~combout\(31) & (!\control~combout\(32) & ((!\control~combout\(30)) # (!\a~combout\(10))))) # (!\control~combout\(31) & ((\control~combout\(30)) # ((\control~combout\(32) & !\a~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "15f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(32),
	datab => \a~combout\(10),
	datac => \control~combout\(30),
	datad => \control~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|Output_Mux|Mux0~4_combout\);

-- Location: LC_X1_Y6_N4
\A10|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A10|Output_Mux|Mux0~6_combout\ = (\b~combout\(10) & (\A10|Output_Mux|Mux0~5_combout\ $ (\A10|Adder_1bit|sum~0_combout\ $ (\A10|Output_Mux|Mux0~4_combout\)))) # (!\b~combout\(10) & ((\A10|Output_Mux|Mux0~5_combout\ & ((\A10|Adder_1bit|sum~0_combout\) # 
-- (\A10|Output_Mux|Mux0~4_combout\))) # (!\A10|Output_Mux|Mux0~5_combout\ & (\A10|Adder_1bit|sum~0_combout\ & \A10|Output_Mux|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d668",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datab => \A10|Output_Mux|Mux0~5_combout\,
	datac => \A10|Adder_1bit|sum~0_combout\,
	datad => \A10|Output_Mux|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|Output_Mux|Mux0~6_combout\);

-- Location: LC_X1_Y6_N3
\A10|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A10|Output_Mux|Mux0~7_combout\ = \A10|Output_Mux|Mux0~6_combout\ $ (((\A9|Adder_1bit|cout~0_combout\ & (\A10|Output_Mux|Mux0~5_combout\ & !\A10|Output_Mux|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f078",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A9|Adder_1bit|cout~0_combout\,
	datab => \A10|Output_Mux|Mux0~5_combout\,
	datac => \A10|Output_Mux|Mux0~6_combout\,
	datad => \A10|Output_Mux|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|Output_Mux|Mux0~7_combout\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(33),
	combout => \control~combout\(33));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[34]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(34),
	combout => \control~combout\(34));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[35]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(35),
	combout => \control~combout\(35));

-- Location: LC_X2_Y7_N8
\A11|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A11|Output_Mux|Mux0~4_combout\ = (\control~combout\(34) & (!\control~combout\(35) & ((!\a~combout\(11)) # (!\control~combout\(33))))) # (!\control~combout\(34) & ((\control~combout\(33)) # ((!\a~combout\(11) & \control~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "236e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(33),
	datab => \control~combout\(34),
	datac => \a~combout\(11),
	datad => \control~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|Output_Mux|Mux0~4_combout\);

-- Location: LC_X1_Y6_N8
\C10|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C10|Mux3~0_combout\ = (\control~combout\(32) & (((!\control~combout\(31))))) # (!\control~combout\(32) & (((\control~combout\(30) & \control~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(32),
	datac => \control~combout\(30),
	datad => \control~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C10|Mux3~0_combout\);

-- Location: LC_X1_Y6_N7
\A10|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A10|Adder_1bit|cout~0_combout\ = (\A9|Adder_1bit|cout~0_combout\ & ((\A10|Adder_1bit|sum~0_combout\) # (\C10|Mux3~0_combout\ $ (\b~combout\(10))))) # (!\A9|Adder_1bit|cout~0_combout\ & (\A10|Adder_1bit|sum~0_combout\ & (\C10|Mux3~0_combout\ $ 
-- (\b~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C10|Mux3~0_combout\,
	datab => \b~combout\(10),
	datac => \A9|Adder_1bit|cout~0_combout\,
	datad => \A10|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|Adder_1bit|cout~0_combout\);

-- Location: LC_X2_Y7_N2
\A11|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A11|Adder_1bit|sum~0_combout\ = (\a~combout\(11) $ (((!\control~combout\(34) & \control~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(34),
	datac => \a~combout\(11),
	datad => \control~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|Adder_1bit|sum~0_combout\);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LC_X2_Y7_N9
\A11|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A11|Output_Mux|Mux0~5_combout\ = (\control~combout\(33) & (\control~combout\(34) $ (((\a~combout\(11)) # (\control~combout\(35)))))) # (!\control~combout\(33) & (\control~combout\(34) & ((\control~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6628",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(33),
	datab => \control~combout\(34),
	datac => \a~combout\(11),
	datad => \control~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|Output_Mux|Mux0~5_combout\);

-- Location: LC_X2_Y7_N6
\A11|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A11|Output_Mux|Mux0~6_combout\ = (\b~combout\(11) & (\A11|Output_Mux|Mux0~4_combout\ $ (\A11|Adder_1bit|sum~0_combout\ $ (\A11|Output_Mux|Mux0~5_combout\)))) # (!\b~combout\(11) & ((\A11|Output_Mux|Mux0~4_combout\ & ((\A11|Adder_1bit|sum~0_combout\) # 
-- (\A11|Output_Mux|Mux0~5_combout\))) # (!\A11|Output_Mux|Mux0~4_combout\ & (\A11|Adder_1bit|sum~0_combout\ & \A11|Output_Mux|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A11|Output_Mux|Mux0~4_combout\,
	datab => \A11|Adder_1bit|sum~0_combout\,
	datac => \b~combout\(11),
	datad => \A11|Output_Mux|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|Output_Mux|Mux0~6_combout\);

-- Location: LC_X2_Y7_N4
\A11|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A11|Output_Mux|Mux0~7_combout\ = \A11|Output_Mux|Mux0~6_combout\ $ (((!\A11|Output_Mux|Mux0~4_combout\ & (\A10|Adder_1bit|cout~0_combout\ & \A11|Output_Mux|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A11|Output_Mux|Mux0~4_combout\,
	datab => \A10|Adder_1bit|cout~0_combout\,
	datac => \A11|Output_Mux|Mux0~6_combout\,
	datad => \A11|Output_Mux|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|Output_Mux|Mux0~7_combout\);

-- Location: LC_X2_Y7_N7
\C11|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C11|Mux3~0_combout\ = ((\control~combout\(34) & (\control~combout\(33) & !\control~combout\(35))) # (!\control~combout\(34) & ((\control~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(34),
	datac => \control~combout\(33),
	datad => \control~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C11|Mux3~0_combout\);

-- Location: LC_X2_Y7_N5
\A11|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A11|Adder_1bit|cout~0_combout\ = (\A10|Adder_1bit|cout~0_combout\ & ((\A11|Adder_1bit|sum~0_combout\) # (\b~combout\(11) $ (\C11|Mux3~0_combout\)))) # (!\A10|Adder_1bit|cout~0_combout\ & (\A11|Adder_1bit|sum~0_combout\ & (\b~combout\(11) $ 
-- (\C11|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(11),
	datab => \A10|Adder_1bit|cout~0_combout\,
	datac => \C11|Mux3~0_combout\,
	datad => \A11|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|Adder_1bit|cout~0_combout\);

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[36]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(36),
	combout => \control~combout\(36));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[37]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(37),
	combout => \control~combout\(37));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[38]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(38),
	combout => \control~combout\(38));

-- Location: LC_X3_Y7_N9
\A12|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A12|Output_Mux|Mux0~5_combout\ = (\control~combout\(36) & (\control~combout\(37) $ (((\a~combout\(12)) # (\control~combout\(38)))))) # (!\control~combout\(36) & (((\control~combout\(37) & \control~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(36),
	datab => \a~combout\(12),
	datac => \control~combout\(37),
	datad => \control~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|Output_Mux|Mux0~5_combout\);

-- Location: LC_X3_Y7_N8
\A12|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A12|Output_Mux|Mux0~4_combout\ = (\control~combout\(37) & (!\control~combout\(38) & ((!\a~combout\(12)) # (!\control~combout\(36))))) # (!\control~combout\(37) & ((\control~combout\(36)) # ((!\a~combout\(12) & \control~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b7a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(36),
	datab => \a~combout\(12),
	datac => \control~combout\(37),
	datad => \control~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|Output_Mux|Mux0~4_combout\);

-- Location: LC_X3_Y7_N7
\A12|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A12|Adder_1bit|sum~0_combout\ = (\a~combout\(12) $ (((!\control~combout\(37) & \control~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(12),
	datac => \control~combout\(37),
	datad => \control~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|Adder_1bit|sum~0_combout\);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: LC_X3_Y7_N6
\A12|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A12|Output_Mux|Mux0~6_combout\ = (\b~combout\(12) & (\A12|Output_Mux|Mux0~4_combout\ $ (\A12|Output_Mux|Mux0~5_combout\ $ (\A12|Adder_1bit|sum~0_combout\)))) # (!\b~combout\(12) & ((\A12|Output_Mux|Mux0~4_combout\ & ((\A12|Output_Mux|Mux0~5_combout\) # 
-- (\A12|Adder_1bit|sum~0_combout\))) # (!\A12|Output_Mux|Mux0~4_combout\ & (\A12|Output_Mux|Mux0~5_combout\ & \A12|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A12|Output_Mux|Mux0~4_combout\,
	datab => \A12|Output_Mux|Mux0~5_combout\,
	datac => \A12|Adder_1bit|sum~0_combout\,
	datad => \b~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|Output_Mux|Mux0~6_combout\);

-- Location: LC_X3_Y7_N5
\A12|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A12|Output_Mux|Mux0~7_combout\ = \A12|Output_Mux|Mux0~6_combout\ $ (((\A11|Adder_1bit|cout~0_combout\ & (\A12|Output_Mux|Mux0~5_combout\ & !\A12|Output_Mux|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f078",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A11|Adder_1bit|cout~0_combout\,
	datab => \A12|Output_Mux|Mux0~5_combout\,
	datac => \A12|Output_Mux|Mux0~6_combout\,
	datad => \A12|Output_Mux|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|Output_Mux|Mux0~7_combout\);

-- Location: LC_X3_Y7_N2
\C12|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C12|Mux3~0_combout\ = ((\control~combout\(37) & (\control~combout\(36) & !\control~combout\(38))) # (!\control~combout\(37) & ((\control~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(36),
	datac => \control~combout\(37),
	datad => \control~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C12|Mux3~0_combout\);

-- Location: LC_X3_Y7_N4
\A12|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A12|Adder_1bit|cout~0_combout\ = (\A11|Adder_1bit|cout~0_combout\ & ((\A12|Adder_1bit|sum~0_combout\) # (\C12|Mux3~0_combout\ $ (\b~combout\(12))))) # (!\A11|Adder_1bit|cout~0_combout\ & (\A12|Adder_1bit|sum~0_combout\ & (\C12|Mux3~0_combout\ $ 
-- (\b~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A11|Adder_1bit|cout~0_combout\,
	datab => \C12|Mux3~0_combout\,
	datac => \A12|Adder_1bit|sum~0_combout\,
	datad => \b~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|Adder_1bit|cout~0_combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[40]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(40),
	combout => \control~combout\(40));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[39]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(39),
	combout => \control~combout\(39));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[41]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(41),
	combout => \control~combout\(41));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LC_X1_Y5_N9
\A13|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A13|Output_Mux|Mux0~4_combout\ = (\control~combout\(40) & (!\control~combout\(41) & ((!\a~combout\(13)) # (!\control~combout\(39))))) # (!\control~combout\(40) & ((\control~combout\(39)) # ((\control~combout\(41) & !\a~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "465e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(40),
	datab => \control~combout\(39),
	datac => \control~combout\(41),
	datad => \a~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|Output_Mux|Mux0~4_combout\);

-- Location: LC_X1_Y5_N7
\A13|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A13|Output_Mux|Mux0~5_combout\ = (\control~combout\(39) & (\control~combout\(40) $ (((\control~combout\(41)) # (\a~combout\(13)))))) # (!\control~combout\(39) & (\control~combout\(40) & (\control~combout\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6468",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(40),
	datab => \control~combout\(39),
	datac => \control~combout\(41),
	datad => \a~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|Output_Mux|Mux0~5_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LC_X1_Y5_N2
\A13|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A13|Adder_1bit|sum~0_combout\ = (\a~combout\(13) $ (((!\control~combout\(40) & \control~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(40),
	datac => \control~combout\(41),
	datad => \a~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|Adder_1bit|sum~0_combout\);

-- Location: LC_X1_Y5_N4
\A13|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A13|Output_Mux|Mux0~6_combout\ = (\b~combout\(13) & (\A13|Output_Mux|Mux0~5_combout\ $ (\A13|Output_Mux|Mux0~4_combout\ $ (\A13|Adder_1bit|sum~0_combout\)))) # (!\b~combout\(13) & ((\A13|Output_Mux|Mux0~5_combout\ & ((\A13|Output_Mux|Mux0~4_combout\) # 
-- (\A13|Adder_1bit|sum~0_combout\))) # (!\A13|Output_Mux|Mux0~5_combout\ & (\A13|Output_Mux|Mux0~4_combout\ & \A13|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A13|Output_Mux|Mux0~5_combout\,
	datab => \A13|Output_Mux|Mux0~4_combout\,
	datac => \b~combout\(13),
	datad => \A13|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|Output_Mux|Mux0~6_combout\);

-- Location: LC_X1_Y5_N8
\A13|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A13|Output_Mux|Mux0~7_combout\ = \A13|Output_Mux|Mux0~6_combout\ $ (((\A12|Adder_1bit|cout~0_combout\ & (!\A13|Output_Mux|Mux0~4_combout\ & \A13|Output_Mux|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A12|Adder_1bit|cout~0_combout\,
	datab => \A13|Output_Mux|Mux0~4_combout\,
	datac => \A13|Output_Mux|Mux0~6_combout\,
	datad => \A13|Output_Mux|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|Output_Mux|Mux0~7_combout\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[42]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(42),
	combout => \control~combout\(42));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[44]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(44),
	combout => \control~combout\(44));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[43]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(43),
	combout => \control~combout\(43));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LC_X6_Y7_N8
\A14|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A14|Output_Mux|Mux0~4_combout\ = (\control~combout\(43) & (!\control~combout\(44) & ((!\a~combout\(14)) # (!\control~combout\(42))))) # (!\control~combout\(43) & ((\control~combout\(42)) # ((\control~combout\(44) & !\a~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1a3e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(42),
	datab => \control~combout\(44),
	datac => \control~combout\(43),
	datad => \a~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|Output_Mux|Mux0~4_combout\);

-- Location: LC_X6_Y7_N9
\A14|Output_Mux|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \A14|Output_Mux|Mux0~5_combout\ = (\control~combout\(42) & (\control~combout\(43) $ (((\control~combout\(44)) # (\a~combout\(14)))))) # (!\control~combout\(42) & (\control~combout\(44) & (\control~combout\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4a68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(42),
	datab => \control~combout\(44),
	datac => \control~combout\(43),
	datad => \a~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|Output_Mux|Mux0~5_combout\);

-- Location: LC_X1_Y5_N6
\C13|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C13|Mux3~0_combout\ = (\control~combout\(40) & (\control~combout\(39) & (!\control~combout\(41)))) # (!\control~combout\(40) & (((\control~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(40),
	datab => \control~combout\(39),
	datac => \control~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C13|Mux3~0_combout\);

-- Location: LC_X1_Y5_N5
\A13|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A13|Adder_1bit|cout~0_combout\ = (\A13|Adder_1bit|sum~0_combout\ & ((\A12|Adder_1bit|cout~0_combout\) # (\C13|Mux3~0_combout\ $ (\b~combout\(13))))) # (!\A13|Adder_1bit|sum~0_combout\ & (\A12|Adder_1bit|cout~0_combout\ & (\C13|Mux3~0_combout\ $ 
-- (\b~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C13|Mux3~0_combout\,
	datab => \A13|Adder_1bit|sum~0_combout\,
	datac => \b~combout\(13),
	datad => \A12|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|Adder_1bit|cout~0_combout\);

-- Location: LC_X6_Y7_N4
\A14|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A14|Adder_1bit|sum~0_combout\ = (\a~combout\(14) $ (((\control~combout\(44) & !\control~combout\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(44),
	datac => \control~combout\(43),
	datad => \a~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|Adder_1bit|sum~0_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LC_X6_Y7_N2
\A14|Output_Mux|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \A14|Output_Mux|Mux0~6_combout\ = (\b~combout\(14) & (\A14|Output_Mux|Mux0~4_combout\ $ (\A14|Output_Mux|Mux0~5_combout\ $ (\A14|Adder_1bit|sum~0_combout\)))) # (!\b~combout\(14) & ((\A14|Output_Mux|Mux0~4_combout\ & ((\A14|Output_Mux|Mux0~5_combout\) # 
-- (\A14|Adder_1bit|sum~0_combout\))) # (!\A14|Output_Mux|Mux0~4_combout\ & (\A14|Output_Mux|Mux0~5_combout\ & \A14|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A14|Output_Mux|Mux0~4_combout\,
	datab => \A14|Output_Mux|Mux0~5_combout\,
	datac => \A14|Adder_1bit|sum~0_combout\,
	datad => \b~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|Output_Mux|Mux0~6_combout\);

-- Location: LC_X6_Y7_N7
\A14|Output_Mux|Mux0~7\ : maxv_lcell
-- Equation(s):
-- \A14|Output_Mux|Mux0~7_combout\ = \A14|Output_Mux|Mux0~6_combout\ $ (((!\A14|Output_Mux|Mux0~4_combout\ & (\A14|Output_Mux|Mux0~5_combout\ & \A13|Adder_1bit|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A14|Output_Mux|Mux0~4_combout\,
	datab => \A14|Output_Mux|Mux0~5_combout\,
	datac => \A13|Adder_1bit|cout~0_combout\,
	datad => \A14|Output_Mux|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|Output_Mux|Mux0~7_combout\);

-- Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[47]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(47),
	combout => \control~combout\(47));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[46]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(46),
	combout => \control~combout\(46));

-- Location: LC_X12_Y1_N5
\A15|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A15|Adder_1bit|sum~0_combout\ = \a~combout\(15) $ (((\control~combout\(47) & ((!\control~combout\(46))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(15),
	datab => \control~combout\(47),
	datad => \control~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|Adder_1bit|sum~0_combout\);

-- Location: LC_X6_Y7_N5
\C14|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C14|Mux3~0_combout\ = (\control~combout\(44) & (((!\control~combout\(43))))) # (!\control~combout\(44) & (\control~combout\(42) & (\control~combout\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2c2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(42),
	datab => \control~combout\(44),
	datac => \control~combout\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C14|Mux3~0_combout\);

-- Location: LC_X6_Y7_N6
\A14|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A14|Adder_1bit|cout~0_combout\ = (\A14|Adder_1bit|sum~0_combout\ & ((\A13|Adder_1bit|cout~0_combout\) # (\C14|Mux3~0_combout\ $ (\b~combout\(14))))) # (!\A14|Adder_1bit|sum~0_combout\ & (\A13|Adder_1bit|cout~0_combout\ & (\C14|Mux3~0_combout\ $ 
-- (\b~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A14|Adder_1bit|sum~0_combout\,
	datab => \A13|Adder_1bit|cout~0_combout\,
	datac => \C14|Mux3~0_combout\,
	datad => \b~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|Adder_1bit|cout~0_combout\);

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[45]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(45),
	combout => \control~combout\(45));

-- Location: LC_X12_Y1_N7
\A15|Output_Mux|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \A15|Output_Mux|Mux0~2_combout\ = (\control~combout\(47) & (\A14|Adder_1bit|cout~0_combout\)) # (!\control~combout\(47) & (((\control~combout\(45) & \control~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A14|Adder_1bit|cout~0_combout\,
	datab => \control~combout\(47),
	datac => \control~combout\(45),
	datad => \control~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|Output_Mux|Mux0~2_combout\);

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LC_X12_Y1_N6
\A15|Output_Mux|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \A15|Output_Mux|Mux0~3_combout\ = (\A15|Output_Mux|Mux0~2_combout\ $ (\b~combout\(15) $ (\a~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A15|Output_Mux|Mux0~2_combout\,
	datac => \b~combout\(15),
	datad => \a~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|Output_Mux|Mux0~3_combout\);

-- Location: LC_X12_Y1_N2
\A15|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A15|Output_Mux|Mux0~0_combout\ = (\control~combout\(46) & (\A15|Output_Mux|Mux0~3_combout\ & ((!\control~combout\(45)) # (!\control~combout\(47))))) # (!\control~combout\(46) & (((\control~combout\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A15|Output_Mux|Mux0~3_combout\,
	datab => \control~combout\(47),
	datac => \control~combout\(45),
	datad => \control~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|Output_Mux|Mux0~0_combout\);

-- Location: LC_X12_Y1_N4
\C15|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \C15|Mux0~0_combout\ = (((\control~combout\(47) & \control~combout\(45))) # (!\control~combout\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(47),
	datac => \control~combout\(45),
	datad => \control~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C15|Mux0~0_combout\);

-- Location: LC_X12_Y1_N8
\A15|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A15|mulB|Xout~0_combout\ = \b~combout\(15) $ (((\control~combout\(47) & ((!\control~combout\(46)))) # (!\control~combout\(47) & (\control~combout\(45) & \control~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9a66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(15),
	datab => \control~combout\(47),
	datac => \control~combout\(45),
	datad => \control~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|mulB|Xout~0_combout\);

-- Location: LC_X12_Y1_N9
\A15|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A15|Output_Mux|Mux0~1_combout\ = (\A15|Adder_1bit|sum~0_combout\ & ((\A15|Output_Mux|Mux0~0_combout\) # ((\C15|Mux0~0_combout\ & \A15|mulB|Xout~0_combout\)))) # (!\A15|Adder_1bit|sum~0_combout\ & (\A15|Output_Mux|Mux0~0_combout\ & 
-- ((\A15|mulB|Xout~0_combout\) # (!\C15|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A15|Adder_1bit|sum~0_combout\,
	datab => \A15|Output_Mux|Mux0~0_combout\,
	datac => \C15|Mux0~0_combout\,
	datad => \A15|mulB|Xout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|Output_Mux|Mux0~1_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A0|Output_Mux|Mux0~8_combout\,
	oe => VCC,
	padio => ww_res(0));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A1|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(1));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A2|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(2));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A3|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A4|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(4));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A5|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(5));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A6|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(6));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A7|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(7));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A8|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(8));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A9|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(9));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A10|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(10));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A11|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(11));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A12|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(12));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A13|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(13));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A14|Output_Mux|Mux0~7_combout\,
	oe => VCC,
	padio => ww_res(14));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A15|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(15));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_cout);

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\overflow~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_overflow);
END structure;


