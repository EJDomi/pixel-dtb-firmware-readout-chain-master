-- megafunction wizard: %LPM_DECODE%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_DECODE 

-- ============================================================
-- File Name: ctrclk.vhd
-- Megafunction Name(s):
-- 			LPM_DECODE
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.1.4 Build 182 03/12/2014 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2014 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY ctrclk IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		eq0		: OUT STD_LOGIC 
	);
END ctrclk;


ARCHITECTURE SYN OF ctrclk IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;



	COMPONENT lpm_decode
	GENERIC (
		lpm_decodes		: NATURAL;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			data	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			eq	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire1    <= sub_wire0(0);
	eq0    <= sub_wire1;

	LPM_DECODE_component : LPM_DECODE
	GENERIC MAP (
		lpm_decodes => 4,
		lpm_type => "LPM_DECODE",
		lpm_width => 2
	)
	PORT MAP (
		data => data,
		eq => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: BaseDec NUMERIC "1"
-- Retrieval info: PRIVATE: EnableInput NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
-- Retrieval info: PRIVATE: Latency NUMERIC "0"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: clken NUMERIC "0"
-- Retrieval info: PRIVATE: eq0 NUMERIC "1"
-- Retrieval info: PRIVATE: eq1 NUMERIC "0"
-- Retrieval info: PRIVATE: eq2 NUMERIC "0"
-- Retrieval info: PRIVATE: eq3 NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "2"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_DECODES NUMERIC "4"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DECODE"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "2"
-- Retrieval info: USED_PORT: @eq 0 0 4 0 OUTPUT NODEFVAL "@eq[3..0]"
-- Retrieval info: USED_PORT: data 0 0 2 0 INPUT NODEFVAL "data[1..0]"
-- Retrieval info: USED_PORT: eq0 0 0 0 0 OUTPUT NODEFVAL "eq0"
-- Retrieval info: CONNECT: @data 0 0 2 0 data 0 0 2 0
-- Retrieval info: CONNECT: eq0 0 0 0 0 @eq 0 0 1 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL ctrclk.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ctrclk.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ctrclk.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ctrclk.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ctrclk_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm