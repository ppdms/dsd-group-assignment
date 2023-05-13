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

-- DATE "05/13/2023 12:07:39"

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
	s : IN std_logic_vector(3 DOWNTO 0);
	cout : BUFFER std_logic;
	res : BUFFER std_logic
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
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL \a~combout\ : std_logic;
SIGNAL \mulA|Xout~0_combout\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \b~combout\ : std_logic;
SIGNAL \Adder_1bit|cout~0_combout\ : std_logic;
SIGNAL \Output_Mux|Mux0~0_combout\ : std_logic;
SIGNAL \Output_Mux|Mux0~1_combout\ : std_logic;
SIGNAL \s~combout\ : std_logic_vector(3 DOWNTO 0);

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

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a,
	combout => \a~combout\);

-- Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(0),
	combout => \s~combout\(0));

-- Location: LC_X4_Y1_N3
\mulA|Xout~0\ : maxv_lcell
-- Equation(s):
-- \mulA|Xout~0_combout\ = (\a~combout\ $ ((\s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\,
	datac => \s~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mulA|Xout~0_combout\);

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b,
	combout => \b~combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(1),
	combout => \s~combout\(1));

-- Location: LC_X4_Y1_N6
\Adder_1bit|cout~0\ : maxv_lcell
-- Equation(s):
-- \Adder_1bit|cout~0_combout\ = (\mulA|Xout~0_combout\ & ((\cin~combout\) # (\b~combout\ $ (\s~combout\(1))))) # (!\mulA|Xout~0_combout\ & (\cin~combout\ & (\b~combout\ $ (\s~combout\(1)))))

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
	dataa => \mulA|Xout~0_combout\,
	datab => \cin~combout\,
	datac => \b~combout\,
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Adder_1bit|cout~0_combout\);

-- Location: LC_X4_Y1_N4
\Output_Mux|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Output_Mux|Mux0~0_combout\ = ((\s~combout\(0) & ((!\s~combout\(1)) # (!\cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin~combout\,
	datac => \s~combout\(0),
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Output_Mux|Mux0~0_combout\);

-- Location: LC_X4_Y1_N5
\Output_Mux|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \Output_Mux|Mux0~1_combout\ = (\a~combout\ & (\b~combout\ $ (((\Output_Mux|Mux0~0_combout\ & \s~combout\(1)))))) # (!\a~combout\ & (\Output_Mux|Mux0~0_combout\ $ (((!\b~combout\ & \s~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "69e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Mux|Mux0~0_combout\,
	datab => \a~combout\,
	datac => \b~combout\,
	datad => \s~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Output_Mux|Mux0~1_combout\);

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(2));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(3));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Adder_1bit|cout~0_combout\,
	oe => VCC,
	padio => ww_cout);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\res~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Output_Mux|Mux0~1_combout\,
	oe => VCC,
	padio => ww_res);
END structure;


