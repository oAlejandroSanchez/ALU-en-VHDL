-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "10/03/2021 00:00:00"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(2 DOWNTO 0);
	B : IN std_logic_vector(2 DOWNTO 0);
	SEL : IN std_logic_vector(1 DOWNTO 0);
	S2 : IN std_logic;
	Cin2 : IN std_logic;
	SAL : OUT std_logic_vector(2 DOWNTO 0);
	Cout : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- SAL[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin2	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_S2 : std_logic;
SIGNAL ww_Cin2 : std_logic;
SIGNAL ww_SAL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SAL[0]~output_o\ : std_logic;
SIGNAL \SAL[1]~output_o\ : std_logic;
SIGNAL \SAL[2]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \u1|Selector2~0_combout\ : std_logic;
SIGNAL \u2|U1|Mux2~0_combout\ : std_logic;
SIGNAL \Cin2~input_o\ : std_logic;
SIGNAL \u2|U2|Add0~1_cout\ : std_logic;
SIGNAL \u2|U2|Add0~2_combout\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \u1|Selector2~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \u1|Selector1~0_combout\ : std_logic;
SIGNAL \u2|U1|Mux1~0_combout\ : std_logic;
SIGNAL \u2|U2|Add0~3\ : std_logic;
SIGNAL \u2|U2|Add0~4_combout\ : std_logic;
SIGNAL \u1|Selector1~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \u1|Selector0~0_combout\ : std_logic;
SIGNAL \u2|U1|Mux0~0_combout\ : std_logic;
SIGNAL \u2|U2|Add0~5\ : std_logic;
SIGNAL \u2|U2|Add0~6_combout\ : std_logic;
SIGNAL \u1|Selector0~1_combout\ : std_logic;
SIGNAL \u2|U2|Add0~7\ : std_logic;
SIGNAL \u2|U2|Add0~8_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_SEL <= SEL;
ww_S2 <= S2;
ww_Cin2 <= Cin2;
SAL <= ww_SAL;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X44_Y46_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\SAL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Selector2~1_combout\,
	devoe => ww_devoe,
	o => \SAL[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\SAL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Selector1~1_combout\,
	devoe => ww_devoe,
	o => \SAL[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\SAL[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Selector0~1_combout\,
	devoe => ww_devoe,
	o => \SAL[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|U2|Add0~8_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SEL[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\SEL[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: LCCOMB_X51_Y53_N24
\u1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Selector2~0_combout\ = (\A[0]~input_o\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\B[0]~input_o\))))) # (!\A[0]~input_o\ & ((\SEL[0]~input_o\ & ((\B[0]~input_o\) # (\SEL[1]~input_o\))) # (!\SEL[0]~input_o\ & (\B[0]~input_o\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \u1|Selector2~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\u2|U1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|U1|Mux2~0_combout\ = (\B[0]~input_o\ & (\SEL[0]~input_o\)) # (!\B[0]~input_o\ & ((\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \u2|U1|Mux2~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
\Cin2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin2,
	o => \Cin2~input_o\);

-- Location: LCCOMB_X51_Y53_N14
\u2|U2|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|U2|Add0~1_cout\ = CARRY(\Cin2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin2~input_o\,
	datad => VCC,
	cout => \u2|U2|Add0~1_cout\);

-- Location: LCCOMB_X51_Y53_N16
\u2|U2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|U2|Add0~2_combout\ = (\u2|U1|Mux2~0_combout\ & ((\A[0]~input_o\ & (\u2|U2|Add0~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\u2|U2|Add0~1_cout\)))) # (!\u2|U1|Mux2~0_combout\ & ((\A[0]~input_o\ & (!\u2|U2|Add0~1_cout\)) # (!\A[0]~input_o\ & 
-- ((\u2|U2|Add0~1_cout\) # (GND)))))
-- \u2|U2|Add0~3\ = CARRY((\u2|U1|Mux2~0_combout\ & (!\A[0]~input_o\ & !\u2|U2|Add0~1_cout\)) # (!\u2|U1|Mux2~0_combout\ & ((!\u2|U2|Add0~1_cout\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1|Mux2~0_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \u2|U2|Add0~1_cout\,
	combout => \u2|U2|Add0~2_combout\,
	cout => \u2|U2|Add0~3\);

-- Location: IOIBUF_X69_Y54_N1
\S2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: LCCOMB_X51_Y53_N28
\u1|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Selector2~1_combout\ = (\S2~input_o\ & (\u1|Selector2~0_combout\)) # (!\S2~input_o\ & ((\u2|U2|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Selector2~0_combout\,
	datac => \u2|U2|Add0~2_combout\,
	datad => \S2~input_o\,
	combout => \u1|Selector2~1_combout\);

-- Location: IOIBUF_X54_Y54_N22
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X51_Y53_N6
\u1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Selector1~0_combout\ = (\A[1]~input_o\ & (\SEL[1]~input_o\ $ (((\B[1]~input_o\) # (\SEL[0]~input_o\))))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & ((\SEL[0]~input_o\) # (\SEL[1]~input_o\))) # (!\B[1]~input_o\ & (\SEL[0]~input_o\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \u1|Selector1~0_combout\);

-- Location: LCCOMB_X51_Y53_N8
\u2|U1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|U1|Mux1~0_combout\ = (\B[1]~input_o\ & (\SEL[0]~input_o\)) # (!\B[1]~input_o\ & ((\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \u2|U1|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y53_N18
\u2|U2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|U2|Add0~4_combout\ = ((\A[1]~input_o\ $ (\u2|U1|Mux1~0_combout\ $ (!\u2|U2|Add0~3\)))) # (GND)
-- \u2|U2|Add0~5\ = CARRY((\A[1]~input_o\ & ((\u2|U1|Mux1~0_combout\) # (!\u2|U2|Add0~3\))) # (!\A[1]~input_o\ & (\u2|U1|Mux1~0_combout\ & !\u2|U2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \u2|U1|Mux1~0_combout\,
	datad => VCC,
	cin => \u2|U2|Add0~3\,
	combout => \u2|U2|Add0~4_combout\,
	cout => \u2|U2|Add0~5\);

-- Location: LCCOMB_X51_Y53_N10
\u1|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Selector1~1_combout\ = (\S2~input_o\ & (\u1|Selector1~0_combout\)) # (!\S2~input_o\ & ((\u2|U2|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector1~0_combout\,
	datab => \u2|U2|Add0~4_combout\,
	datad => \S2~input_o\,
	combout => \u1|Selector1~1_combout\);

-- Location: IOIBUF_X49_Y54_N1
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X51_Y53_N12
\u1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Selector0~0_combout\ = (\A[2]~input_o\ & (\SEL[1]~input_o\ $ (((\B[2]~input_o\) # (\SEL[0]~input_o\))))) # (!\A[2]~input_o\ & ((\B[2]~input_o\ & ((\SEL[0]~input_o\) # (\SEL[1]~input_o\))) # (!\B[2]~input_o\ & (\SEL[0]~input_o\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \u1|Selector0~0_combout\);

-- Location: LCCOMB_X51_Y53_N0
\u2|U1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|U1|Mux0~0_combout\ = (\B[2]~input_o\ & (\SEL[0]~input_o\)) # (!\B[2]~input_o\ & ((\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \u2|U1|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y53_N20
\u2|U2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|U2|Add0~6_combout\ = (\u2|U1|Mux0~0_combout\ & ((\A[2]~input_o\ & (\u2|U2|Add0~5\ & VCC)) # (!\A[2]~input_o\ & (!\u2|U2|Add0~5\)))) # (!\u2|U1|Mux0~0_combout\ & ((\A[2]~input_o\ & (!\u2|U2|Add0~5\)) # (!\A[2]~input_o\ & ((\u2|U2|Add0~5\) # (GND)))))
-- \u2|U2|Add0~7\ = CARRY((\u2|U1|Mux0~0_combout\ & (!\A[2]~input_o\ & !\u2|U2|Add0~5\)) # (!\u2|U1|Mux0~0_combout\ & ((!\u2|U2|Add0~5\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1|Mux0~0_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \u2|U2|Add0~5\,
	combout => \u2|U2|Add0~6_combout\,
	cout => \u2|U2|Add0~7\);

-- Location: LCCOMB_X51_Y53_N2
\u1|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Selector0~1_combout\ = (\S2~input_o\ & (\u1|Selector0~0_combout\)) # (!\S2~input_o\ & ((\u2|U2|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector0~0_combout\,
	datab => \u2|U2|Add0~6_combout\,
	datad => \S2~input_o\,
	combout => \u1|Selector0~1_combout\);

-- Location: LCCOMB_X51_Y53_N22
\u2|U2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|U2|Add0~8_combout\ = !\u2|U2|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|U2|Add0~7\,
	combout => \u2|U2|Add0~8_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_SAL(0) <= \SAL[0]~output_o\;

ww_SAL(1) <= \SAL[1]~output_o\;

ww_SAL(2) <= \SAL[2]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


