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

-- DATE "05/01/2023 16:54:08"

-- 
-- Device: Altera 5M40ZE64C4 Package EQFP64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	adder IS
    PORT (
	cin : IN std_logic;
	x3 : IN std_logic;
	x2 : IN std_logic;
	x1 : IN std_logic;
	x0 : IN std_logic;
	y3 : IN std_logic;
	y2 : IN std_logic;
	y1 : IN std_logic;
	y0 : IN std_logic;
	s3 : OUT std_logic;
	s2 : OUT std_logic;
	s1 : OUT std_logic;
	s0 : OUT std_logic;
	cout : OUT std_logic
	);
END adder;

-- Design Ports Information


ARCHITECTURE structure OF adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x0 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \x3~combout\ : std_logic;
SIGNAL \y2~combout\ : std_logic;
SIGNAL \x2~combout\ : std_logic;
SIGNAL \x1~combout\ : std_logic;
SIGNAL \y1~combout\ : std_logic;
SIGNAL \x0~combout\ : std_logic;
SIGNAL \y0~combout\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \stage0|cout~0_combout\ : std_logic;
SIGNAL \stage1|cout~0_combout\ : std_logic;
SIGNAL \stage2|cout~0_combout\ : std_logic;
SIGNAL \y3~combout\ : std_logic;
SIGNAL \stage3|s~combout\ : std_logic;
SIGNAL \stage2|s~combout\ : std_logic;
SIGNAL \stage1|s~combout\ : std_logic;
SIGNAL \stage0|s~0_combout\ : std_logic;
SIGNAL \stage3|cout~0_combout\ : std_logic;

BEGIN

ww_cin <= cin;
ww_x3 <= x3;
ww_x2 <= x2;
ww_x1 <= x1;
ww_x0 <= x0;
ww_y3 <= y3;
ww_y2 <= y2;
ww_y1 <= y1;
ww_y0 <= y0;
s3 <= ww_s3;
s2 <= ww_s2;
s1 <= ww_s1;
s0 <= ww_s0;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x3,
	combout => \x3~combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y2,
	combout => \y2~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x2,
	combout => \x2~combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x1,
	combout => \x1~combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y1,
	combout => \y1~combout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x0,
	combout => \x0~combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y0,
	combout => \y0~combout\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: LC_X4_Y1_N3
\stage0|cout~0\ : maxv_lcell
-- Equation(s):
-- \stage0|cout~0_combout\ = (\x0~combout\ & ((\y0~combout\) # ((\cin~combout\)))) # (!\x0~combout\ & (\y0~combout\ & ((\cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x0~combout\,
	datab => \y0~combout\,
	datad => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage0|cout~0_combout\);

-- Location: LC_X4_Y1_N2
\stage1|cout~0\ : maxv_lcell
-- Equation(s):
-- \stage1|cout~0_combout\ = (\x1~combout\ & (((\y1~combout\) # (\stage0|cout~0_combout\)))) # (!\x1~combout\ & (((\y1~combout\ & \stage0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\,
	datac => \y1~combout\,
	datad => \stage0|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage1|cout~0_combout\);

-- Location: LC_X4_Y1_N7
\stage2|cout~0\ : maxv_lcell
-- Equation(s):
-- \stage2|cout~0_combout\ = (\y2~combout\ & (((\x2~combout\) # (\stage1|cout~0_combout\)))) # (!\y2~combout\ & (((\x2~combout\ & \stage1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y2~combout\,
	datac => \x2~combout\,
	datad => \stage1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage2|cout~0_combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y3,
	combout => \y3~combout\);

-- Location: LC_X4_Y1_N9
\stage3|s\ : maxv_lcell
-- Equation(s):
-- \stage3|s~combout\ = (\x3~combout\ $ (\stage2|cout~0_combout\ $ (\y3~combout\)))

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
	datab => \x3~combout\,
	datac => \stage2|cout~0_combout\,
	datad => \y3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage3|s~combout\);

-- Location: LC_X4_Y1_N8
\stage2|s\ : maxv_lcell
-- Equation(s):
-- \stage2|s~combout\ = \y2~combout\ $ (((\x2~combout\ $ (\stage1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y2~combout\,
	datac => \x2~combout\,
	datad => \stage1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage2|s~combout\);

-- Location: LC_X4_Y1_N4
\stage1|s\ : maxv_lcell
-- Equation(s):
-- \stage1|s~combout\ = \x1~combout\ $ (((\y1~combout\ $ (\stage0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\,
	datac => \y1~combout\,
	datad => \stage0|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage1|s~combout\);

-- Location: LC_X4_Y1_N6
\stage0|s~0\ : maxv_lcell
-- Equation(s):
-- \stage0|s~0_combout\ = \x0~combout\ $ (\y0~combout\ $ (((\cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x0~combout\,
	datab => \y0~combout\,
	datad => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage0|s~0_combout\);

-- Location: LC_X4_Y1_N5
\stage3|cout~0\ : maxv_lcell
-- Equation(s):
-- \stage3|cout~0_combout\ = ((\x3~combout\ & ((\stage2|cout~0_combout\) # (\y3~combout\))) # (!\x3~combout\ & (\stage2|cout~0_combout\ & \y3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x3~combout\,
	datac => \stage2|cout~0_combout\,
	datad => \y3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stage3|cout~0_combout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stage3|s~combout\,
	oe => VCC,
	padio => ww_s3);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stage2|s~combout\,
	oe => VCC,
	padio => ww_s2);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stage1|s~combout\,
	oe => VCC,
	padio => ww_s1);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stage0|s~0_combout\,
	oe => VCC,
	padio => ww_s0);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stage3|cout~0_combout\,
	oe => VCC,
	padio => ww_cout);
END structure;


