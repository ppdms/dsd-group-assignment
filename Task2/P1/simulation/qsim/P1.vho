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

-- DATE "06/08/2023 12:53:03"

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

ENTITY 	alu IS
    PORT (
	cin : IN std_logic;
	a : IN std_logic;
	b : IN std_logic;
	s : IN std_logic_vector(0 TO 3);
	cout : OUT std_logic;
	res : OUT std_logic
	);
END alu;

-- Design Ports Information


ARCHITECTURE structure OF alu IS
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
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_s : std_logic_vector(0 TO 3);
SIGNAL ww_cout : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL \b~combout\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \a~combout\ : std_logic;
SIGNAL \Adder_1bit|sum~0_combout\ : std_logic;
SIGNAL \Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \Output_Mux|Mux0~2_combout\ : std_logic;
SIGNAL \s~combout\ : std_logic_vector(0 TO 3);

BEGIN

ww_cin <= cin;
ww_a <= a;
ww_b <= b;
ww_s <= s;
cout <= ww_cout;
res <= ww_res;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b,
	combout => \b~combout\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a,
	combout => \a~combout\);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(0),
	combout => \s~combout\(0));

-- Location: LC_X5_Y2_N6
\Adder_1bit|sum~0\ : maxv_lcell
-- Equation(s):
-- \Adder_1bit|sum~0_combout\ = ((\a~combout\ $ (\s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\,
	datad => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Adder_1bit|sum~0_combout\);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(1),
	combout => \s~combout\(1));

-- Location: LC_X5_Y2_N4
\Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \Adder_1bit|cout~0_combout\ = (\cin~combout\ & ((\Adder_1bit|sum~0_combout\) # (\b~combout\ $ (\s~combout\(1))))) # (!\cin~combout\ & (\Adder_1bit|sum~0_combout\ & (\b~combout\ $ (\s~combout\(1)))))

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
	dataa => \b~combout\,
	datab => \cin~combout\,
	datac => \Adder_1bit|sum~0_combout\,
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Adder_1bit|cout~0_combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(2),
	combout => \s~combout\(2));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(3),
	combout => \s~combout\(3));

-- Location: LC_X5_Y2_N5
\Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Output_Mux|Mux0~0_combout\ = (\s~combout\(3) & (\a~combout\ $ (((\s~combout\(0)))))) # (!\s~combout\(3) & (((\cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5cac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\,
	datab => \cin~combout\,
	datac => \s~combout\(3),
	datad => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Output_Mux|Mux0~0_combout\);

-- Location: LC_X5_Y2_N2
\Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \Output_Mux|Mux0~1_combout\ = \b~combout\ $ (\s~combout\(1) $ (((\s~combout\(2) & \Output_Mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\,
	datab => \s~combout\(2),
	datac => \Output_Mux|Mux0~0_combout\,
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Output_Mux|Mux0~1_combout\);

-- Location: LC_X5_Y2_N8
\Output_Mux|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \Output_Mux|Mux0~2_combout\ = (\Output_Mux|Mux0~1_combout\ & ((\s~combout\(3)) # (\Adder_1bit|sum~0_combout\ $ (\s~combout\(2))))) # (!\Output_Mux|Mux0~1_combout\ & (\Adder_1bit|sum~0_combout\ & (\s~combout\(3) $ (\s~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder_1bit|sum~0_combout\,
	datab => \Output_Mux|Mux0~1_combout\,
	datac => \s~combout\(3),
	datad => \s~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Output_Mux|Mux0~2_combout\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Adder_1bit|cout~0_combout\,
	oe => VCC,
	padio => ww_cout);

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Output_Mux|Mux0~2_combout\,
	oe => VCC,
	padio => ww_res);
END structure;


