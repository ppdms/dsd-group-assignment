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

-- DATE "05/31/2023 17:20:11"

-- 
-- Device: Altera 5M160ZM100C4 Package MBGA100
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
	control : IN std_logic_vector(2 DOWNTO 0);
	res : OUT std_logic_vector(15 DOWNTO 0);
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
SIGNAL ww_control : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_res : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \A0|Output_Mux|Mux0~3_combout\ : std_logic;
SIGNAL \A0|Output_Mux|Mux0~2_combout\ : std_logic;
SIGNAL \A0|Output_Mux|Mux0~4_combout\ : std_logic;
SIGNAL \A1|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A1|mulB|Xout~0_combout\ : std_logic;
SIGNAL \C0|Mux1~0_combout\ : std_logic;
SIGNAL \A0|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A0|Adder_1bit|cout~1_combout\ : std_logic;
SIGNAL \C0|Mux0~0_combout\ : std_logic;
SIGNAL \A1|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A1|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A2|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A2|mulB|Xout~0_combout\ : std_logic;
SIGNAL \C0|Mux3~0_combout\ : std_logic;
SIGNAL \A1|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A2|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A2|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A3|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A3|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A2|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A3|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A3|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A4|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A3|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A4|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A4|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A4|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A5|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A5|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A4|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A5|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A5|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A5|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A6|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A6|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A6|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A6|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A7|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A6|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A7|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A7|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A7|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A8|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A7|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A8|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A8|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A8|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A8|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A9|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A9|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A9|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A9|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A10|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A9|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A10|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A10|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A10|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A10|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A11|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A11|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A11|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A11|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A12|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A12|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A11|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A12|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A12|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A13|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A13|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A12|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A13|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A13|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A13|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A14|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A14|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A14|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A14|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A15|Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \A14|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \A15|Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \A15|mulB|Xout~0_combout\ : std_logic;
SIGNAL \A15|Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \A15|Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \control~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_control <= control;
res <= ww_res;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(2),
	combout => \control~combout\(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(1),
	combout => \control~combout\(1));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_control(0),
	combout => \control~combout\(0));

