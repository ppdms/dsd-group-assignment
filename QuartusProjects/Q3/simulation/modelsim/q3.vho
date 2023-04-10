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

-- DATE "04/10/2023 21:18:35"

-- 
-- Device: Altera 5M40ZM64C4 Package MBGA64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	q3 IS
    PORT (
	f : OUT std_logic;
	x1 : IN std_logic;
	x2 : IN std_logic;
	x3 : IN std_logic;
	x5 : IN std_logic;
	x4 : IN std_logic
	);
END q3;

-- Design Ports Information


ARCHITECTURE structure OF q3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_x5 : std_logic;
SIGNAL ww_x4 : std_logic;
SIGNAL \x1~combout\ : std_logic;
SIGNAL \x2~combout\ : std_logic;
SIGNAL \x5~combout\ : std_logic;
SIGNAL \x3~combout\ : std_logic;
SIGNAL \finalsum~1_combout\ : std_logic;
SIGNAL \finalsum~0_combout\ : std_logic;
SIGNAL \x4~combout\ : std_logic;
SIGNAL \finalsum~2_combout\ : std_logic;

BEGIN

f <= ww_f;
ww_x1 <= x1;
ww_x2 <= x2;
ww_x3 <= x3;
ww_x5 <= x5;
ww_x4 <= x4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x1,
	combout => \x1~combout\);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x2,
	combout => \x2~combout\);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x5~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x5,
	combout => \x5~combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x3,
	combout => \x3~combout\);

-- Location: LC_X5_Y2_N2
\finalsum~1\ : maxv_lcell
-- Equation(s):
-- \finalsum~1_combout\ = (\x1~combout\ & (\x5~combout\ & (\x2~combout\ $ (\x3~combout\)))) # (!\x1~combout\ & ((\x2~combout\ & ((!\x3~combout\))) # (!\x2~combout\ & (\x5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\,
	datab => \x2~combout\,
	datac => \x5~combout\,
	datad => \x3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalsum~1_combout\);

-- Location: LC_X5_Y2_N4
\finalsum~0\ : maxv_lcell
-- Equation(s):
-- \finalsum~0_combout\ = (\x1~combout\ & ((\x2~combout\) # ((!\x5~combout\)))) # (!\x1~combout\ & (\x3~combout\ & (\x2~combout\ $ (!\x5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cb8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\,
	datab => \x2~combout\,
	datac => \x5~combout\,
	datad => \x3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalsum~0_combout\);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x4,
	combout => \x4~combout\);

-- Location: LC_X5_Y2_N5
\finalsum~2\ : maxv_lcell
-- Equation(s):
-- \finalsum~2_combout\ = (\finalsum~0_combout\ $ (((!\x4~combout\) # (!\finalsum~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c30f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \finalsum~1_combout\,
	datac => \finalsum~0_combout\,
	datad => \x4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \finalsum~2_combout\);

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \finalsum~2_combout\,
	oe => VCC,
	padio => ww_f);
END structure;