-- Location: LC_X3_Y2_N7
\A0|Output_Mux|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \A0|Output_Mux|Mux0~3_combout\ = (\control~combout\(1) & (\b~combout\(0) $ (((!\control~combout\(0)) # (!\control~combout\(2)))))) # (!\control~combout\(1) & ((\b~combout\(0) & (!\control~combout\(2))) # (!\b~combout\(0) & ((\control~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9734",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \b~combout\(0),
	datac => \control~combout\(1),
	datad => \control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A0|Output_Mux|Mux0~3_combout\);

-- Location: LC_X3_Y2_N2
\A0|Output_Mux|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \A0|Output_Mux|Mux0~2_combout\ = (\control~combout\(2) & (\control~combout\(1) $ (((\control~combout\(0)) # (!\b~combout\(0)))))) # (!\control~combout\(2) & (\b~combout\(0) & ((\control~combout\(1)) # (\control~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \b~combout\(0),
	datac => \control~combout\(1),
	datad => \control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A0|Output_Mux|Mux0~2_combout\);

-- Location: LC_X3_Y2_N5
\A0|Output_Mux|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \A0|Output_Mux|Mux0~4_combout\ = ((\a~combout\(0) & (\A0|Output_Mux|Mux0~3_combout\)) # (!\a~combout\(0) & ((\A0|Output_Mux|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datac => \A0|Output_Mux|Mux0~3_combout\,
	datad => \A0|Output_Mux|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A0|Output_Mux|Mux0~4_combout\);

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X3_Y2_N3
\A1|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A1|Adder_1bit|sum~0_combout\ = \a~combout\(1) $ (((!\control~combout\(1) & (\control~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \a~combout\(1),
	datac => \control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|Adder_1bit|sum~0_combout\);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LC_X3_Y2_N9
\A1|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A1|mulB|Xout~0_combout\ = \b~combout\(1) $ (((\control~combout\(2) & (!\control~combout\(1))) # (!\control~combout\(2) & (\control~combout\(1) & \control~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \b~combout\(1),
	datac => \control~combout\(1),
	datad => \control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|mulB|Xout~0_combout\);

-- Location: LC_X6_Y1_N2
\C0|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \C0|Mux1~0_combout\ = ((\control~combout\(0) & ((!\control~combout\(1)))) # (!\control~combout\(0) & (\control~combout\(2) & \control~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(0),
	datac => \control~combout\(2),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|Mux1~0_combout\);

-- Location: LC_X3_Y2_N8
\A0|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A0|Adder_1bit|cout~0_combout\ = (\b~combout\(0) & (\a~combout\(0) & ((\control~combout\(1)) # (!\control~combout\(2))))) # (!\b~combout\(0) & ((\control~combout\(1) & (!\control~combout\(2))) # (!\control~combout\(1) & (\control~combout\(2) & 
-- !\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8e12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \b~combout\(0),
	datac => \control~combout\(2),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A0|Adder_1bit|cout~0_combout\);

-- Location: LC_X3_Y2_N4
\A0|Adder_1bit|cout~1\ : maxv_lcell
-- Equation(s):
-- \A0|Adder_1bit|cout~1_combout\ = (\A0|Adder_1bit|cout~0_combout\ & ((\b~combout\(0)) # ((\control~combout\(0)) # (!\control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Adder_1bit|cout~0_combout\,
	datab => \b~combout\(0),
	datac => \control~combout\(1),
	datad => \control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A0|Adder_1bit|cout~1_combout\);

-- Location: LC_X6_Y1_N4
\C0|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \C0|Mux0~0_combout\ = (((\control~combout\(0) & \control~combout\(2))) # (!\control~combout\(1)))

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
	datab => \control~combout\(0),
	datac => \control~combout\(2),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|Mux0~0_combout\);

-- Location: LC_X3_Y2_N6
\A1|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A1|Output_Mux|Mux0~0_combout\ = ((\C0|Mux1~0_combout\ & ((\C0|Mux0~0_combout\))) # (!\C0|Mux1~0_combout\ & (\A0|Adder_1bit|cout~1_combout\ & !\C0|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C0|Mux1~0_combout\,
	datac => \A0|Adder_1bit|cout~1_combout\,
	datad => \C0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|Output_Mux|Mux0~0_combout\);

-- Location: LC_X3_Y2_N0
\A1|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A1|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A1|Adder_1bit|sum~0_combout\ & ((\A1|mulB|Xout~0_combout\) # (\A1|Output_Mux|Mux0~0_combout\))) # (!\A1|Adder_1bit|sum~0_combout\ & (\A1|mulB|Xout~0_combout\ & \A1|Output_Mux|Mux0~0_combout\)))) # 
-- (!\C0|Mux0~0_combout\ & (\A1|Adder_1bit|sum~0_combout\ $ (\A1|mulB|Xout~0_combout\ $ (\A1|Output_Mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Adder_1bit|sum~0_combout\,
	datab => \A1|mulB|Xout~0_combout\,
	datac => \A1|Output_Mux|Mux0~0_combout\,
	datad => \C0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|Output_Mux|Mux0~1_combout\);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X5_Y2_N3
\A2|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A2|Adder_1bit|sum~0_combout\ = (\a~combout\(2) $ (((\control~combout\(2) & !\control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f03c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datac => \a~combout\(2),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|Adder_1bit|sum~0_combout\);

-- Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X5_Y2_N2
\A2|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A2|mulB|Xout~0_combout\ = \b~combout\(2) $ (((\control~combout\(2) & ((!\control~combout\(1)))) # (!\control~combout\(2) & (\control~combout\(0) & \control~combout\(1)))))

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
	dataa => \b~combout\(2),
	datab => \control~combout\(2),
	datac => \control~combout\(0),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|mulB|Xout~0_combout\);

-- Location: LC_X2_Y2_N5
\C0|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \C0|Mux3~0_combout\ = ((\control~combout\(2) & ((!\control~combout\(1)))) # (!\control~combout\(2) & (\control~combout\(0) & \control~combout\(1))))

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
	datab => \control~combout\(0),
	datac => \control~combout\(2),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|Mux3~0_combout\);

-- Location: LC_X3_Y2_N1
\A1|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|Adder_1bit|cout~0_combout\ = (\A0|Adder_1bit|cout~1_combout\ & ((\A1|Adder_1bit|sum~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(1))))) # (!\A0|Adder_1bit|cout~1_combout\ & (\A1|Adder_1bit|sum~0_combout\ & (\C0|Mux3~0_combout\ $ 
-- (\b~combout\(1)))))

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
	dataa => \C0|Mux3~0_combout\,
	datab => \b~combout\(1),
	datac => \A0|Adder_1bit|cout~1_combout\,
	datad => \A1|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|Adder_1bit|cout~0_combout\);

-- Location: LC_X5_Y2_N9
\A2|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A2|Output_Mux|Mux0~0_combout\ = (\C0|Mux0~0_combout\ & (((\C0|Mux1~0_combout\)))) # (!\C0|Mux0~0_combout\ & (\A1|Adder_1bit|cout~0_combout\ & (!\C0|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Mux0~0_combout\,
	datab => \A1|Adder_1bit|cout~0_combout\,
	datac => \C0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|Output_Mux|Mux0~0_combout\);

-- Location: LC_X5_Y2_N0
\A2|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A2|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A2|Adder_1bit|sum~0_combout\ & ((\A2|mulB|Xout~0_combout\) # (\A2|Output_Mux|Mux0~0_combout\))) # (!\A2|Adder_1bit|sum~0_combout\ & (\A2|mulB|Xout~0_combout\ & \A2|Output_Mux|Mux0~0_combout\)))) # 
-- (!\C0|Mux0~0_combout\ & (\A2|Adder_1bit|sum~0_combout\ $ (\A2|mulB|Xout~0_combout\ $ (\A2|Output_Mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Adder_1bit|sum~0_combout\,
	datab => \A2|mulB|Xout~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A2|Output_Mux|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|Output_Mux|Mux0~1_combout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X5_Y2_N8
\A3|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A3|Adder_1bit|sum~0_combout\ = (\a~combout\(3) $ (((\control~combout\(2) & !\control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f03c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datac => \a~combout\(3),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|Adder_1bit|sum~0_combout\);

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X5_Y2_N7
\A3|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A3|mulB|Xout~0_combout\ = \b~combout\(3) $ (((\control~combout\(2) & ((!\control~combout\(1)))) # (!\control~combout\(2) & (\control~combout\(0) & \control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d23c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(0),
	datab => \control~combout\(2),
	datac => \b~combout\(3),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|mulB|Xout~0_combout\);

-- Location: LC_X5_Y2_N1
\A2|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A2|Adder_1bit|cout~0_combout\ = (\A1|Adder_1bit|cout~0_combout\ & ((\A2|Adder_1bit|sum~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(2))))) # (!\A1|Adder_1bit|cout~0_combout\ & (\A2|Adder_1bit|sum~0_combout\ & (\C0|Mux3~0_combout\ $ 
-- (\b~combout\(2)))))

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
	dataa => \C0|Mux3~0_combout\,
	datab => \A1|Adder_1bit|cout~0_combout\,
	datac => \b~combout\(2),
	datad => \A2|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A2|Adder_1bit|cout~0_combout\);

-- Location: LC_X5_Y2_N4
\A3|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A3|Output_Mux|Mux0~0_combout\ = (\C0|Mux0~0_combout\ & (((\C0|Mux1~0_combout\)))) # (!\C0|Mux0~0_combout\ & (((!\C0|Mux1~0_combout\ & \A2|Adder_1bit|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Mux0~0_combout\,
	datac => \C0|Mux1~0_combout\,
	datad => \A2|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|Output_Mux|Mux0~0_combout\);

-- Location: LC_X5_Y2_N5
\A3|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A3|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A3|Adder_1bit|sum~0_combout\ & ((\A3|mulB|Xout~0_combout\) # (\A3|Output_Mux|Mux0~0_combout\))) # (!\A3|Adder_1bit|sum~0_combout\ & (\A3|mulB|Xout~0_combout\ & \A3|Output_Mux|Mux0~0_combout\)))) # 
-- (!\C0|Mux0~0_combout\ & (\A3|Adder_1bit|sum~0_combout\ $ (\A3|mulB|Xout~0_combout\ $ (\A3|Output_Mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Adder_1bit|sum~0_combout\,
	datab => \A3|mulB|Xout~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A3|Output_Mux|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|Output_Mux|Mux0~1_combout\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LC_X5_Y1_N3
\A4|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A4|mulB|Xout~0_combout\ = \b~combout\(4) $ (((\control~combout\(2) & (!\control~combout\(1))) # (!\control~combout\(2) & (\control~combout\(1) & \control~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9d62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \control~combout\(1),
	datac => \control~combout\(0),
	datad => \b~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|mulB|Xout~0_combout\);

-- Location: LC_X5_Y2_N6
\A3|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A3|Adder_1bit|cout~0_combout\ = (\A2|Adder_1bit|cout~0_combout\ & ((\A3|Adder_1bit|sum~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(3))))) # (!\A2|Adder_1bit|cout~0_combout\ & (\A3|Adder_1bit|sum~0_combout\ & (\C0|Mux3~0_combout\ $ 
-- (\b~combout\(3)))))

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
	dataa => \C0|Mux3~0_combout\,
	datab => \A2|Adder_1bit|cout~0_combout\,
	datac => \b~combout\(3),
	datad => \A3|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A3|Adder_1bit|cout~0_combout\);

-- Location: LC_X5_Y1_N9
\A4|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A4|Output_Mux|Mux0~0_combout\ = ((\C0|Mux1~0_combout\ & ((\C0|Mux0~0_combout\))) # (!\C0|Mux1~0_combout\ & (\A3|Adder_1bit|cout~0_combout\ & !\C0|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A3|Adder_1bit|cout~0_combout\,
	datac => \C0|Mux1~0_combout\,
	datad => \C0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Output_Mux|Mux0~0_combout\);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LC_X5_Y1_N5
\A4|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A4|Adder_1bit|sum~0_combout\ = (\a~combout\(4) $ (((!\control~combout\(1) & \control~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(1),
	datac => \control~combout\(2),
	datad => \a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Adder_1bit|sum~0_combout\);

-- Location: LC_X5_Y1_N6
\A4|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A4|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A4|mulB|Xout~0_combout\ & ((\A4|Output_Mux|Mux0~0_combout\) # (\A4|Adder_1bit|sum~0_combout\))) # (!\A4|mulB|Xout~0_combout\ & (\A4|Output_Mux|Mux0~0_combout\ & \A4|Adder_1bit|sum~0_combout\)))) # 
-- (!\C0|Mux0~0_combout\ & (\A4|mulB|Xout~0_combout\ $ (\A4|Output_Mux|Mux0~0_combout\ $ (\A4|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A4|mulB|Xout~0_combout\,
	datab => \A4|Output_Mux|Mux0~0_combout\,
	datac => \A4|Adder_1bit|sum~0_combout\,
	datad => \C0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Output_Mux|Mux0~1_combout\);

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LC_X5_Y1_N8
\A5|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A5|Adder_1bit|sum~0_combout\ = (\a~combout\(5) $ (((!\control~combout\(1) & \control~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(1),
	datac => \control~combout\(2),
	datad => \a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|Adder_1bit|sum~0_combout\);

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LC_X5_Y1_N0
\A5|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A5|mulB|Xout~0_combout\ = \b~combout\(5) $ (((\control~combout\(2) & (!\control~combout\(1))) # (!\control~combout\(2) & (\control~combout\(1) & \control~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9d62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \control~combout\(1),
	datac => \control~combout\(0),
	datad => \b~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|mulB|Xout~0_combout\);

-- Location: LC_X5_Y1_N7
\A4|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A4|Adder_1bit|cout~0_combout\ = (\A3|Adder_1bit|cout~0_combout\ & ((\A4|Adder_1bit|sum~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(4))))) # (!\A3|Adder_1bit|cout~0_combout\ & (\A4|Adder_1bit|sum~0_combout\ & (\C0|Mux3~0_combout\ $ 
-- (\b~combout\(4)))))

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
	dataa => \C0|Mux3~0_combout\,
	datab => \A3|Adder_1bit|cout~0_combout\,
	datac => \A4|Adder_1bit|sum~0_combout\,
	datad => \b~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Adder_1bit|cout~0_combout\);

-- Location: LC_X5_Y1_N4
\A5|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A5|Output_Mux|Mux0~0_combout\ = ((\C0|Mux1~0_combout\ & ((\C0|Mux0~0_combout\))) # (!\C0|Mux1~0_combout\ & (\A4|Adder_1bit|cout~0_combout\ & !\C0|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C0|Mux1~0_combout\,
	datac => \A4|Adder_1bit|cout~0_combout\,
	datad => \C0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|Output_Mux|Mux0~0_combout\);

-- Location: LC_X5_Y1_N1
\A5|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A5|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A5|Adder_1bit|sum~0_combout\ & ((\A5|mulB|Xout~0_combout\) # (\A5|Output_Mux|Mux0~0_combout\))) # (!\A5|Adder_1bit|sum~0_combout\ & (\A5|mulB|Xout~0_combout\ & \A5|Output_Mux|Mux0~0_combout\)))) # 
-- (!\C0|Mux0~0_combout\ & (\A5|Adder_1bit|sum~0_combout\ $ (\A5|mulB|Xout~0_combout\ $ (\A5|Output_Mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Adder_1bit|sum~0_combout\,
	datab => \A5|mulB|Xout~0_combout\,
	datac => \A5|Output_Mux|Mux0~0_combout\,
	datad => \C0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|Output_Mux|Mux0~1_combout\);

-- Location: LC_X5_Y1_N2
\A5|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A5|Adder_1bit|cout~0_combout\ = (\A4|Adder_1bit|cout~0_combout\ & ((\A5|Adder_1bit|sum~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(5))))) # (!\A4|Adder_1bit|cout~0_combout\ & (\A5|Adder_1bit|sum~0_combout\ & (\C0|Mux3~0_combout\ $ 
-- (\b~combout\(5)))))

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
	dataa => \C0|Mux3~0_combout\,
	datab => \b~combout\(5),
	datac => \A4|Adder_1bit|cout~0_combout\,
	datad => \A5|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A5|Adder_1bit|cout~0_combout\);

-- Location: LC_X2_Y1_N6
\A6|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A6|Output_Mux|Mux0~0_combout\ = (\C0|Mux0~0_combout\ & (((\C0|Mux1~0_combout\)))) # (!\C0|Mux0~0_combout\ & (((\A5|Adder_1bit|cout~0_combout\ & !\C0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Mux0~0_combout\,
	datac => \A5|Adder_1bit|cout~0_combout\,
	datad => \C0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|Output_Mux|Mux0~0_combout\);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LC_X2_Y1_N7
\A6|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A6|Adder_1bit|sum~0_combout\ = (\a~combout\(6) $ (((\control~combout\(2) & !\control~combout\(1)))))

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
	datab => \a~combout\(6),
	datac => \control~combout\(2),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|Adder_1bit|sum~0_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LC_X2_Y1_N9
\A6|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A6|mulB|Xout~0_combout\ = \b~combout\(6) $ (((\control~combout\(2) & ((!\control~combout\(1)))) # (!\control~combout\(2) & (\control~combout\(0) & \control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b45a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \control~combout\(0),
	datac => \b~combout\(6),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|mulB|Xout~0_combout\);

-- Location: LC_X2_Y1_N2
\A6|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A6|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A6|Output_Mux|Mux0~0_combout\ & ((\A6|Adder_1bit|sum~0_combout\) # (\A6|mulB|Xout~0_combout\))) # (!\A6|Output_Mux|Mux0~0_combout\ & (\A6|Adder_1bit|sum~0_combout\ & \A6|mulB|Xout~0_combout\)))) # 
-- (!\C0|Mux0~0_combout\ & (\A6|Output_Mux|Mux0~0_combout\ $ (\A6|Adder_1bit|sum~0_combout\ $ (\A6|mulB|Xout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A6|Output_Mux|Mux0~0_combout\,
	datab => \A6|Adder_1bit|sum~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A6|mulB|Xout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|Output_Mux|Mux0~1_combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LC_X2_Y1_N8
\A7|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A7|Adder_1bit|sum~0_combout\ = (\a~combout\(7) $ (((\control~combout\(2) & !\control~combout\(1)))))

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
	datab => \a~combout\(7),
	datac => \control~combout\(2),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|Adder_1bit|sum~0_combout\);

-- Location: LC_X2_Y1_N0
\A6|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A6|Adder_1bit|cout~0_combout\ = (\A5|Adder_1bit|cout~0_combout\ & ((\A6|Adder_1bit|sum~0_combout\) # (\b~combout\(6) $ (\C0|Mux3~0_combout\)))) # (!\A5|Adder_1bit|cout~0_combout\ & (\A6|Adder_1bit|sum~0_combout\ & (\b~combout\(6) $ 
-- (\C0|Mux3~0_combout\))))

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
	dataa => \A5|Adder_1bit|cout~0_combout\,
	datab => \A6|Adder_1bit|sum~0_combout\,
	datac => \b~combout\(6),
	datad => \C0|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6|Adder_1bit|cout~0_combout\);

-- Location: LC_X2_Y1_N1
\A7|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A7|Output_Mux|Mux0~0_combout\ = (\C0|Mux0~0_combout\ & (((\C0|Mux1~0_combout\)))) # (!\C0|Mux0~0_combout\ & (((\A6|Adder_1bit|cout~0_combout\ & !\C0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Mux0~0_combout\,
	datac => \A6|Adder_1bit|cout~0_combout\,
	datad => \C0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|Output_Mux|Mux0~0_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LC_X2_Y1_N3
\A7|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A7|mulB|Xout~0_combout\ = \b~combout\(7) $ (((\control~combout\(2) & ((!\control~combout\(1)))) # (!\control~combout\(2) & (\control~combout\(0) & \control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b45a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \control~combout\(0),
	datac => \b~combout\(7),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|mulB|Xout~0_combout\);

-- Location: LC_X2_Y1_N4
\A7|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A7|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A7|Adder_1bit|sum~0_combout\ & ((\A7|Output_Mux|Mux0~0_combout\) # (\A7|mulB|Xout~0_combout\))) # (!\A7|Adder_1bit|sum~0_combout\ & (\A7|Output_Mux|Mux0~0_combout\ & \A7|mulB|Xout~0_combout\)))) # 
-- (!\C0|Mux0~0_combout\ & (\A7|Adder_1bit|sum~0_combout\ $ (\A7|Output_Mux|Mux0~0_combout\ $ (\A7|mulB|Xout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A7|Adder_1bit|sum~0_combout\,
	datab => \A7|Output_Mux|Mux0~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A7|mulB|Xout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|Output_Mux|Mux0~1_combout\);

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: LC_X6_Y1_N7
\A8|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A8|mulB|Xout~0_combout\ = \b~combout\(8) $ (((\control~combout\(2) & ((!\control~combout\(1)))) # (!\control~combout\(2) & (\control~combout\(0) & \control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b45a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \control~combout\(0),
	datac => \b~combout\(8),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|mulB|Xout~0_combout\);

-- Location: LC_X2_Y1_N5
\A7|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A7|Adder_1bit|cout~0_combout\ = (\A7|Adder_1bit|sum~0_combout\ & ((\A6|Adder_1bit|cout~0_combout\) # (\b~combout\(7) $ (\C0|Mux3~0_combout\)))) # (!\A7|Adder_1bit|sum~0_combout\ & (\A6|Adder_1bit|cout~0_combout\ & (\b~combout\(7) $ 
-- (\C0|Mux3~0_combout\))))

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
	dataa => \A7|Adder_1bit|sum~0_combout\,
	datab => \A6|Adder_1bit|cout~0_combout\,
	datac => \b~combout\(7),
	datad => \C0|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A7|Adder_1bit|cout~0_combout\);

-- Location: LC_X6_Y1_N9
\A8|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A8|Output_Mux|Mux0~0_combout\ = ((\C0|Mux0~0_combout\ & ((\C0|Mux1~0_combout\))) # (!\C0|Mux0~0_combout\ & (\A7|Adder_1bit|cout~0_combout\ & !\C0|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A7|Adder_1bit|cout~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \C0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|Output_Mux|Mux0~0_combout\);

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: LC_X6_Y1_N8
\A8|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A8|Adder_1bit|sum~0_combout\ = \a~combout\(8) $ (((!\control~combout\(1) & (\control~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \a~combout\(8),
	datac => \control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|Adder_1bit|sum~0_combout\);

-- Location: LC_X6_Y1_N6
\A8|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A8|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A8|mulB|Xout~0_combout\ & ((\A8|Output_Mux|Mux0~0_combout\) # (\A8|Adder_1bit|sum~0_combout\))) # (!\A8|mulB|Xout~0_combout\ & (\A8|Output_Mux|Mux0~0_combout\ & \A8|Adder_1bit|sum~0_combout\)))) # 
-- (!\C0|Mux0~0_combout\ & (\A8|mulB|Xout~0_combout\ $ (\A8|Output_Mux|Mux0~0_combout\ $ (\A8|Adder_1bit|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A8|mulB|Xout~0_combout\,
	datab => \A8|Output_Mux|Mux0~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A8|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|Output_Mux|Mux0~1_combout\);

-- Location: LC_X6_Y1_N5
\A8|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A8|Adder_1bit|cout~0_combout\ = (\A7|Adder_1bit|cout~0_combout\ & ((\A8|Adder_1bit|sum~0_combout\) # (\b~combout\(8) $ (\C0|Mux3~0_combout\)))) # (!\A7|Adder_1bit|cout~0_combout\ & (\A8|Adder_1bit|sum~0_combout\ & (\b~combout\(8) $ 
-- (\C0|Mux3~0_combout\))))

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
	dataa => \b~combout\(8),
	datab => \A7|Adder_1bit|cout~0_combout\,
	datac => \C0|Mux3~0_combout\,
	datad => \A8|Adder_1bit|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A8|Adder_1bit|cout~0_combout\);

-- Location: LC_X6_Y2_N7
\A9|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A9|Output_Mux|Mux0~0_combout\ = ((\C0|Mux1~0_combout\ & (\C0|Mux0~0_combout\)) # (!\C0|Mux1~0_combout\ & (!\C0|Mux0~0_combout\ & \A8|Adder_1bit|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C0|Mux1~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A8|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|Output_Mux|Mux0~0_combout\);

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: LC_X6_Y2_N0
\A9|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A9|Adder_1bit|sum~0_combout\ = \a~combout\(9) $ (((!\control~combout\(1) & (\control~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \control~combout\(2),
	datac => \a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|Adder_1bit|sum~0_combout\);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LC_X6_Y2_N1
\A9|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A9|mulB|Xout~0_combout\ = \b~combout\(9) $ (((\control~combout\(1) & (\control~combout\(0) & !\control~combout\(2))) # (!\control~combout\(1) & ((\control~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a758",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \control~combout\(0),
	datac => \control~combout\(2),
	datad => \b~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|mulB|Xout~0_combout\);

-- Location: LC_X6_Y2_N8
\A9|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A9|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A9|Output_Mux|Mux0~0_combout\ & ((\A9|Adder_1bit|sum~0_combout\) # (\A9|mulB|Xout~0_combout\))) # (!\A9|Output_Mux|Mux0~0_combout\ & (\A9|Adder_1bit|sum~0_combout\ & \A9|mulB|Xout~0_combout\)))) # 
-- (!\C0|Mux0~0_combout\ & (\A9|Output_Mux|Mux0~0_combout\ $ (\A9|Adder_1bit|sum~0_combout\ $ (\A9|mulB|Xout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e994",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Mux0~0_combout\,
	datab => \A9|Output_Mux|Mux0~0_combout\,
	datac => \A9|Adder_1bit|sum~0_combout\,
	datad => \A9|mulB|Xout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|Output_Mux|Mux0~1_combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LC_X6_Y2_N6
\A10|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A10|Adder_1bit|sum~0_combout\ = (\a~combout\(10) $ (((!\control~combout\(1) & \control~combout\(2)))))

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
	dataa => \control~combout\(1),
	datac => \control~combout\(2),
	datad => \a~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|Adder_1bit|sum~0_combout\);

-- Location: LC_X6_Y2_N4
\A9|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A9|Adder_1bit|cout~0_combout\ = (\A8|Adder_1bit|cout~0_combout\ & ((\A9|Adder_1bit|sum~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(9))))) # (!\A8|Adder_1bit|cout~0_combout\ & (\A9|Adder_1bit|sum~0_combout\ & (\C0|Mux3~0_combout\ $ 
-- (\b~combout\(9)))))

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
	dataa => \C0|Mux3~0_combout\,
	datab => \A8|Adder_1bit|cout~0_combout\,
	datac => \A9|Adder_1bit|sum~0_combout\,
	datad => \b~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A9|Adder_1bit|cout~0_combout\);

-- Location: LC_X6_Y2_N9
\A10|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A10|Output_Mux|Mux0~0_combout\ = ((\C0|Mux0~0_combout\ & ((\C0|Mux1~0_combout\))) # (!\C0|Mux0~0_combout\ & (\A9|Adder_1bit|cout~0_combout\ & !\C0|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A9|Adder_1bit|cout~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \C0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|Output_Mux|Mux0~0_combout\);

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: LC_X6_Y2_N2
\A10|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A10|mulB|Xout~0_combout\ = \b~combout\(10) $ (((\control~combout\(1) & (\control~combout\(0) & !\control~combout\(2))) # (!\control~combout\(1) & ((\control~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a758",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \control~combout\(0),
	datac => \control~combout\(2),
	datad => \b~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|mulB|Xout~0_combout\);

-- Location: LC_X6_Y2_N5
\A10|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A10|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A10|Adder_1bit|sum~0_combout\ & ((\A10|Output_Mux|Mux0~0_combout\) # (\A10|mulB|Xout~0_combout\))) # (!\A10|Adder_1bit|sum~0_combout\ & (\A10|Output_Mux|Mux0~0_combout\ & 
-- \A10|mulB|Xout~0_combout\)))) # (!\C0|Mux0~0_combout\ & (\A10|Adder_1bit|sum~0_combout\ $ (\A10|Output_Mux|Mux0~0_combout\ $ (\A10|mulB|Xout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A10|Adder_1bit|sum~0_combout\,
	datab => \A10|Output_Mux|Mux0~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A10|mulB|Xout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|Output_Mux|Mux0~1_combout\);

-- Location: LC_X6_Y2_N3
\A10|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A10|Adder_1bit|cout~0_combout\ = (\A10|Adder_1bit|sum~0_combout\ & ((\A9|Adder_1bit|cout~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(10))))) # (!\A10|Adder_1bit|sum~0_combout\ & (\A9|Adder_1bit|cout~0_combout\ & (\C0|Mux3~0_combout\ $ 
-- (\b~combout\(10)))))

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
	dataa => \A10|Adder_1bit|sum~0_combout\,
	datab => \C0|Mux3~0_combout\,
	datac => \A9|Adder_1bit|cout~0_combout\,
	datad => \b~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A10|Adder_1bit|cout~0_combout\);

-- Location: LC_X6_Y3_N2
\A11|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A11|Output_Mux|Mux0~0_combout\ = (\C0|Mux0~0_combout\ & (\C0|Mux1~0_combout\)) # (!\C0|Mux0~0_combout\ & (!\C0|Mux1~0_combout\ & (\A10|Adder_1bit|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9898",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Mux0~0_combout\,
	datab => \C0|Mux1~0_combout\,
	datac => \A10|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|Output_Mux|Mux0~0_combout\);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LC_X6_Y3_N0
\A11|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A11|Adder_1bit|sum~0_combout\ = (\a~combout\(11) $ (((!\control~combout\(1) & \control~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \control~combout\(2),
	datad => \a~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|Adder_1bit|sum~0_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LC_X6_Y3_N3
\A11|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A11|mulB|Xout~0_combout\ = \b~combout\(11) $ (((\control~combout\(1) & (!\control~combout\(2) & \control~combout\(0))) # (!\control~combout\(1) & (\control~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9b64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \control~combout\(2),
	datac => \control~combout\(0),
	datad => \b~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|mulB|Xout~0_combout\);

-- Location: LC_X6_Y3_N5
\A11|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A11|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A11|Output_Mux|Mux0~0_combout\ & ((\A11|Adder_1bit|sum~0_combout\) # (\A11|mulB|Xout~0_combout\))) # (!\A11|Output_Mux|Mux0~0_combout\ & (\A11|Adder_1bit|sum~0_combout\ & 
-- \A11|mulB|Xout~0_combout\)))) # (!\C0|Mux0~0_combout\ & (\A11|Output_Mux|Mux0~0_combout\ $ (\A11|Adder_1bit|sum~0_combout\ $ (\A11|mulB|Xout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e994",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Mux0~0_combout\,
	datab => \A11|Output_Mux|Mux0~0_combout\,
	datac => \A11|Adder_1bit|sum~0_combout\,
	datad => \A11|mulB|Xout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|Output_Mux|Mux0~1_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: LC_X6_Y3_N4
\A12|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A12|Adder_1bit|sum~0_combout\ = (\a~combout\(12) $ (((!\control~combout\(1) & \control~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \control~combout\(2),
	datad => \a~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|Adder_1bit|sum~0_combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: LC_X6_Y3_N9
\A12|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A12|mulB|Xout~0_combout\ = \b~combout\(12) $ (((\control~combout\(1) & (!\control~combout\(2) & \control~combout\(0))) # (!\control~combout\(1) & (\control~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9b64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \control~combout\(2),
	datac => \control~combout\(0),
	datad => \b~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|mulB|Xout~0_combout\);

-- Location: LC_X6_Y3_N7
\A11|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A11|Adder_1bit|cout~0_combout\ = (\A10|Adder_1bit|cout~0_combout\ & ((\A11|Adder_1bit|sum~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(11))))) # (!\A10|Adder_1bit|cout~0_combout\ & (\A11|Adder_1bit|sum~0_combout\ & (\C0|Mux3~0_combout\ $ 
-- (\b~combout\(11)))))

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
	dataa => \A10|Adder_1bit|cout~0_combout\,
	datab => \A11|Adder_1bit|sum~0_combout\,
	datac => \C0|Mux3~0_combout\,
	datad => \b~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A11|Adder_1bit|cout~0_combout\);

-- Location: LC_X6_Y3_N8
\A12|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A12|Output_Mux|Mux0~0_combout\ = (\C0|Mux0~0_combout\ & (((\C0|Mux1~0_combout\)))) # (!\C0|Mux0~0_combout\ & (\A11|Adder_1bit|cout~0_combout\ & (!\C0|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Mux0~0_combout\,
	datab => \A11|Adder_1bit|cout~0_combout\,
	datac => \C0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|Output_Mux|Mux0~0_combout\);

-- Location: LC_X6_Y3_N1
\A12|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A12|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A12|Adder_1bit|sum~0_combout\ & ((\A12|mulB|Xout~0_combout\) # (\A12|Output_Mux|Mux0~0_combout\))) # (!\A12|Adder_1bit|sum~0_combout\ & (\A12|mulB|Xout~0_combout\ & 
-- \A12|Output_Mux|Mux0~0_combout\)))) # (!\C0|Mux0~0_combout\ & (\A12|Adder_1bit|sum~0_combout\ $ (\A12|mulB|Xout~0_combout\ $ (\A12|Output_Mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A12|Adder_1bit|sum~0_combout\,
	datab => \A12|mulB|Xout~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A12|Output_Mux|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|Output_Mux|Mux0~1_combout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LC_X3_Y3_N8
\A13|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A13|mulB|Xout~0_combout\ = \b~combout\(13) $ (((\control~combout\(2) & ((!\control~combout\(1)))) # (!\control~combout\(2) & (\control~combout\(0) & \control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b45a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \control~combout\(0),
	datac => \b~combout\(13),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|mulB|Xout~0_combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LC_X3_Y3_N7
\A13|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A13|Adder_1bit|sum~0_combout\ = (\a~combout\(13) $ (((\control~combout\(2) & !\control~combout\(1)))))

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
	datab => \a~combout\(13),
	datac => \control~combout\(2),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|Adder_1bit|sum~0_combout\);

-- Location: LC_X6_Y3_N6
\A12|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A12|Adder_1bit|cout~0_combout\ = (\A12|Adder_1bit|sum~0_combout\ & ((\A11|Adder_1bit|cout~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(12))))) # (!\A12|Adder_1bit|sum~0_combout\ & (\A11|Adder_1bit|cout~0_combout\ & (\C0|Mux3~0_combout\ $ 
-- (\b~combout\(12)))))

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
	dataa => \A12|Adder_1bit|sum~0_combout\,
	datab => \A11|Adder_1bit|cout~0_combout\,
	datac => \C0|Mux3~0_combout\,
	datad => \b~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A12|Adder_1bit|cout~0_combout\);

-- Location: LC_X3_Y3_N4
\A13|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A13|Output_Mux|Mux0~0_combout\ = ((\C0|Mux0~0_combout\ & (\C0|Mux1~0_combout\)) # (!\C0|Mux0~0_combout\ & (!\C0|Mux1~0_combout\ & \A12|Adder_1bit|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C0|Mux0~0_combout\,
	datac => \C0|Mux1~0_combout\,
	datad => \A12|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|Output_Mux|Mux0~0_combout\);

-- Location: LC_X3_Y3_N5
\A13|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A13|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A13|mulB|Xout~0_combout\ & ((\A13|Adder_1bit|sum~0_combout\) # (\A13|Output_Mux|Mux0~0_combout\))) # (!\A13|mulB|Xout~0_combout\ & (\A13|Adder_1bit|sum~0_combout\ & 
-- \A13|Output_Mux|Mux0~0_combout\)))) # (!\C0|Mux0~0_combout\ & (\A13|mulB|Xout~0_combout\ $ (\A13|Adder_1bit|sum~0_combout\ $ (\A13|Output_Mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A13|mulB|Xout~0_combout\,
	datab => \A13|Adder_1bit|sum~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A13|Output_Mux|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|Output_Mux|Mux0~1_combout\);

-- Location: LC_X3_Y3_N3
\A13|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A13|Adder_1bit|cout~0_combout\ = (\A13|Adder_1bit|sum~0_combout\ & ((\A12|Adder_1bit|cout~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(13))))) # (!\A13|Adder_1bit|sum~0_combout\ & (\A12|Adder_1bit|cout~0_combout\ & (\C0|Mux3~0_combout\ $ 
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
	dataa => \C0|Mux3~0_combout\,
	datab => \A13|Adder_1bit|sum~0_combout\,
	datac => \b~combout\(13),
	datad => \A12|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A13|Adder_1bit|cout~0_combout\);

-- Location: LC_X3_Y3_N6
\A14|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A14|Output_Mux|Mux0~0_combout\ = ((\C0|Mux0~0_combout\ & (\C0|Mux1~0_combout\)) # (!\C0|Mux0~0_combout\ & (!\C0|Mux1~0_combout\ & \A13|Adder_1bit|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C0|Mux0~0_combout\,
	datac => \C0|Mux1~0_combout\,
	datad => \A13|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|Output_Mux|Mux0~0_combout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LC_X3_Y3_N0
\A14|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A14|Adder_1bit|sum~0_combout\ = (\a~combout\(14) $ (((\control~combout\(2) & !\control~combout\(1)))))

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
	datab => \a~combout\(14),
	datac => \control~combout\(2),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|Adder_1bit|sum~0_combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LC_X3_Y3_N1
\A14|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A14|mulB|Xout~0_combout\ = \b~combout\(14) $ (((\control~combout\(2) & ((!\control~combout\(1)))) # (!\control~combout\(2) & (\control~combout\(0) & \control~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a65a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(14),
	datab => \control~combout\(0),
	datac => \control~combout\(2),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|mulB|Xout~0_combout\);

-- Location: LC_X3_Y3_N2
\A14|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A14|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A14|Output_Mux|Mux0~0_combout\ & ((\A14|Adder_1bit|sum~0_combout\) # (\A14|mulB|Xout~0_combout\))) # (!\A14|Output_Mux|Mux0~0_combout\ & (\A14|Adder_1bit|sum~0_combout\ & 
-- \A14|mulB|Xout~0_combout\)))) # (!\C0|Mux0~0_combout\ & (\A14|Output_Mux|Mux0~0_combout\ $ (\A14|Adder_1bit|sum~0_combout\ $ (\A14|mulB|Xout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A14|Output_Mux|Mux0~0_combout\,
	datab => \A14|Adder_1bit|sum~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A14|mulB|Xout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|Output_Mux|Mux0~1_combout\);

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: LC_X2_Y2_N6
\A15|Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \A15|Adder_1bit|sum~0_combout\ = (\a~combout\(15) $ (((\control~combout\(2) & !\control~combout\(1)))))

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
	datab => \a~combout\(15),
	datac => \control~combout\(2),
	datad => \control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|Adder_1bit|sum~0_combout\);

-- Location: LC_X3_Y3_N9
\A14|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A14|Adder_1bit|cout~0_combout\ = (\A13|Adder_1bit|cout~0_combout\ & ((\A14|Adder_1bit|sum~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(14))))) # (!\A13|Adder_1bit|cout~0_combout\ & (\A14|Adder_1bit|sum~0_combout\ & (\C0|Mux3~0_combout\ $ 
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
	dataa => \A13|Adder_1bit|cout~0_combout\,
	datab => \A14|Adder_1bit|sum~0_combout\,
	datac => \C0|Mux3~0_combout\,
	datad => \b~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A14|Adder_1bit|cout~0_combout\);

-- Location: LC_X2_Y2_N7
\A15|Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \A15|Output_Mux|Mux0~0_combout\ = (\C0|Mux1~0_combout\ & (((\C0|Mux0~0_combout\)))) # (!\C0|Mux1~0_combout\ & (\A14|Adder_1bit|cout~0_combout\ & (!\C0|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Mux1~0_combout\,
	datab => \A14|Adder_1bit|cout~0_combout\,
	datac => \C0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|Output_Mux|Mux0~0_combout\);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LC_X2_Y2_N8
\A15|mulB|Xout~0\ : maxv_lcell
-- Equation(s):
-- \A15|mulB|Xout~0_combout\ = \b~combout\(15) $ (((\control~combout\(1) & (!\control~combout\(2) & \control~combout\(0))) # (!\control~combout\(1) & (\control~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "969c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datab => \b~combout\(15),
	datac => \control~combout\(2),
	datad => \control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|mulB|Xout~0_combout\);

-- Location: LC_X2_Y2_N3
\A15|Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \A15|Output_Mux|Mux0~1_combout\ = (\C0|Mux0~0_combout\ & ((\A15|Adder_1bit|sum~0_combout\ & ((\A15|Output_Mux|Mux0~0_combout\) # (\A15|mulB|Xout~0_combout\))) # (!\A15|Adder_1bit|sum~0_combout\ & (\A15|Output_Mux|Mux0~0_combout\ & 
-- \A15|mulB|Xout~0_combout\)))) # (!\C0|Mux0~0_combout\ & (\A15|Adder_1bit|sum~0_combout\ $ (\A15|Output_Mux|Mux0~0_combout\ $ (\A15|mulB|Xout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A15|Adder_1bit|sum~0_combout\,
	datab => \A15|Output_Mux|Mux0~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A15|mulB|Xout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|Output_Mux|Mux0~1_combout\);

-- Location: LC_X2_Y2_N4
\A15|Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \A15|Adder_1bit|cout~0_combout\ = (\A15|Adder_1bit|sum~0_combout\ & ((\A14|Adder_1bit|cout~0_combout\) # (\C0|Mux3~0_combout\ $ (\b~combout\(15))))) # (!\A15|Adder_1bit|sum~0_combout\ & (\A14|Adder_1bit|cout~0_combout\ & (\C0|Mux3~0_combout\ $ 
-- (\b~combout\(15)))))

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
	dataa => \C0|Mux3~0_combout\,
	datab => \b~combout\(15),
	datac => \A15|Adder_1bit|sum~0_combout\,
	datad => \A14|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A15|Adder_1bit|cout~0_combout\);

-- Location: LC_X2_Y2_N2
\Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (!\C0|Mux1~0_combout\ & (!\C0|Mux0~0_combout\ & (\A14|Adder_1bit|cout~0_combout\ $ (\A15|Adder_1bit|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0104",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Mux1~0_combout\,
	datab => \A14|Adder_1bit|cout~0_combout\,
	datac => \C0|Mux0~0_combout\,
	datad => \A15|Adder_1bit|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A0|Output_Mux|Mux0~4_combout\,
	oe => VCC,
	padio => ww_res(0));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A1|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(1));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A2|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(2));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A3|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A4|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(4));

-- Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A5|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(5));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A6|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A7|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(7));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A8|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(8));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A9|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(9));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A10|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(10));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A11|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(11));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A12|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(12));

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A13|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(13));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A14|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(14));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A15|Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res(15));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\overflow~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~0_combout\,
	oe => VCC,
	padio => ww_overflow);
END structure;


