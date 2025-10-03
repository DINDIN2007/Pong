-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "10/02/2025 20:00:33"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hdmi_top IS
    PORT (
	clock_50_b5b : IN std_logic;
	cpu_reset_n : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(9 DOWNTO 0);
	hdmi_tx_d : BUFFER std_logic_vector(23 DOWNTO 0);
	hdmi_tx_de : BUFFER std_logic;
	hdmi_tx_hs : BUFFER std_logic;
	hdmi_tx_vs : BUFFER std_logic;
	hdmi_tx_clk : BUFFER std_logic;
	i2c_sda : BUFFER std_logic;
	i2c_scl : BUFFER std_logic
	);
END hdmi_top;

-- Design Ports Information
-- cpu_reset_n	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- hdmi_tx_d[0]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[1]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[2]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[4]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[5]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[6]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[7]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[8]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[9]	=>  Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[10]	=>  Location: PIN_R23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[11]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[12]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[13]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[14]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[15]	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[16]	=>  Location: PIN_P21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[17]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[18]	=>  Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[19]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[20]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[21]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[22]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_d[23]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_de	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_hs	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_vs	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hdmi_tx_clk	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- i2c_scl	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2c_sda	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50_b5b	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hdmi_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50_b5b : std_logic;
SIGNAL ww_cpu_reset_n : std_logic;
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_hdmi_tx_d : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_hdmi_tx_de : std_logic;
SIGNAL ww_hdmi_tx_hs : std_logic;
SIGNAL ww_hdmi_tx_vs : std_logic;
SIGNAL ww_hdmi_tx_clk : std_logic;
SIGNAL ww_i2c_sda : std_logic;
SIGNAL ww_i2c_scl : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cpu_reset_n~input_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \i2c_sda~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50_b5b~input_o\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN0\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \i2c_module|Add0~21_sumout\ : std_logic;
SIGNAL \i2c_module|div_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|Equal0~0_combout\ : std_logic;
SIGNAL \i2c_module|Equal0~2_combout\ : std_logic;
SIGNAL \i2c_module|div_cnt[15]~0_combout\ : std_logic;
SIGNAL \i2c_module|div_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|Add0~22\ : std_logic;
SIGNAL \i2c_module|Add0~17_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~18\ : std_logic;
SIGNAL \i2c_module|Add0~13_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~14\ : std_logic;
SIGNAL \i2c_module|Add0~9_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~10\ : std_logic;
SIGNAL \i2c_module|Add0~5_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~6\ : std_logic;
SIGNAL \i2c_module|Add0~61_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~62\ : std_logic;
SIGNAL \i2c_module|Add0~57_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~58\ : std_logic;
SIGNAL \i2c_module|Add0~53_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~54\ : std_logic;
SIGNAL \i2c_module|Add0~49_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~50\ : std_logic;
SIGNAL \i2c_module|Add0~45_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~46\ : std_logic;
SIGNAL \i2c_module|Add0~1_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~2\ : std_logic;
SIGNAL \i2c_module|Add0~29_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~30\ : std_logic;
SIGNAL \i2c_module|Add0~41_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~42\ : std_logic;
SIGNAL \i2c_module|Add0~37_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~38\ : std_logic;
SIGNAL \i2c_module|Add0~33_sumout\ : std_logic;
SIGNAL \i2c_module|Add0~34\ : std_logic;
SIGNAL \i2c_module|Add0~25_sumout\ : std_logic;
SIGNAL \i2c_module|Equal0~1_combout\ : std_logic;
SIGNAL \i2c_module|tick~0_combout\ : std_logic;
SIGNAL \i2c_module|tick~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|scl~0_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_IDLE~q\ : std_logic;
SIGNAL \i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|byte_idx[0]~0_combout\ : std_logic;
SIGNAL \i2c_module|bit_cnt[2]~2_combout\ : std_logic;
SIGNAL \i2c_module|bit_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|bit_cnt[1]~3_combout\ : std_logic;
SIGNAL \i2c_module|bit_cnt[1]~4_combout\ : std_logic;
SIGNAL \i2c_module|bit_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|bit_cnt[2]~5_combout\ : std_logic;
SIGNAL \i2c_module|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \i2c_module|bit_cnt[0]~1_combout\ : std_logic;
SIGNAL \i2c_module|state~23_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_START2~q\ : std_logic;
SIGNAL \i2c_module|Add3~29_sumout\ : std_logic;
SIGNAL \i2c_module|Add3~30\ : std_logic;
SIGNAL \i2c_module|Add3~2\ : std_logic;
SIGNAL \i2c_module|Add3~5_sumout\ : std_logic;
SIGNAL \i2c_module|Add3~6\ : std_logic;
SIGNAL \i2c_module|Add3~25_sumout\ : std_logic;
SIGNAL \i2c_module|Add3~26\ : std_logic;
SIGNAL \i2c_module|Add3~21_sumout\ : std_logic;
SIGNAL \i2c_module|Add3~22\ : std_logic;
SIGNAL \i2c_module|Add3~17_sumout\ : std_logic;
SIGNAL \i2c_module|Add3~18\ : std_logic;
SIGNAL \i2c_module|Add3~13_sumout\ : std_logic;
SIGNAL \i2c_module|Add3~14\ : std_logic;
SIGNAL \i2c_module|Add3~9_sumout\ : std_logic;
SIGNAL \i2c_module|LessThan0~0_combout\ : std_logic;
SIGNAL \i2c_module|pair_idx[7]~0_combout\ : std_logic;
SIGNAL \i2c_module|Add3~1_sumout\ : std_logic;
SIGNAL \i2c_module|pair_idx[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|state~25_combout\ : std_logic;
SIGNAL \i2c_module|byte_idx[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|byte_idx[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|byte_idx[0]~1_combout\ : std_logic;
SIGNAL \i2c_module|byte_idx[0]~2_combout\ : std_logic;
SIGNAL \i2c_module|Selector9~0_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_LOAD_BYTE~q\ : std_logic;
SIGNAL \i2c_module|Selector10~0_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_BIT_LOW~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|state~21_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_BIT_HIGH~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|state~26_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_BIT_DONE~q\ : std_logic;
SIGNAL \i2c_module|state~22_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_ACK_LOW~q\ : std_logic;
SIGNAL \i2c_module|state~16_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_ACK_HIGH~q\ : std_logic;
SIGNAL \i2c_module|state~24_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_ACK_DONE~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|LessThan0~1_combout\ : std_logic;
SIGNAL \i2c_module|byte_idx[0]~3_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_ACK_DONE~q\ : std_logic;
SIGNAL \i2c_module|byte_idx[1]~4_combout\ : std_logic;
SIGNAL \i2c_module|state~19_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_STOP1~q\ : std_logic;
SIGNAL \i2c_module|state~18_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_STOP2~q\ : std_logic;
SIGNAL \i2c_module|state~17_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_NEXT_PAIR~q\ : std_logic;
SIGNAL \i2c_module|Selector7~0_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_START1~q\ : std_logic;
SIGNAL \i2c_module|sda~2_combout\ : std_logic;
SIGNAL \i2c_module|Selector26~0_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_BIT_LOW~q\ : std_logic;
SIGNAL \i2c_module|Mux5~0_combout\ : std_logic;
SIGNAL \i2c_module|tx_byte~0_combout\ : std_logic;
SIGNAL \i2c_module|pair_idx[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|tx_byte~3_combout\ : std_logic;
SIGNAL \i2c_module|tx_byte~2_combout\ : std_logic;
SIGNAL \i2c_module|Mux8~1_combout\ : std_logic;
SIGNAL \i2c_module|Mux3~0_combout\ : std_logic;
SIGNAL \i2c_module|tx_byte~1_combout\ : std_logic;
SIGNAL \i2c_module|bit_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|Mux7~0_combout\ : std_logic;
SIGNAL \i2c_module|Mux6~0_combout\ : std_logic;
SIGNAL \i2c_module|Mux8~0_combout\ : std_logic;
SIGNAL \i2c_module|Selector26~1_combout\ : std_logic;
SIGNAL \i2c_module|sda~3_combout\ : std_logic;
SIGNAL \i2c_module|sda~4_combout\ : std_logic;
SIGNAL \i2c_module|sda~en_q\ : std_logic;
SIGNAL \video_timing|Add0~21_sumout\ : std_logic;
SIGNAL \video_timing|Add0~6\ : std_logic;
SIGNAL \video_timing|Add0~1_sumout\ : std_logic;
SIGNAL \video_timing|Add1~89_sumout\ : std_logic;
SIGNAL \video_timing|hcount_buf~0_combout\ : std_logic;
SIGNAL \video_timing|Add1~90\ : std_logic;
SIGNAL \video_timing|Add1~93_sumout\ : std_logic;
SIGNAL \video_timing|Add1~94\ : std_logic;
SIGNAL \video_timing|Add1~85_sumout\ : std_logic;
SIGNAL \video_timing|Add1~86\ : std_logic;
SIGNAL \video_timing|Add1~81_sumout\ : std_logic;
SIGNAL \video_timing|Add1~82\ : std_logic;
SIGNAL \video_timing|Add1~117_sumout\ : std_logic;
SIGNAL \video_timing|Add1~118\ : std_logic;
SIGNAL \video_timing|Add1~113_sumout\ : std_logic;
SIGNAL \video_timing|Add1~114\ : std_logic;
SIGNAL \video_timing|Add1~109_sumout\ : std_logic;
SIGNAL \video_timing|Add1~110\ : std_logic;
SIGNAL \video_timing|Add1~105_sumout\ : std_logic;
SIGNAL \video_timing|Add1~106\ : std_logic;
SIGNAL \video_timing|Add1~101_sumout\ : std_logic;
SIGNAL \video_timing|Add1~102\ : std_logic;
SIGNAL \video_timing|Add1~97_sumout\ : std_logic;
SIGNAL \video_timing|Add1~98\ : std_logic;
SIGNAL \video_timing|Add1~125_sumout\ : std_logic;
SIGNAL \video_timing|Add1~126\ : std_logic;
SIGNAL \video_timing|Add1~21_sumout\ : std_logic;
SIGNAL \video_timing|Add1~22\ : std_logic;
SIGNAL \video_timing|Add1~17_sumout\ : std_logic;
SIGNAL \video_timing|Add1~18\ : std_logic;
SIGNAL \video_timing|Add1~13_sumout\ : std_logic;
SIGNAL \video_timing|Add1~14\ : std_logic;
SIGNAL \video_timing|Add1~9_sumout\ : std_logic;
SIGNAL \video_timing|Add1~10\ : std_logic;
SIGNAL \video_timing|Add1~77_sumout\ : std_logic;
SIGNAL \video_timing|Add1~78\ : std_logic;
SIGNAL \video_timing|Add1~73_sumout\ : std_logic;
SIGNAL \video_timing|Add1~74\ : std_logic;
SIGNAL \video_timing|Add1~69_sumout\ : std_logic;
SIGNAL \video_timing|Add1~70\ : std_logic;
SIGNAL \video_timing|Add1~65_sumout\ : std_logic;
SIGNAL \video_timing|Add1~66\ : std_logic;
SIGNAL \video_timing|Add1~61_sumout\ : std_logic;
SIGNAL \video_timing|Add1~62\ : std_logic;
SIGNAL \video_timing|Add1~57_sumout\ : std_logic;
SIGNAL \video_timing|Add1~58\ : std_logic;
SIGNAL \video_timing|Add1~53_sumout\ : std_logic;
SIGNAL \video_timing|Add1~54\ : std_logic;
SIGNAL \video_timing|Add1~49_sumout\ : std_logic;
SIGNAL \video_timing|Add1~50\ : std_logic;
SIGNAL \video_timing|Add1~45_sumout\ : std_logic;
SIGNAL \video_timing|Add1~46\ : std_logic;
SIGNAL \video_timing|Add1~41_sumout\ : std_logic;
SIGNAL \video_timing|Add1~42\ : std_logic;
SIGNAL \video_timing|Add1~37_sumout\ : std_logic;
SIGNAL \video_timing|Add1~38\ : std_logic;
SIGNAL \video_timing|Add1~33_sumout\ : std_logic;
SIGNAL \video_timing|Add1~34\ : std_logic;
SIGNAL \video_timing|Add1~5_sumout\ : std_logic;
SIGNAL \video_timing|Add1~6\ : std_logic;
SIGNAL \video_timing|Add1~1_sumout\ : std_logic;
SIGNAL \video_timing|Add1~2\ : std_logic;
SIGNAL \video_timing|Add1~29_sumout\ : std_logic;
SIGNAL \video_timing|Add1~30\ : std_logic;
SIGNAL \video_timing|Add1~25_sumout\ : std_logic;
SIGNAL \video_timing|Equal0~1_combout\ : std_logic;
SIGNAL \video_timing|Equal0~0_combout\ : std_logic;
SIGNAL \video_timing|Equal0~3_combout\ : std_logic;
SIGNAL \video_timing|Add1~26\ : std_logic;
SIGNAL \video_timing|Add1~121_sumout\ : std_logic;
SIGNAL \video_timing|Equal0~5_combout\ : std_logic;
SIGNAL \video_timing|Equal0~2_combout\ : std_logic;
SIGNAL \video_timing|Equal0~6_combout\ : std_logic;
SIGNAL \video_timing|Equal0~7_combout\ : std_logic;
SIGNAL \video_timing|vcount_buf~9_combout\ : std_logic;
SIGNAL \video_timing|Add0~2\ : std_logic;
SIGNAL \video_timing|Add0~77_sumout\ : std_logic;
SIGNAL \video_timing|Add0~78\ : std_logic;
SIGNAL \video_timing|Add0~125_sumout\ : std_logic;
SIGNAL \video_timing|Add0~126\ : std_logic;
SIGNAL \video_timing|Add0~73_sumout\ : std_logic;
SIGNAL \video_timing|Add0~74\ : std_logic;
SIGNAL \video_timing|Add0~69_sumout\ : std_logic;
SIGNAL \video_timing|Add0~70\ : std_logic;
SIGNAL \video_timing|Add0~65_sumout\ : std_logic;
SIGNAL \video_timing|Add0~66\ : std_logic;
SIGNAL \video_timing|Add0~61_sumout\ : std_logic;
SIGNAL \video_timing|Add0~62\ : std_logic;
SIGNAL \video_timing|Add0~57_sumout\ : std_logic;
SIGNAL \video_timing|vcount_buf~1_combout\ : std_logic;
SIGNAL \video_timing|Add0~58\ : std_logic;
SIGNAL \video_timing|Add0~37_sumout\ : std_logic;
SIGNAL \video_timing|Add0~38\ : std_logic;
SIGNAL \video_timing|Add0~117_sumout\ : std_logic;
SIGNAL \video_timing|Add0~118\ : std_logic;
SIGNAL \video_timing|Add0~113_sumout\ : std_logic;
SIGNAL \video_timing|Add0~114\ : std_logic;
SIGNAL \video_timing|Add0~109_sumout\ : std_logic;
SIGNAL \video_timing|Add0~110\ : std_logic;
SIGNAL \video_timing|Add0~105_sumout\ : std_logic;
SIGNAL \video_timing|Add0~106\ : std_logic;
SIGNAL \video_timing|Add0~101_sumout\ : std_logic;
SIGNAL \video_timing|Add0~102\ : std_logic;
SIGNAL \video_timing|Add0~33_sumout\ : std_logic;
SIGNAL \video_timing|Add0~34\ : std_logic;
SIGNAL \video_timing|Add0~97_sumout\ : std_logic;
SIGNAL \video_timing|Add0~98\ : std_logic;
SIGNAL \video_timing|Add0~93_sumout\ : std_logic;
SIGNAL \video_timing|Add0~94\ : std_logic;
SIGNAL \video_timing|Add0~89_sumout\ : std_logic;
SIGNAL \video_timing|Add0~90\ : std_logic;
SIGNAL \video_timing|Add0~85_sumout\ : std_logic;
SIGNAL \video_timing|Add0~86\ : std_logic;
SIGNAL \video_timing|Add0~81_sumout\ : std_logic;
SIGNAL \video_timing|vcount_buf~2_combout\ : std_logic;
SIGNAL \video_timing|Add0~82\ : std_logic;
SIGNAL \video_timing|Add0~53_sumout\ : std_logic;
SIGNAL \video_timing|Add0~54\ : std_logic;
SIGNAL \video_timing|Add0~49_sumout\ : std_logic;
SIGNAL \video_timing|Add0~50\ : std_logic;
SIGNAL \video_timing|Add0~45_sumout\ : std_logic;
SIGNAL \video_timing|Add0~46\ : std_logic;
SIGNAL \video_timing|Add0~41_sumout\ : std_logic;
SIGNAL \video_timing|vcount_buf~0_combout\ : std_logic;
SIGNAL \video_timing|vcount_buf~3_combout\ : std_logic;
SIGNAL \video_timing|vcount_buf~4_combout\ : std_logic;
SIGNAL \video_timing|vcount_buf~5_combout\ : std_logic;
SIGNAL \video_timing|Add0~42\ : std_logic;
SIGNAL \video_timing|Add0~121_sumout\ : std_logic;
SIGNAL \video_timing|vcount_buf~6_combout\ : std_logic;
SIGNAL \video_timing|vcount_buf~7_combout\ : std_logic;
SIGNAL \video_timing|vcount_buf~8_combout\ : std_logic;
SIGNAL \video_timing|Add0~22\ : std_logic;
SIGNAL \video_timing|Add0~29_sumout\ : std_logic;
SIGNAL \video_timing|Add0~30\ : std_logic;
SIGNAL \video_timing|Add0~25_sumout\ : std_logic;
SIGNAL \video_timing|Add0~26\ : std_logic;
SIGNAL \video_timing|Add0~17_sumout\ : std_logic;
SIGNAL \video_timing|Add0~18\ : std_logic;
SIGNAL \video_timing|Add0~13_sumout\ : std_logic;
SIGNAL \video_timing|Add0~14\ : std_logic;
SIGNAL \video_timing|Add0~9_sumout\ : std_logic;
SIGNAL \video_timing|Add0~10\ : std_logic;
SIGNAL \video_timing|Add0~5_sumout\ : std_logic;
SIGNAL \video_timing|vcount_buf~10_combout\ : std_logic;
SIGNAL \renderer_inst|rectangle_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~12_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~2_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~5_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~3_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~4_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~6_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~7_combout\ : std_logic;
SIGNAL \video_timing|process_0~5_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~14_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~10_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~8_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~11_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~0_combout\ : std_logic;
SIGNAL \video_timing|vcount_buf~13_combout\ : std_logic;
SIGNAL \video_timing|vcount_buf~15_combout\ : std_logic;
SIGNAL \video_timing|vcount_buf~14_combout\ : std_logic;
SIGNAL \video_timing|vcount_buf~12_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~1_combout\ : std_logic;
SIGNAL \video_timing|process_0~3_combout\ : std_logic;
SIGNAL \video_timing|process_0~19_combout\ : std_logic;
SIGNAL \video_timing|process_0~0_combout\ : std_logic;
SIGNAL \video_timing|process_0~1_combout\ : std_logic;
SIGNAL \video_timing|process_0~4_combout\ : std_logic;
SIGNAL \video_timing|process_0~6_combout\ : std_logic;
SIGNAL \video_timing|de~q\ : std_logic;
SIGNAL \video_timing|vcount_buf~11_combout\ : std_logic;
SIGNAL \video_timing|hcount_buf~2_combout\ : std_logic;
SIGNAL \renderer_inst|rgb[0]~0_combout\ : std_logic;
SIGNAL \video_timing|hcount_buf~1_combout\ : std_logic;
SIGNAL \renderer_inst|rectangle_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \renderer_inst|rgb[0]~1_combout\ : std_logic;
SIGNAL \renderer_inst|rgb[0]~2_combout\ : std_logic;
SIGNAL \renderer_inst|rectangle_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \renderer_inst|rgb[0]~3_combout\ : std_logic;
SIGNAL \video_timing|Equal0~4_combout\ : std_logic;
SIGNAL \renderer_inst|rgb[0]~4_combout\ : std_logic;
SIGNAL \video_timing|de~DUPLICATE_q\ : std_logic;
SIGNAL \video_timing|process_0~7_combout\ : std_logic;
SIGNAL \video_timing|process_0~8_combout\ : std_logic;
SIGNAL \video_timing|process_0~2_combout\ : std_logic;
SIGNAL \video_timing|process_0~10_combout\ : std_logic;
SIGNAL \video_timing|process_0~9_combout\ : std_logic;
SIGNAL \video_timing|LessThan1~0_combout\ : std_logic;
SIGNAL \video_timing|process_0~11_combout\ : std_logic;
SIGNAL \video_timing|process_0~12_combout\ : std_logic;
SIGNAL \video_timing|hsync~q\ : std_logic;
SIGNAL \video_timing|LessThan5~9_combout\ : std_logic;
SIGNAL \video_timing|LessThan3~0_combout\ : std_logic;
SIGNAL \video_timing|LessThan3~2_combout\ : std_logic;
SIGNAL \video_timing|LessThan3~1_combout\ : std_logic;
SIGNAL \video_timing|LessThan3~3_combout\ : std_logic;
SIGNAL \video_timing|process_0~20_combout\ : std_logic;
SIGNAL \video_timing|process_0~13_combout\ : std_logic;
SIGNAL \video_timing|process_0~18_combout\ : std_logic;
SIGNAL \video_timing|process_0~17_combout\ : std_logic;
SIGNAL \video_timing|process_0~22_combout\ : std_logic;
SIGNAL \video_timing|process_0~15_combout\ : std_logic;
SIGNAL \video_timing|process_0~14_combout\ : std_logic;
SIGNAL \video_timing|process_0~21_combout\ : std_logic;
SIGNAL \video_timing|LessThan5~13_combout\ : std_logic;
SIGNAL \video_timing|process_0~16_combout\ : std_logic;
SIGNAL \video_timing|vsync~q\ : std_logic;
SIGNAL \i2c_module|sda~0_combout\ : std_logic;
SIGNAL \i2c_module|tick~q\ : std_logic;
SIGNAL \i2c_module|state~20_combout\ : std_logic;
SIGNAL \i2c_module|state.ST_DONE~q\ : std_logic;
SIGNAL \i2c_module|state.ST_BIT_HIGH~q\ : std_logic;
SIGNAL \i2c_module|scl~2_combout\ : std_logic;
SIGNAL \i2c_module|scl~1_combout\ : std_logic;
SIGNAL \i2c_module|scl~3_combout\ : std_logic;
SIGNAL \i2c_module|scl~q\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \i2c_module|div_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \video_timing|vcount_buf\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \video_timing|hcount_buf\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \video_timing|vcount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i2c_module|pair_idx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \video_timing|hcount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i2c_module|tx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_module|byte_idx\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \i2c_module|bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \video_timing|ALT_INV_vcount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \video_timing|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \video_timing|ALT_INV_hcount_buf\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \video_timing|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_hcount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i2c_module|ALT_INV_div_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2c_module|ALT_INV_state.ST_DONE~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_BIT_LOW~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_START1~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_LOAD_BYTE~q\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~9_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~8_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~7_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~6_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~5_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~4_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~3_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~15_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~14_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~13_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~12_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_hcount_buf~0_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~8_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~7_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~6_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~5_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_scl~q\ : std_logic;
SIGNAL \renderer_inst|ALT_INV_rgb[0]~3_combout\ : std_logic;
SIGNAL \renderer_inst|ALT_INV_rgb[0]~2_combout\ : std_logic;
SIGNAL \renderer_inst|ALT_INV_rgb[0]~1_combout\ : std_logic;
SIGNAL \renderer_inst|ALT_INV_rgb[0]~0_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_de~q\ : std_logic;
SIGNAL \renderer_inst|rectangle_inst|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \renderer_inst|rectangle_inst|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~4_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~3_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~2_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~1_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_vcount_buf~0_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \renderer_inst|rectangle_inst|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~22_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_pair_idx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_module|ALT_INV_tx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_module|ALT_INV_sda~en_q\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~21_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~20_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~14_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~19_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~18_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~17_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_sda~3_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_sda~2_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_bit_cnt[1]~3_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_bit_cnt[2]~2_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_byte_idx[0]~3_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_byte_idx[0]~1_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_byte_idx[0]~0_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state~25_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_BIT_DONE~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i2c_module|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_byte_idx\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i2c_module|ALT_INV_state.ST_ACK_DONE~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_START2~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_scl~2_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_ACK_LOW~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_BIT_HIGH~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_STOP1~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_IDLE~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_scl~1_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_STOP2~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_sda~0_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_NEXT_PAIR~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_ACK_HIGH~q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_scl~0_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_tick~q\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~15_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~14_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~13_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~13_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~11_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~10_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~12_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~11_combout\ : std_logic;
SIGNAL \video_timing|ALT_INV_LessThan5~10_combout\ : std_logic;
SIGNAL \i2c_module|ALT_INV_bit_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_bit_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_bit_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_ACK_DONE~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_BIT_HIGH~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_NEXT_PAIR~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_tick~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_pair_idx[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_div_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_div_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_module|ALT_INV_state.ST_BIT_LOW~DUPLICATE_q\ : std_logic;
SIGNAL \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clock_50_b5b <= clock_50_b5b;
ww_cpu_reset_n <= cpu_reset_n;
ww_key <= key;
ww_sw <= sw;
hdmi_tx_d <= ww_hdmi_tx_d;
hdmi_tx_de <= ww_hdmi_tx_de;
hdmi_tx_hs <= ww_hdmi_tx_hs;
hdmi_tx_vs <= ww_hdmi_tx_vs;
hdmi_tx_clk <= ww_hdmi_tx_clk;
i2c_sda <= ww_i2c_sda;
i2c_scl <= ww_i2c_scl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & \clock_50_b5b~input_o\ & gnd & gnd);

\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN0\ <= \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(0);

\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\video_timing|ALT_INV_vcount\(5) <= NOT \video_timing|vcount\(5);
\video_timing|ALT_INV_vcount\(6) <= NOT \video_timing|vcount\(6);
\video_timing|ALT_INV_vcount\(7) <= NOT \video_timing|vcount\(7);
\video_timing|ALT_INV_Add1~37_sumout\ <= NOT \video_timing|Add1~37_sumout\;
\video_timing|ALT_INV_Add1~33_sumout\ <= NOT \video_timing|Add1~33_sumout\;
\video_timing|ALT_INV_Add1~29_sumout\ <= NOT \video_timing|Add1~29_sumout\;
\video_timing|ALT_INV_Add1~25_sumout\ <= NOT \video_timing|Add1~25_sumout\;
\video_timing|ALT_INV_Add1~21_sumout\ <= NOT \video_timing|Add1~21_sumout\;
\video_timing|ALT_INV_Add1~17_sumout\ <= NOT \video_timing|Add1~17_sumout\;
\video_timing|ALT_INV_Add1~13_sumout\ <= NOT \video_timing|Add1~13_sumout\;
\video_timing|ALT_INV_Add1~9_sumout\ <= NOT \video_timing|Add1~9_sumout\;
\video_timing|ALT_INV_Add1~5_sumout\ <= NOT \video_timing|Add1~5_sumout\;
\video_timing|ALT_INV_Add1~1_sumout\ <= NOT \video_timing|Add1~1_sumout\;
\video_timing|ALT_INV_Add0~29_sumout\ <= NOT \video_timing|Add0~29_sumout\;
\video_timing|ALT_INV_Add0~25_sumout\ <= NOT \video_timing|Add0~25_sumout\;
\video_timing|ALT_INV_Add0~21_sumout\ <= NOT \video_timing|Add0~21_sumout\;
\video_timing|ALT_INV_Add0~17_sumout\ <= NOT \video_timing|Add0~17_sumout\;
\video_timing|ALT_INV_Add0~13_sumout\ <= NOT \video_timing|Add0~13_sumout\;
\video_timing|ALT_INV_Add0~9_sumout\ <= NOT \video_timing|Add0~9_sumout\;
\video_timing|ALT_INV_Add0~5_sumout\ <= NOT \video_timing|Add0~5_sumout\;
\video_timing|ALT_INV_vcount_buf\(0) <= NOT \video_timing|vcount_buf\(0);
\video_timing|ALT_INV_vcount_buf\(31) <= NOT \video_timing|vcount_buf\(31);
\video_timing|ALT_INV_hcount_buf\(0) <= NOT \video_timing|hcount_buf\(0);
\video_timing|ALT_INV_hcount_buf\(31) <= NOT \video_timing|hcount_buf\(31);
\video_timing|ALT_INV_Add0~1_sumout\ <= NOT \video_timing|Add0~1_sumout\;
\video_timing|ALT_INV_hcount\(10) <= NOT \video_timing|hcount\(10);
\video_timing|ALT_INV_vcount\(9) <= NOT \video_timing|vcount\(9);
\video_timing|ALT_INV_hcount\(4) <= NOT \video_timing|hcount\(4);
\video_timing|ALT_INV_hcount\(5) <= NOT \video_timing|hcount\(5);
\video_timing|ALT_INV_hcount\(6) <= NOT \video_timing|hcount\(6);
\video_timing|ALT_INV_hcount\(7) <= NOT \video_timing|hcount\(7);
\video_timing|ALT_INV_hcount\(8) <= NOT \video_timing|hcount\(8);
\video_timing|ALT_INV_hcount\(9) <= NOT \video_timing|hcount\(9);
\video_timing|ALT_INV_hcount\(1) <= NOT \video_timing|hcount\(1);
\video_timing|ALT_INV_hcount\(2) <= NOT \video_timing|hcount\(2);
\video_timing|ALT_INV_hcount\(3) <= NOT \video_timing|hcount\(3);
\video_timing|ALT_INV_vcount\(16) <= NOT \video_timing|vcount\(16);
\video_timing|ALT_INV_vcount\(17) <= NOT \video_timing|vcount\(17);
\video_timing|ALT_INV_vcount\(18) <= NOT \video_timing|vcount\(18);
\video_timing|ALT_INV_vcount\(19) <= NOT \video_timing|vcount\(19);
\video_timing|ALT_INV_vcount\(20) <= NOT \video_timing|vcount\(20);
\video_timing|ALT_INV_vcount\(22) <= NOT \video_timing|vcount\(22);
\video_timing|ALT_INV_vcount\(23) <= NOT \video_timing|vcount\(23);
\video_timing|ALT_INV_vcount\(24) <= NOT \video_timing|vcount\(24);
\video_timing|ALT_INV_vcount\(25) <= NOT \video_timing|vcount\(25);
\video_timing|ALT_INV_vcount\(26) <= NOT \video_timing|vcount\(26);
\video_timing|ALT_INV_vcount\(8) <= NOT \video_timing|vcount\(8);
\video_timing|ALT_INV_vcount\(10) <= NOT \video_timing|vcount\(10);
\video_timing|ALT_INV_vcount\(11) <= NOT \video_timing|vcount\(11);
\video_timing|ALT_INV_vcount\(12) <= NOT \video_timing|vcount\(12);
\video_timing|ALT_INV_vcount\(13) <= NOT \video_timing|vcount\(13);
\video_timing|ALT_INV_vcount\(14) <= NOT \video_timing|vcount\(14);
\video_timing|ALT_INV_vcount\(27) <= NOT \video_timing|vcount\(27);
\video_timing|ALT_INV_vcount\(28) <= NOT \video_timing|vcount\(28);
\video_timing|ALT_INV_vcount\(29) <= NOT \video_timing|vcount\(29);
\video_timing|ALT_INV_vcount\(30) <= NOT \video_timing|vcount\(30);
\video_timing|ALT_INV_vcount\(15) <= NOT \video_timing|vcount\(15);
\video_timing|ALT_INV_vcount\(21) <= NOT \video_timing|vcount\(21);
\video_timing|ALT_INV_hcount\(15) <= NOT \video_timing|hcount\(15);
\video_timing|ALT_INV_hcount\(16) <= NOT \video_timing|hcount\(16);
\video_timing|ALT_INV_hcount\(17) <= NOT \video_timing|hcount\(17);
\video_timing|ALT_INV_hcount\(18) <= NOT \video_timing|hcount\(18);
\video_timing|ALT_INV_hcount\(19) <= NOT \video_timing|hcount\(19);
\video_timing|ALT_INV_hcount\(20) <= NOT \video_timing|hcount\(20);
\video_timing|ALT_INV_hcount\(21) <= NOT \video_timing|hcount\(21);
\video_timing|ALT_INV_hcount\(22) <= NOT \video_timing|hcount\(22);
\video_timing|ALT_INV_hcount\(23) <= NOT \video_timing|hcount\(23);
\video_timing|ALT_INV_hcount\(24) <= NOT \video_timing|hcount\(24);
\video_timing|ALT_INV_hcount\(25) <= NOT \video_timing|hcount\(25);
\video_timing|ALT_INV_hcount\(26) <= NOT \video_timing|hcount\(26);
\video_timing|ALT_INV_hcount\(29) <= NOT \video_timing|hcount\(29);
\video_timing|ALT_INV_hcount\(30) <= NOT \video_timing|hcount\(30);
\video_timing|ALT_INV_hcount\(11) <= NOT \video_timing|hcount\(11);
\video_timing|ALT_INV_hcount\(12) <= NOT \video_timing|hcount\(12);
\video_timing|ALT_INV_hcount\(13) <= NOT \video_timing|hcount\(13);
\video_timing|ALT_INV_hcount\(14) <= NOT \video_timing|hcount\(14);
\video_timing|ALT_INV_hcount\(27) <= NOT \video_timing|hcount\(27);
\video_timing|ALT_INV_hcount\(28) <= NOT \video_timing|hcount\(28);
\video_timing|ALT_INV_vcount\(1) <= NOT \video_timing|vcount\(1);
\video_timing|ALT_INV_vcount\(2) <= NOT \video_timing|vcount\(2);
\video_timing|ALT_INV_vcount\(3) <= NOT \video_timing|vcount\(3);
\video_timing|ALT_INV_vcount\(4) <= NOT \video_timing|vcount\(4);
\i2c_module|ALT_INV_div_cnt\(5) <= NOT \i2c_module|div_cnt\(5);
\i2c_module|ALT_INV_div_cnt\(6) <= NOT \i2c_module|div_cnt\(6);
\i2c_module|ALT_INV_div_cnt\(7) <= NOT \i2c_module|div_cnt\(7);
\i2c_module|ALT_INV_div_cnt\(8) <= NOT \i2c_module|div_cnt\(8);
\i2c_module|ALT_INV_div_cnt\(9) <= NOT \i2c_module|div_cnt\(9);
\i2c_module|ALT_INV_div_cnt\(12) <= NOT \i2c_module|div_cnt\(12);
\i2c_module|ALT_INV_div_cnt\(13) <= NOT \i2c_module|div_cnt\(13);
\i2c_module|ALT_INV_div_cnt\(14) <= NOT \i2c_module|div_cnt\(14);
\i2c_module|ALT_INV_div_cnt\(11) <= NOT \i2c_module|div_cnt\(11);
\i2c_module|ALT_INV_div_cnt\(15) <= NOT \i2c_module|div_cnt\(15);
\i2c_module|ALT_INV_div_cnt\(0) <= NOT \i2c_module|div_cnt\(0);
\i2c_module|ALT_INV_div_cnt\(1) <= NOT \i2c_module|div_cnt\(1);
\i2c_module|ALT_INV_div_cnt\(2) <= NOT \i2c_module|div_cnt\(2);
\i2c_module|ALT_INV_div_cnt\(3) <= NOT \i2c_module|div_cnt\(3);
\i2c_module|ALT_INV_div_cnt\(4) <= NOT \i2c_module|div_cnt\(4);
\i2c_module|ALT_INV_div_cnt\(10) <= NOT \i2c_module|div_cnt\(10);
\i2c_module|ALT_INV_state.ST_DONE~q\ <= NOT \i2c_module|state.ST_DONE~q\;
\i2c_module|ALT_INV_state.ST_BIT_LOW~q\ <= NOT \i2c_module|state.ST_BIT_LOW~q\;
\i2c_module|ALT_INV_state.ST_START1~q\ <= NOT \i2c_module|state.ST_START1~q\;
\i2c_module|ALT_INV_state.ST_LOAD_BYTE~q\ <= NOT \i2c_module|state.ST_LOAD_BYTE~q\;
\video_timing|ALT_INV_Add1~125_sumout\ <= NOT \video_timing|Add1~125_sumout\;
\video_timing|ALT_INV_Add0~125_sumout\ <= NOT \video_timing|Add0~125_sumout\;
\video_timing|ALT_INV_Add1~121_sumout\ <= NOT \video_timing|Add1~121_sumout\;
\video_timing|ALT_INV_Add0~121_sumout\ <= NOT \video_timing|Add0~121_sumout\;
\video_timing|ALT_INV_Add1~117_sumout\ <= NOT \video_timing|Add1~117_sumout\;
\video_timing|ALT_INV_Add1~113_sumout\ <= NOT \video_timing|Add1~113_sumout\;
\video_timing|ALT_INV_Add1~109_sumout\ <= NOT \video_timing|Add1~109_sumout\;
\video_timing|ALT_INV_Add1~105_sumout\ <= NOT \video_timing|Add1~105_sumout\;
\video_timing|ALT_INV_Add1~101_sumout\ <= NOT \video_timing|Add1~101_sumout\;
\video_timing|ALT_INV_Add1~97_sumout\ <= NOT \video_timing|Add1~97_sumout\;
\video_timing|ALT_INV_Add1~93_sumout\ <= NOT \video_timing|Add1~93_sumout\;
\video_timing|ALT_INV_Add1~89_sumout\ <= NOT \video_timing|Add1~89_sumout\;
\video_timing|ALT_INV_Add1~85_sumout\ <= NOT \video_timing|Add1~85_sumout\;
\video_timing|ALT_INV_Add1~81_sumout\ <= NOT \video_timing|Add1~81_sumout\;
\video_timing|ALT_INV_Add0~117_sumout\ <= NOT \video_timing|Add0~117_sumout\;
\video_timing|ALT_INV_Add0~113_sumout\ <= NOT \video_timing|Add0~113_sumout\;
\video_timing|ALT_INV_Add0~109_sumout\ <= NOT \video_timing|Add0~109_sumout\;
\video_timing|ALT_INV_Add0~105_sumout\ <= NOT \video_timing|Add0~105_sumout\;
\video_timing|ALT_INV_Add0~101_sumout\ <= NOT \video_timing|Add0~101_sumout\;
\video_timing|ALT_INV_Add0~97_sumout\ <= NOT \video_timing|Add0~97_sumout\;
\video_timing|ALT_INV_Add0~93_sumout\ <= NOT \video_timing|Add0~93_sumout\;
\video_timing|ALT_INV_Add0~89_sumout\ <= NOT \video_timing|Add0~89_sumout\;
\video_timing|ALT_INV_Add0~85_sumout\ <= NOT \video_timing|Add0~85_sumout\;
\video_timing|ALT_INV_Add0~81_sumout\ <= NOT \video_timing|Add0~81_sumout\;
\video_timing|ALT_INV_Add0~77_sumout\ <= NOT \video_timing|Add0~77_sumout\;
\video_timing|ALT_INV_Add0~73_sumout\ <= NOT \video_timing|Add0~73_sumout\;
\video_timing|ALT_INV_Add0~69_sumout\ <= NOT \video_timing|Add0~69_sumout\;
\video_timing|ALT_INV_Add0~65_sumout\ <= NOT \video_timing|Add0~65_sumout\;
\video_timing|ALT_INV_Add0~61_sumout\ <= NOT \video_timing|Add0~61_sumout\;
\video_timing|ALT_INV_Add0~57_sumout\ <= NOT \video_timing|Add0~57_sumout\;
\video_timing|ALT_INV_Add0~53_sumout\ <= NOT \video_timing|Add0~53_sumout\;
\video_timing|ALT_INV_Add0~49_sumout\ <= NOT \video_timing|Add0~49_sumout\;
\video_timing|ALT_INV_Add0~45_sumout\ <= NOT \video_timing|Add0~45_sumout\;
\video_timing|ALT_INV_Add0~41_sumout\ <= NOT \video_timing|Add0~41_sumout\;
\video_timing|ALT_INV_Add0~37_sumout\ <= NOT \video_timing|Add0~37_sumout\;
\video_timing|ALT_INV_Add0~33_sumout\ <= NOT \video_timing|Add0~33_sumout\;
\video_timing|ALT_INV_Add1~77_sumout\ <= NOT \video_timing|Add1~77_sumout\;
\video_timing|ALT_INV_Add1~73_sumout\ <= NOT \video_timing|Add1~73_sumout\;
\video_timing|ALT_INV_Add1~69_sumout\ <= NOT \video_timing|Add1~69_sumout\;
\video_timing|ALT_INV_Add1~65_sumout\ <= NOT \video_timing|Add1~65_sumout\;
\video_timing|ALT_INV_Add1~61_sumout\ <= NOT \video_timing|Add1~61_sumout\;
\video_timing|ALT_INV_Add1~57_sumout\ <= NOT \video_timing|Add1~57_sumout\;
\video_timing|ALT_INV_Add1~53_sumout\ <= NOT \video_timing|Add1~53_sumout\;
\video_timing|ALT_INV_Add1~49_sumout\ <= NOT \video_timing|Add1~49_sumout\;
\video_timing|ALT_INV_Add1~45_sumout\ <= NOT \video_timing|Add1~45_sumout\;
\video_timing|ALT_INV_Add1~41_sumout\ <= NOT \video_timing|Add1~41_sumout\;
\video_timing|ALT_INV_LessThan5~9_combout\ <= NOT \video_timing|LessThan5~9_combout\;
\video_timing|ALT_INV_LessThan5~8_combout\ <= NOT \video_timing|LessThan5~8_combout\;
\video_timing|ALT_INV_LessThan5~7_combout\ <= NOT \video_timing|LessThan5~7_combout\;
\video_timing|ALT_INV_LessThan5~6_combout\ <= NOT \video_timing|LessThan5~6_combout\;
\video_timing|ALT_INV_LessThan5~5_combout\ <= NOT \video_timing|LessThan5~5_combout\;
\video_timing|ALT_INV_LessThan5~4_combout\ <= NOT \video_timing|LessThan5~4_combout\;
\video_timing|ALT_INV_LessThan5~3_combout\ <= NOT \video_timing|LessThan5~3_combout\;
\video_timing|ALT_INV_LessThan5~2_combout\ <= NOT \video_timing|LessThan5~2_combout\;
\video_timing|ALT_INV_LessThan5~1_combout\ <= NOT \video_timing|LessThan5~1_combout\;
\video_timing|ALT_INV_LessThan5~0_combout\ <= NOT \video_timing|LessThan5~0_combout\;
\video_timing|ALT_INV_vcount_buf~15_combout\ <= NOT \video_timing|vcount_buf~15_combout\;
\video_timing|ALT_INV_vcount_buf~14_combout\ <= NOT \video_timing|vcount_buf~14_combout\;
\video_timing|ALT_INV_vcount_buf~13_combout\ <= NOT \video_timing|vcount_buf~13_combout\;
\video_timing|ALT_INV_vcount_buf~12_combout\ <= NOT \video_timing|vcount_buf~12_combout\;
\video_timing|ALT_INV_hcount_buf~0_combout\ <= NOT \video_timing|hcount_buf~0_combout\;
\video_timing|ALT_INV_vcount_buf~8_combout\ <= NOT \video_timing|vcount_buf~8_combout\;
\video_timing|ALT_INV_vcount_buf~7_combout\ <= NOT \video_timing|vcount_buf~7_combout\;
\video_timing|ALT_INV_vcount_buf~6_combout\ <= NOT \video_timing|vcount_buf~6_combout\;
\video_timing|ALT_INV_vcount_buf~5_combout\ <= NOT \video_timing|vcount_buf~5_combout\;
\video_timing|ALT_INV_Equal0~7_combout\ <= NOT \video_timing|Equal0~7_combout\;
\video_timing|ALT_INV_Equal0~6_combout\ <= NOT \video_timing|Equal0~6_combout\;
\video_timing|ALT_INV_Equal0~5_combout\ <= NOT \video_timing|Equal0~5_combout\;
\i2c_module|ALT_INV_scl~q\ <= NOT \i2c_module|scl~q\;
\renderer_inst|ALT_INV_rgb[0]~3_combout\ <= NOT \renderer_inst|rgb[0]~3_combout\;
\renderer_inst|ALT_INV_rgb[0]~2_combout\ <= NOT \renderer_inst|rgb[0]~2_combout\;
\renderer_inst|ALT_INV_rgb[0]~1_combout\ <= NOT \renderer_inst|rgb[0]~1_combout\;
\renderer_inst|ALT_INV_rgb[0]~0_combout\ <= NOT \renderer_inst|rgb[0]~0_combout\;
\video_timing|ALT_INV_de~q\ <= NOT \video_timing|de~q\;
\video_timing|ALT_INV_hcount\(31) <= NOT \video_timing|hcount\(31);
\video_timing|ALT_INV_vcount\(31) <= NOT \video_timing|vcount\(31);
\renderer_inst|rectangle_inst|ALT_INV_LessThan1~1_combout\ <= NOT \renderer_inst|rectangle_inst|LessThan1~1_combout\;
\renderer_inst|rectangle_inst|ALT_INV_LessThan1~0_combout\ <= NOT \renderer_inst|rectangle_inst|LessThan1~0_combout\;
\video_timing|ALT_INV_hcount\(0) <= NOT \video_timing|hcount\(0);
\video_timing|ALT_INV_vcount_buf~4_combout\ <= NOT \video_timing|vcount_buf~4_combout\;
\video_timing|ALT_INV_vcount_buf~3_combout\ <= NOT \video_timing|vcount_buf~3_combout\;
\video_timing|ALT_INV_vcount_buf~2_combout\ <= NOT \video_timing|vcount_buf~2_combout\;
\video_timing|ALT_INV_vcount_buf~1_combout\ <= NOT \video_timing|vcount_buf~1_combout\;
\video_timing|ALT_INV_vcount_buf~0_combout\ <= NOT \video_timing|vcount_buf~0_combout\;
\video_timing|ALT_INV_Equal0~4_combout\ <= NOT \video_timing|Equal0~4_combout\;
\video_timing|ALT_INV_Equal0~3_combout\ <= NOT \video_timing|Equal0~3_combout\;
\video_timing|ALT_INV_Equal0~2_combout\ <= NOT \video_timing|Equal0~2_combout\;
\video_timing|ALT_INV_Equal0~1_combout\ <= NOT \video_timing|Equal0~1_combout\;
\video_timing|ALT_INV_Equal0~0_combout\ <= NOT \video_timing|Equal0~0_combout\;
\renderer_inst|rectangle_inst|ALT_INV_LessThan3~0_combout\ <= NOT \renderer_inst|rectangle_inst|LessThan3~0_combout\;
\video_timing|ALT_INV_vcount\(0) <= NOT \video_timing|vcount\(0);
\video_timing|ALT_INV_process_0~22_combout\ <= NOT \video_timing|process_0~22_combout\;
\i2c_module|ALT_INV_pair_idx\(0) <= NOT \i2c_module|pair_idx\(0);
\i2c_module|ALT_INV_tx_byte\(2) <= NOT \i2c_module|tx_byte\(2);
\i2c_module|ALT_INV_tx_byte\(4) <= NOT \i2c_module|tx_byte\(4);
\i2c_module|ALT_INV_tx_byte\(1) <= NOT \i2c_module|tx_byte\(1);
\i2c_module|ALT_INV_tx_byte\(0) <= NOT \i2c_module|tx_byte\(0);
\i2c_module|ALT_INV_sda~en_q\ <= NOT \i2c_module|sda~en_q\;
\i2c_module|ALT_INV_pair_idx\(3) <= NOT \i2c_module|pair_idx\(3);
\i2c_module|ALT_INV_pair_idx\(4) <= NOT \i2c_module|pair_idx\(4);
\i2c_module|ALT_INV_pair_idx\(5) <= NOT \i2c_module|pair_idx\(5);
\i2c_module|ALT_INV_pair_idx\(6) <= NOT \i2c_module|pair_idx\(6);
\i2c_module|ALT_INV_pair_idx\(7) <= NOT \i2c_module|pair_idx\(7);
\i2c_module|ALT_INV_pair_idx\(2) <= NOT \i2c_module|pair_idx\(2);
\i2c_module|ALT_INV_pair_idx\(1) <= NOT \i2c_module|pair_idx\(1);
\video_timing|ALT_INV_process_0~21_combout\ <= NOT \video_timing|process_0~21_combout\;
\video_timing|ALT_INV_process_0~20_combout\ <= NOT \video_timing|process_0~20_combout\;
\video_timing|ALT_INV_LessThan5~14_combout\ <= NOT \video_timing|LessThan5~14_combout\;
\video_timing|ALT_INV_process_0~19_combout\ <= NOT \video_timing|process_0~19_combout\;
\video_timing|ALT_INV_process_0~18_combout\ <= NOT \video_timing|process_0~18_combout\;
\video_timing|ALT_INV_process_0~17_combout\ <= NOT \video_timing|process_0~17_combout\;
\i2c_module|ALT_INV_sda~3_combout\ <= NOT \i2c_module|sda~3_combout\;
\i2c_module|ALT_INV_Selector26~0_combout\ <= NOT \i2c_module|Selector26~0_combout\;
\i2c_module|ALT_INV_sda~2_combout\ <= NOT \i2c_module|sda~2_combout\;
\i2c_module|ALT_INV_Mux8~1_combout\ <= NOT \i2c_module|Mux8~1_combout\;
\i2c_module|ALT_INV_tx_byte\(6) <= NOT \i2c_module|tx_byte\(6);
\i2c_module|ALT_INV_tx_byte\(7) <= NOT \i2c_module|tx_byte\(7);
\i2c_module|ALT_INV_Mux8~0_combout\ <= NOT \i2c_module|Mux8~0_combout\;
\i2c_module|ALT_INV_tx_byte\(5) <= NOT \i2c_module|tx_byte\(5);
\i2c_module|ALT_INV_bit_cnt[1]~3_combout\ <= NOT \i2c_module|bit_cnt[1]~3_combout\;
\i2c_module|ALT_INV_bit_cnt[2]~2_combout\ <= NOT \i2c_module|bit_cnt[2]~2_combout\;
\i2c_module|ALT_INV_bit_cnt[2]~0_combout\ <= NOT \i2c_module|bit_cnt[2]~0_combout\;
\i2c_module|ALT_INV_byte_idx[0]~3_combout\ <= NOT \i2c_module|byte_idx[0]~3_combout\;
\i2c_module|ALT_INV_LessThan0~1_combout\ <= NOT \i2c_module|LessThan0~1_combout\;
\i2c_module|ALT_INV_byte_idx[0]~1_combout\ <= NOT \i2c_module|byte_idx[0]~1_combout\;
\i2c_module|ALT_INV_byte_idx[0]~0_combout\ <= NOT \i2c_module|byte_idx[0]~0_combout\;
\i2c_module|ALT_INV_state~25_combout\ <= NOT \i2c_module|state~25_combout\;
\i2c_module|ALT_INV_state.ST_BIT_DONE~q\ <= NOT \i2c_module|state.ST_BIT_DONE~q\;
\i2c_module|ALT_INV_bit_cnt\(1) <= NOT \i2c_module|bit_cnt\(1);
\i2c_module|ALT_INV_bit_cnt\(0) <= NOT \i2c_module|bit_cnt\(0);
\i2c_module|ALT_INV_bit_cnt\(2) <= NOT \i2c_module|bit_cnt\(2);
\i2c_module|ALT_INV_LessThan0~0_combout\ <= NOT \i2c_module|LessThan0~0_combout\;
\i2c_module|ALT_INV_byte_idx\(1) <= NOT \i2c_module|byte_idx\(1);
\i2c_module|ALT_INV_byte_idx\(0) <= NOT \i2c_module|byte_idx\(0);
\i2c_module|ALT_INV_state.ST_ACK_DONE~q\ <= NOT \i2c_module|state.ST_ACK_DONE~q\;
\i2c_module|ALT_INV_state.ST_START2~q\ <= NOT \i2c_module|state.ST_START2~q\;
\i2c_module|ALT_INV_Equal0~2_combout\ <= NOT \i2c_module|Equal0~2_combout\;
\i2c_module|ALT_INV_Equal0~1_combout\ <= NOT \i2c_module|Equal0~1_combout\;
\i2c_module|ALT_INV_Equal0~0_combout\ <= NOT \i2c_module|Equal0~0_combout\;
\i2c_module|ALT_INV_scl~2_combout\ <= NOT \i2c_module|scl~2_combout\;
\i2c_module|ALT_INV_state.ST_ACK_LOW~q\ <= NOT \i2c_module|state.ST_ACK_LOW~q\;
\i2c_module|ALT_INV_state.ST_BIT_HIGH~q\ <= NOT \i2c_module|state.ST_BIT_HIGH~q\;
\i2c_module|ALT_INV_state.ST_STOP1~q\ <= NOT \i2c_module|state.ST_STOP1~q\;
\i2c_module|ALT_INV_state.ST_IDLE~q\ <= NOT \i2c_module|state.ST_IDLE~q\;
\i2c_module|ALT_INV_scl~1_combout\ <= NOT \i2c_module|scl~1_combout\;
\i2c_module|ALT_INV_state.ST_STOP2~q\ <= NOT \i2c_module|state.ST_STOP2~q\;
\i2c_module|ALT_INV_sda~0_combout\ <= NOT \i2c_module|sda~0_combout\;
\i2c_module|ALT_INV_state.ST_NEXT_PAIR~q\ <= NOT \i2c_module|state.ST_NEXT_PAIR~q\;
\i2c_module|ALT_INV_state.ST_ACK_HIGH~q\ <= NOT \i2c_module|state.ST_ACK_HIGH~q\;
\i2c_module|ALT_INV_scl~0_combout\ <= NOT \i2c_module|scl~0_combout\;
\i2c_module|ALT_INV_tick~q\ <= NOT \i2c_module|tick~q\;
\video_timing|ALT_INV_process_0~15_combout\ <= NOT \video_timing|process_0~15_combout\;
\video_timing|ALT_INV_process_0~14_combout\ <= NOT \video_timing|process_0~14_combout\;
\video_timing|ALT_INV_process_0~13_combout\ <= NOT \video_timing|process_0~13_combout\;
\video_timing|ALT_INV_LessThan3~3_combout\ <= NOT \video_timing|LessThan3~3_combout\;
\video_timing|ALT_INV_LessThan3~2_combout\ <= NOT \video_timing|LessThan3~2_combout\;
\video_timing|ALT_INV_LessThan3~1_combout\ <= NOT \video_timing|LessThan3~1_combout\;
\video_timing|ALT_INV_LessThan3~0_combout\ <= NOT \video_timing|LessThan3~0_combout\;
\video_timing|ALT_INV_LessThan5~13_combout\ <= NOT \video_timing|LessThan5~13_combout\;
\video_timing|ALT_INV_process_0~11_combout\ <= NOT \video_timing|process_0~11_combout\;
\video_timing|ALT_INV_process_0~10_combout\ <= NOT \video_timing|process_0~10_combout\;
\video_timing|ALT_INV_LessThan1~0_combout\ <= NOT \video_timing|LessThan1~0_combout\;
\video_timing|ALT_INV_process_0~9_combout\ <= NOT \video_timing|process_0~9_combout\;
\video_timing|ALT_INV_process_0~8_combout\ <= NOT \video_timing|process_0~8_combout\;
\video_timing|ALT_INV_process_0~7_combout\ <= NOT \video_timing|process_0~7_combout\;
\video_timing|ALT_INV_process_0~5_combout\ <= NOT \video_timing|process_0~5_combout\;
\video_timing|ALT_INV_LessThan5~12_combout\ <= NOT \video_timing|LessThan5~12_combout\;
\video_timing|ALT_INV_process_0~4_combout\ <= NOT \video_timing|process_0~4_combout\;
\video_timing|ALT_INV_process_0~3_combout\ <= NOT \video_timing|process_0~3_combout\;
\video_timing|ALT_INV_process_0~2_combout\ <= NOT \video_timing|process_0~2_combout\;
\video_timing|ALT_INV_process_0~1_combout\ <= NOT \video_timing|process_0~1_combout\;
\video_timing|ALT_INV_process_0~0_combout\ <= NOT \video_timing|process_0~0_combout\;
\video_timing|ALT_INV_LessThan5~11_combout\ <= NOT \video_timing|LessThan5~11_combout\;
\video_timing|ALT_INV_LessThan5~10_combout\ <= NOT \video_timing|LessThan5~10_combout\;
\i2c_module|ALT_INV_bit_cnt[1]~DUPLICATE_q\ <= NOT \i2c_module|bit_cnt[1]~DUPLICATE_q\;
\i2c_module|ALT_INV_bit_cnt[0]~DUPLICATE_q\ <= NOT \i2c_module|bit_cnt[0]~DUPLICATE_q\;
\i2c_module|ALT_INV_bit_cnt[2]~DUPLICATE_q\ <= NOT \i2c_module|bit_cnt[2]~DUPLICATE_q\;
\i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\ <= NOT \i2c_module|byte_idx[1]~DUPLICATE_q\;
\i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\ <= NOT \i2c_module|byte_idx[0]~DUPLICATE_q\;
\i2c_module|ALT_INV_state.ST_ACK_DONE~DUPLICATE_q\ <= NOT \i2c_module|state.ST_ACK_DONE~DUPLICATE_q\;
\i2c_module|ALT_INV_state.ST_BIT_HIGH~DUPLICATE_q\ <= NOT \i2c_module|state.ST_BIT_HIGH~DUPLICATE_q\;
\i2c_module|ALT_INV_state.ST_NEXT_PAIR~DUPLICATE_q\ <= NOT \i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\;
\i2c_module|ALT_INV_tick~DUPLICATE_q\ <= NOT \i2c_module|tick~DUPLICATE_q\;
\i2c_module|ALT_INV_pair_idx[0]~DUPLICATE_q\ <= NOT \i2c_module|pair_idx[0]~DUPLICATE_q\;
\i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\ <= NOT \i2c_module|pair_idx[1]~DUPLICATE_q\;
\i2c_module|ALT_INV_div_cnt[0]~DUPLICATE_q\ <= NOT \i2c_module|div_cnt[0]~DUPLICATE_q\;
\i2c_module|ALT_INV_div_cnt[3]~DUPLICATE_q\ <= NOT \i2c_module|div_cnt[3]~DUPLICATE_q\;
\i2c_module|ALT_INV_state.ST_BIT_LOW~DUPLICATE_q\ <= NOT \i2c_module|state.ST_BIT_LOW~DUPLICATE_q\;
\pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0) <= NOT \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0);

-- Location: IOOBUF_X68_Y14_N79
\hdmi_tx_d[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(0));

-- Location: IOOBUF_X68_Y22_N96
\hdmi_tx_d[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(1));

-- Location: IOOBUF_X68_Y26_N39
\hdmi_tx_d[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(2));

-- Location: IOOBUF_X68_Y26_N56
\hdmi_tx_d[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(3));

-- Location: IOOBUF_X68_Y14_N96
\hdmi_tx_d[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(4));

-- Location: IOOBUF_X68_Y19_N56
\hdmi_tx_d[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(5));

-- Location: IOOBUF_X68_Y19_N39
\hdmi_tx_d[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(6));

-- Location: IOOBUF_X68_Y16_N5
\hdmi_tx_d[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(7));

-- Location: IOOBUF_X68_Y16_N22
\hdmi_tx_d[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(8));

-- Location: IOOBUF_X68_Y24_N5
\hdmi_tx_d[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(9));

-- Location: IOOBUF_X68_Y17_N5
\hdmi_tx_d[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(10));

-- Location: IOOBUF_X68_Y19_N22
\hdmi_tx_d[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(11));

-- Location: IOOBUF_X68_Y26_N22
\hdmi_tx_d[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(12));

-- Location: IOOBUF_X68_Y17_N22
\hdmi_tx_d[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(13));

-- Location: IOOBUF_X68_Y27_N5
\hdmi_tx_d[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(14));

-- Location: IOOBUF_X68_Y27_N22
\hdmi_tx_d[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(15));

-- Location: IOOBUF_X68_Y26_N5
\hdmi_tx_d[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(16));

-- Location: IOOBUF_X68_Y19_N5
\hdmi_tx_d[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(17));

-- Location: IOOBUF_X68_Y24_N22
\hdmi_tx_d[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(18));

-- Location: IOOBUF_X68_Y22_N79
\hdmi_tx_d[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(19));

-- Location: IOOBUF_X68_Y16_N39
\hdmi_tx_d[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(20));

-- Location: IOOBUF_X68_Y16_N56
\hdmi_tx_d[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(21));

-- Location: IOOBUF_X68_Y17_N56
\hdmi_tx_d[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(22));

-- Location: IOOBUF_X68_Y17_N39
\hdmi_tx_d[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \renderer_inst|rgb[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_d(23));

-- Location: IOOBUF_X68_Y24_N56
\hdmi_tx_de~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \video_timing|de~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_de);

-- Location: IOOBUF_X68_Y27_N56
\hdmi_tx_hs~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \video_timing|hsync~q\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_hs);

-- Location: IOOBUF_X68_Y27_N39
\hdmi_tx_vs~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \video_timing|vsync~q\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_vs);

-- Location: IOOBUF_X68_Y24_N39
\hdmi_tx_clk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_hdmi_tx_clk);

-- Location: IOOBUF_X19_Y61_N53
\i2c_scl~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_module|scl~q\,
	devoe => ww_devoe,
	o => ww_i2c_scl);

-- Location: IOOBUF_X38_Y61_N19
\i2c_sda~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_module|ALT_INV_sda~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_i2c_sda);

-- Location: IOIBUF_X68_Y22_N44
\clock_50_b5b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50_b5b,
	o => \clock_50_b5b~input_o\);

-- Location: PLLREFCLKSELECT_X68_Y7_N0
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_2",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X68_Y1_N0
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "816.666666 mhz",
	pll_atb => 0,
	pll_bwctrl => 10000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 49,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 49,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 3,
	pll_n_cnt_lo_div => 3,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 1,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \pll_clock|pll_74mhz_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \pll_clock|pll_74mhz_inst|altera_pll_i|fboutclk_wire\(0),
	lock => \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0),
	tclk => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X68_Y5_N0
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X68_Y0_N1
\pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 6,
	dprio0_cnt_lo_div => 5,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "74.242424 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 0)
-- pragma translate_on
PORT MAP (
	nen0 => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN0\,
	tclk0 => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \pll_clock|pll_74mhz_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G11
\pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire\(0),
	outclk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X61_Y18_N0
\i2c_module|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~21_sumout\ = SUM(( \i2c_module|div_cnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \i2c_module|Add0~22\ = CARRY(( \i2c_module|div_cnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_div_cnt[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \i2c_module|Add0~21_sumout\,
	cout => \i2c_module|Add0~22\);

-- Location: FF_X61_Y18_N1
\i2c_module|div_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~21_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(0));

-- Location: FF_X61_Y18_N10
\i2c_module|div_cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~9_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt[3]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y16_N12
\i2c_module|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Equal0~0_combout\ = ( !\i2c_module|div_cnt[3]~DUPLICATE_q\ & ( \i2c_module|div_cnt\(1) & ( (!\i2c_module|div_cnt\(0) & !\i2c_module|div_cnt\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2c_module|ALT_INV_div_cnt\(0),
	datac => \i2c_module|ALT_INV_div_cnt\(2),
	datae => \i2c_module|ALT_INV_div_cnt[3]~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_div_cnt\(1),
	combout => \i2c_module|Equal0~0_combout\);

-- Location: LABCELL_X61_Y18_N54
\i2c_module|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Equal0~2_combout\ = ( !\i2c_module|div_cnt\(7) & ( !\i2c_module|div_cnt\(9) & ( (\i2c_module|div_cnt\(8) & (\i2c_module|div_cnt\(5) & \i2c_module|div_cnt\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_div_cnt\(8),
	datab => \i2c_module|ALT_INV_div_cnt\(5),
	datac => \i2c_module|ALT_INV_div_cnt\(6),
	datae => \i2c_module|ALT_INV_div_cnt\(7),
	dataf => \i2c_module|ALT_INV_div_cnt\(9),
	combout => \i2c_module|Equal0~2_combout\);

-- Location: LABCELL_X61_Y16_N48
\i2c_module|div_cnt[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|div_cnt[15]~0_combout\ = ( \i2c_module|div_cnt\(4) & ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (\i2c_module|Equal0~1_combout\ & (\i2c_module|Equal0~0_combout\ & (\i2c_module|Equal0~2_combout\ & !\i2c_module|div_cnt\(10)))) ) 
-- ) ) # ( \i2c_module|div_cnt\(4) & ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) ) # ( !\i2c_module|div_cnt\(4) & ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_Equal0~1_combout\,
	datab => \i2c_module|ALT_INV_Equal0~0_combout\,
	datac => \i2c_module|ALT_INV_Equal0~2_combout\,
	datad => \i2c_module|ALT_INV_div_cnt\(10),
	datae => \i2c_module|ALT_INV_div_cnt\(4),
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \i2c_module|div_cnt[15]~0_combout\);

-- Location: FF_X61_Y18_N2
\i2c_module|div_cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~21_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y18_N3
\i2c_module|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~17_sumout\ = SUM(( \i2c_module|div_cnt\(1) ) + ( GND ) + ( \i2c_module|Add0~22\ ))
-- \i2c_module|Add0~18\ = CARRY(( \i2c_module|div_cnt\(1) ) + ( GND ) + ( \i2c_module|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_div_cnt\(1),
	cin => \i2c_module|Add0~22\,
	sumout => \i2c_module|Add0~17_sumout\,
	cout => \i2c_module|Add0~18\);

-- Location: FF_X61_Y18_N5
\i2c_module|div_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~17_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(1));

-- Location: LABCELL_X61_Y18_N6
\i2c_module|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~13_sumout\ = SUM(( \i2c_module|div_cnt\(2) ) + ( GND ) + ( \i2c_module|Add0~18\ ))
-- \i2c_module|Add0~14\ = CARRY(( \i2c_module|div_cnt\(2) ) + ( GND ) + ( \i2c_module|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2c_module|ALT_INV_div_cnt\(2),
	cin => \i2c_module|Add0~18\,
	sumout => \i2c_module|Add0~13_sumout\,
	cout => \i2c_module|Add0~14\);

-- Location: FF_X61_Y18_N8
\i2c_module|div_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~13_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(2));

-- Location: LABCELL_X61_Y18_N9
\i2c_module|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~9_sumout\ = SUM(( \i2c_module|div_cnt\(3) ) + ( GND ) + ( \i2c_module|Add0~14\ ))
-- \i2c_module|Add0~10\ = CARRY(( \i2c_module|div_cnt\(3) ) + ( GND ) + ( \i2c_module|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_div_cnt\(3),
	cin => \i2c_module|Add0~14\,
	sumout => \i2c_module|Add0~9_sumout\,
	cout => \i2c_module|Add0~10\);

-- Location: FF_X61_Y18_N11
\i2c_module|div_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~9_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(3));

-- Location: LABCELL_X61_Y18_N12
\i2c_module|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~5_sumout\ = SUM(( \i2c_module|div_cnt\(4) ) + ( GND ) + ( \i2c_module|Add0~10\ ))
-- \i2c_module|Add0~6\ = CARRY(( \i2c_module|div_cnt\(4) ) + ( GND ) + ( \i2c_module|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2c_module|ALT_INV_div_cnt\(4),
	cin => \i2c_module|Add0~10\,
	sumout => \i2c_module|Add0~5_sumout\,
	cout => \i2c_module|Add0~6\);

-- Location: FF_X61_Y18_N14
\i2c_module|div_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~5_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(4));

-- Location: LABCELL_X61_Y18_N15
\i2c_module|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~61_sumout\ = SUM(( \i2c_module|div_cnt\(5) ) + ( GND ) + ( \i2c_module|Add0~6\ ))
-- \i2c_module|Add0~62\ = CARRY(( \i2c_module|div_cnt\(5) ) + ( GND ) + ( \i2c_module|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_div_cnt\(5),
	cin => \i2c_module|Add0~6\,
	sumout => \i2c_module|Add0~61_sumout\,
	cout => \i2c_module|Add0~62\);

-- Location: FF_X61_Y18_N17
\i2c_module|div_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~61_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(5));

-- Location: LABCELL_X61_Y18_N18
\i2c_module|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~57_sumout\ = SUM(( \i2c_module|div_cnt\(6) ) + ( GND ) + ( \i2c_module|Add0~62\ ))
-- \i2c_module|Add0~58\ = CARRY(( \i2c_module|div_cnt\(6) ) + ( GND ) + ( \i2c_module|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_div_cnt\(6),
	cin => \i2c_module|Add0~62\,
	sumout => \i2c_module|Add0~57_sumout\,
	cout => \i2c_module|Add0~58\);

-- Location: FF_X61_Y18_N20
\i2c_module|div_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~57_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(6));

-- Location: LABCELL_X61_Y18_N21
\i2c_module|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~53_sumout\ = SUM(( \i2c_module|div_cnt\(7) ) + ( GND ) + ( \i2c_module|Add0~58\ ))
-- \i2c_module|Add0~54\ = CARRY(( \i2c_module|div_cnt\(7) ) + ( GND ) + ( \i2c_module|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_div_cnt\(7),
	cin => \i2c_module|Add0~58\,
	sumout => \i2c_module|Add0~53_sumout\,
	cout => \i2c_module|Add0~54\);

-- Location: FF_X61_Y18_N23
\i2c_module|div_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~53_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(7));

-- Location: LABCELL_X61_Y18_N24
\i2c_module|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~49_sumout\ = SUM(( \i2c_module|div_cnt\(8) ) + ( GND ) + ( \i2c_module|Add0~54\ ))
-- \i2c_module|Add0~50\ = CARRY(( \i2c_module|div_cnt\(8) ) + ( GND ) + ( \i2c_module|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_div_cnt\(8),
	cin => \i2c_module|Add0~54\,
	sumout => \i2c_module|Add0~49_sumout\,
	cout => \i2c_module|Add0~50\);

-- Location: FF_X61_Y18_N26
\i2c_module|div_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~49_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(8));

-- Location: LABCELL_X61_Y18_N27
\i2c_module|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~45_sumout\ = SUM(( \i2c_module|div_cnt\(9) ) + ( GND ) + ( \i2c_module|Add0~50\ ))
-- \i2c_module|Add0~46\ = CARRY(( \i2c_module|div_cnt\(9) ) + ( GND ) + ( \i2c_module|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_div_cnt\(9),
	cin => \i2c_module|Add0~50\,
	sumout => \i2c_module|Add0~45_sumout\,
	cout => \i2c_module|Add0~46\);

-- Location: FF_X61_Y18_N28
\i2c_module|div_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~45_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(9));

-- Location: LABCELL_X61_Y18_N30
\i2c_module|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~1_sumout\ = SUM(( \i2c_module|div_cnt\(10) ) + ( GND ) + ( \i2c_module|Add0~46\ ))
-- \i2c_module|Add0~2\ = CARRY(( \i2c_module|div_cnt\(10) ) + ( GND ) + ( \i2c_module|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_div_cnt\(10),
	cin => \i2c_module|Add0~46\,
	sumout => \i2c_module|Add0~1_sumout\,
	cout => \i2c_module|Add0~2\);

-- Location: FF_X61_Y18_N31
\i2c_module|div_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~1_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(10));

-- Location: LABCELL_X61_Y18_N33
\i2c_module|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~29_sumout\ = SUM(( \i2c_module|div_cnt\(11) ) + ( GND ) + ( \i2c_module|Add0~2\ ))
-- \i2c_module|Add0~30\ = CARRY(( \i2c_module|div_cnt\(11) ) + ( GND ) + ( \i2c_module|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_div_cnt\(11),
	cin => \i2c_module|Add0~2\,
	sumout => \i2c_module|Add0~29_sumout\,
	cout => \i2c_module|Add0~30\);

-- Location: FF_X61_Y18_N35
\i2c_module|div_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~29_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(11));

-- Location: LABCELL_X61_Y18_N36
\i2c_module|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~41_sumout\ = SUM(( \i2c_module|div_cnt\(12) ) + ( GND ) + ( \i2c_module|Add0~30\ ))
-- \i2c_module|Add0~42\ = CARRY(( \i2c_module|div_cnt\(12) ) + ( GND ) + ( \i2c_module|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_div_cnt\(12),
	cin => \i2c_module|Add0~30\,
	sumout => \i2c_module|Add0~41_sumout\,
	cout => \i2c_module|Add0~42\);

-- Location: FF_X61_Y18_N38
\i2c_module|div_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~41_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(12));

-- Location: LABCELL_X61_Y18_N39
\i2c_module|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~37_sumout\ = SUM(( \i2c_module|div_cnt\(13) ) + ( GND ) + ( \i2c_module|Add0~42\ ))
-- \i2c_module|Add0~38\ = CARRY(( \i2c_module|div_cnt\(13) ) + ( GND ) + ( \i2c_module|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_div_cnt\(13),
	cin => \i2c_module|Add0~42\,
	sumout => \i2c_module|Add0~37_sumout\,
	cout => \i2c_module|Add0~38\);

-- Location: FF_X61_Y18_N41
\i2c_module|div_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~37_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(13));

-- Location: LABCELL_X61_Y18_N42
\i2c_module|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~33_sumout\ = SUM(( \i2c_module|div_cnt\(14) ) + ( GND ) + ( \i2c_module|Add0~38\ ))
-- \i2c_module|Add0~34\ = CARRY(( \i2c_module|div_cnt\(14) ) + ( GND ) + ( \i2c_module|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2c_module|ALT_INV_div_cnt\(14),
	cin => \i2c_module|Add0~38\,
	sumout => \i2c_module|Add0~33_sumout\,
	cout => \i2c_module|Add0~34\);

-- Location: FF_X61_Y18_N44
\i2c_module|div_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~33_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(14));

-- Location: LABCELL_X61_Y18_N45
\i2c_module|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add0~25_sumout\ = SUM(( \i2c_module|div_cnt\(15) ) + ( GND ) + ( \i2c_module|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_div_cnt\(15),
	cin => \i2c_module|Add0~34\,
	sumout => \i2c_module|Add0~25_sumout\);

-- Location: FF_X61_Y18_N47
\i2c_module|div_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add0~25_sumout\,
	sclr => \i2c_module|div_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|div_cnt\(15));

-- Location: LABCELL_X61_Y18_N48
\i2c_module|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Equal0~1_combout\ = ( !\i2c_module|div_cnt\(15) & ( !\i2c_module|div_cnt\(14) & ( (!\i2c_module|div_cnt\(11) & (!\i2c_module|div_cnt\(13) & !\i2c_module|div_cnt\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_div_cnt\(11),
	datab => \i2c_module|ALT_INV_div_cnt\(13),
	datac => \i2c_module|ALT_INV_div_cnt\(12),
	datae => \i2c_module|ALT_INV_div_cnt\(15),
	dataf => \i2c_module|ALT_INV_div_cnt\(14),
	combout => \i2c_module|Equal0~1_combout\);

-- Location: LABCELL_X61_Y16_N18
\i2c_module|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|tick~0_combout\ = ( \i2c_module|div_cnt\(4) & ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (\i2c_module|Equal0~1_combout\ & (\i2c_module|Equal0~0_combout\ & (\i2c_module|Equal0~2_combout\ & !\i2c_module|div_cnt\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_Equal0~1_combout\,
	datab => \i2c_module|ALT_INV_Equal0~0_combout\,
	datac => \i2c_module|ALT_INV_Equal0~2_combout\,
	datad => \i2c_module|ALT_INV_div_cnt\(10),
	datae => \i2c_module|ALT_INV_div_cnt\(4),
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \i2c_module|tick~0_combout\);

-- Location: FF_X61_Y16_N19
\i2c_module|tick~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|tick~DUPLICATE_q\);

-- Location: LABCELL_X61_Y16_N45
\i2c_module|scl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|scl~0_combout\ = ( \i2c_module|tick~DUPLICATE_q\ ) # ( !\i2c_module|tick~DUPLICATE_q\ & ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	dataf => \i2c_module|ALT_INV_tick~DUPLICATE_q\,
	combout => \i2c_module|scl~0_combout\);

-- Location: FF_X61_Y16_N8
\i2c_module|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_IDLE~q\);

-- Location: FF_X61_Y16_N28
\i2c_module|state.ST_NEXT_PAIR~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~17_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\);

-- Location: LABCELL_X61_Y17_N9
\i2c_module|byte_idx[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|byte_idx[0]~0_combout\ = ( !\i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\ & ( (\i2c_module|state.ST_IDLE~q\ & !\i2c_module|state.ST_ACK_DONE~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_state.ST_IDLE~q\,
	datad => \i2c_module|ALT_INV_state.ST_ACK_DONE~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_state.ST_NEXT_PAIR~DUPLICATE_q\,
	combout => \i2c_module|byte_idx[0]~0_combout\);

-- Location: LABCELL_X61_Y17_N48
\i2c_module|bit_cnt[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|bit_cnt[2]~2_combout\ = ( \i2c_module|state.ST_IDLE~q\ & ( (!\i2c_module|state.ST_BIT_DONE~q\ & (!\i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\ & !\i2c_module|state.ST_ACK_DONE~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2c_module|ALT_INV_state.ST_BIT_DONE~q\,
	datac => \i2c_module|ALT_INV_state.ST_NEXT_PAIR~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_state.ST_ACK_DONE~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_state.ST_IDLE~q\,
	combout => \i2c_module|bit_cnt[2]~2_combout\);

-- Location: FF_X61_Y17_N31
\i2c_module|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|bit_cnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|bit_cnt\(1));

-- Location: FF_X61_Y17_N25
\i2c_module|bit_cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|bit_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|bit_cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y17_N15
\i2c_module|bit_cnt[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|bit_cnt[1]~3_combout\ = ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (\i2c_module|state.ST_BIT_DONE~q\ & (!\i2c_module|bit_cnt\(1) $ (!\i2c_module|bit_cnt[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_bit_cnt\(1),
	datac => \i2c_module|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_state.ST_BIT_DONE~q\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \i2c_module|bit_cnt[1]~3_combout\);

-- Location: LABCELL_X61_Y17_N30
\i2c_module|bit_cnt[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|bit_cnt[1]~4_combout\ = ( \i2c_module|bit_cnt\(1) & ( \i2c_module|bit_cnt[2]~0_combout\ & ( (!\i2c_module|bit_cnt[1]~3_combout\) # (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0)) ) ) ) # ( !\i2c_module|bit_cnt\(1) & ( 
-- \i2c_module|bit_cnt[2]~0_combout\ & ( (!\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & !\i2c_module|bit_cnt[1]~3_combout\) ) ) ) # ( \i2c_module|bit_cnt\(1) & ( !\i2c_module|bit_cnt[2]~0_combout\ & ( (!\i2c_module|bit_cnt[1]~3_combout\) # 
-- ((\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ((!\i2c_module|byte_idx[0]~3_combout\) # (\i2c_module|bit_cnt[2]~2_combout\)))) ) ) ) # ( !\i2c_module|bit_cnt\(1) & ( !\i2c_module|bit_cnt[2]~0_combout\ & ( (!\i2c_module|bit_cnt[1]~3_combout\ & 
-- ((!\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0)) # ((\i2c_module|byte_idx[0]~3_combout\ & !\i2c_module|bit_cnt[2]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101000000000111111110100010110101010000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datab => \i2c_module|ALT_INV_byte_idx[0]~3_combout\,
	datac => \i2c_module|ALT_INV_bit_cnt[2]~2_combout\,
	datad => \i2c_module|ALT_INV_bit_cnt[1]~3_combout\,
	datae => \i2c_module|ALT_INV_bit_cnt\(1),
	dataf => \i2c_module|ALT_INV_bit_cnt[2]~0_combout\,
	combout => \i2c_module|bit_cnt[1]~4_combout\);

-- Location: FF_X61_Y17_N32
\i2c_module|bit_cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|bit_cnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|bit_cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y17_N42
\i2c_module|bit_cnt[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|bit_cnt[2]~5_combout\ = ( !\i2c_module|state.ST_BIT_DONE~q\ & ( (!\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0)) # (((\i2c_module|byte_idx[0]~3_combout\ & (!\i2c_module|byte_idx[0]~0_combout\))) # (\i2c_module|bit_cnt\(2))) ) ) # ( 
-- \i2c_module|state.ST_BIT_DONE~q\ & ( (!\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0)) # ((\i2c_module|bit_cnt\(2) & ((!\i2c_module|byte_idx[0]~3_combout\) # ((\i2c_module|bit_cnt\(1)) # (\i2c_module|bit_cnt\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1011101011111111101010101110111110111010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datab => \i2c_module|ALT_INV_byte_idx[0]~3_combout\,
	datac => \i2c_module|ALT_INV_bit_cnt\(0),
	datad => \i2c_module|ALT_INV_bit_cnt\(2),
	datae => \i2c_module|ALT_INV_state.ST_BIT_DONE~q\,
	dataf => \i2c_module|ALT_INV_bit_cnt\(1),
	datag => \i2c_module|ALT_INV_byte_idx[0]~0_combout\,
	combout => \i2c_module|bit_cnt[2]~5_combout\);

-- Location: FF_X61_Y17_N44
\i2c_module|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|bit_cnt[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|bit_cnt\(2));

-- Location: LABCELL_X61_Y17_N12
\i2c_module|bit_cnt[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|bit_cnt[2]~0_combout\ = ( !\i2c_module|bit_cnt\(2) & ( (!\i2c_module|bit_cnt[1]~DUPLICATE_q\ & (!\i2c_module|bit_cnt\(0) & \i2c_module|state.ST_BIT_DONE~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2c_module|ALT_INV_bit_cnt[1]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_bit_cnt\(0),
	datad => \i2c_module|ALT_INV_state.ST_BIT_DONE~q\,
	dataf => \i2c_module|ALT_INV_bit_cnt\(2),
	combout => \i2c_module|bit_cnt[2]~0_combout\);

-- Location: LABCELL_X61_Y17_N24
\i2c_module|bit_cnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|bit_cnt[0]~1_combout\ = ( \i2c_module|bit_cnt\(0) & ( \i2c_module|bit_cnt[2]~0_combout\ ) ) # ( !\i2c_module|bit_cnt\(0) & ( \i2c_module|bit_cnt[2]~0_combout\ & ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) ) ) # ( 
-- \i2c_module|bit_cnt\(0) & ( !\i2c_module|bit_cnt[2]~0_combout\ & ( (!\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0)) # ((!\i2c_module|byte_idx[0]~3_combout\) # (!\i2c_module|state.ST_BIT_DONE~q\)) ) ) ) # ( !\i2c_module|bit_cnt\(0) & ( 
-- !\i2c_module|bit_cnt[2]~0_combout\ & ( (!\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0)) # ((\i2c_module|byte_idx[0]~3_combout\ & ((!\i2c_module|byte_idx[0]~0_combout\) # (\i2c_module|state.ST_BIT_DONE~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010111011111111111110111010101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datab => \i2c_module|ALT_INV_byte_idx[0]~3_combout\,
	datac => \i2c_module|ALT_INV_byte_idx[0]~0_combout\,
	datad => \i2c_module|ALT_INV_state.ST_BIT_DONE~q\,
	datae => \i2c_module|ALT_INV_bit_cnt\(0),
	dataf => \i2c_module|ALT_INV_bit_cnt[2]~0_combout\,
	combout => \i2c_module|bit_cnt[0]~1_combout\);

-- Location: FF_X61_Y17_N26
\i2c_module|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|bit_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|bit_cnt\(0));

-- Location: MLABCELL_X60_Y17_N51
\i2c_module|state~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~23_combout\ = (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & \i2c_module|state.ST_START1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datad => \i2c_module|ALT_INV_state.ST_START1~q\,
	combout => \i2c_module|state~23_combout\);

-- Location: FF_X60_Y17_N53
\i2c_module|state.ST_START2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~23_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_START2~q\);

-- Location: LABCELL_X63_Y17_N30
\i2c_module|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add3~29_sumout\ = SUM(( \i2c_module|pair_idx\(0) ) + ( VCC ) + ( !VCC ))
-- \i2c_module|Add3~30\ = CARRY(( \i2c_module|pair_idx\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2c_module|ALT_INV_pair_idx\(0),
	cin => GND,
	sumout => \i2c_module|Add3~29_sumout\,
	cout => \i2c_module|Add3~30\);

-- Location: FF_X63_Y17_N31
\i2c_module|pair_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add3~29_sumout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|pair_idx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|pair_idx\(0));

-- Location: LABCELL_X63_Y17_N33
\i2c_module|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add3~1_sumout\ = SUM(( \i2c_module|pair_idx\(1) ) + ( GND ) + ( \i2c_module|Add3~30\ ))
-- \i2c_module|Add3~2\ = CARRY(( \i2c_module|pair_idx\(1) ) + ( GND ) + ( \i2c_module|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2c_module|ALT_INV_pair_idx\(1),
	cin => \i2c_module|Add3~30\,
	sumout => \i2c_module|Add3~1_sumout\,
	cout => \i2c_module|Add3~2\);

-- Location: LABCELL_X63_Y17_N36
\i2c_module|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add3~5_sumout\ = SUM(( \i2c_module|pair_idx\(2) ) + ( GND ) + ( \i2c_module|Add3~2\ ))
-- \i2c_module|Add3~6\ = CARRY(( \i2c_module|pair_idx\(2) ) + ( GND ) + ( \i2c_module|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2c_module|ALT_INV_pair_idx\(2),
	cin => \i2c_module|Add3~2\,
	sumout => \i2c_module|Add3~5_sumout\,
	cout => \i2c_module|Add3~6\);

-- Location: FF_X63_Y17_N37
\i2c_module|pair_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add3~5_sumout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|pair_idx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|pair_idx\(2));

-- Location: LABCELL_X63_Y17_N39
\i2c_module|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add3~25_sumout\ = SUM(( \i2c_module|pair_idx\(3) ) + ( GND ) + ( \i2c_module|Add3~6\ ))
-- \i2c_module|Add3~26\ = CARRY(( \i2c_module|pair_idx\(3) ) + ( GND ) + ( \i2c_module|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2c_module|ALT_INV_pair_idx\(3),
	cin => \i2c_module|Add3~6\,
	sumout => \i2c_module|Add3~25_sumout\,
	cout => \i2c_module|Add3~26\);

-- Location: FF_X63_Y17_N41
\i2c_module|pair_idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add3~25_sumout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|pair_idx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|pair_idx\(3));

-- Location: LABCELL_X63_Y17_N42
\i2c_module|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add3~21_sumout\ = SUM(( \i2c_module|pair_idx\(4) ) + ( GND ) + ( \i2c_module|Add3~26\ ))
-- \i2c_module|Add3~22\ = CARRY(( \i2c_module|pair_idx\(4) ) + ( GND ) + ( \i2c_module|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2c_module|ALT_INV_pair_idx\(4),
	cin => \i2c_module|Add3~26\,
	sumout => \i2c_module|Add3~21_sumout\,
	cout => \i2c_module|Add3~22\);

-- Location: FF_X63_Y17_N43
\i2c_module|pair_idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add3~21_sumout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|pair_idx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|pair_idx\(4));

-- Location: LABCELL_X63_Y17_N45
\i2c_module|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add3~17_sumout\ = SUM(( \i2c_module|pair_idx\(5) ) + ( GND ) + ( \i2c_module|Add3~22\ ))
-- \i2c_module|Add3~18\ = CARRY(( \i2c_module|pair_idx\(5) ) + ( GND ) + ( \i2c_module|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2c_module|ALT_INV_pair_idx\(5),
	cin => \i2c_module|Add3~22\,
	sumout => \i2c_module|Add3~17_sumout\,
	cout => \i2c_module|Add3~18\);

-- Location: FF_X63_Y17_N47
\i2c_module|pair_idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add3~17_sumout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|pair_idx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|pair_idx\(5));

-- Location: LABCELL_X63_Y17_N48
\i2c_module|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add3~13_sumout\ = SUM(( \i2c_module|pair_idx\(6) ) + ( GND ) + ( \i2c_module|Add3~18\ ))
-- \i2c_module|Add3~14\ = CARRY(( \i2c_module|pair_idx\(6) ) + ( GND ) + ( \i2c_module|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2c_module|ALT_INV_pair_idx\(6),
	cin => \i2c_module|Add3~18\,
	sumout => \i2c_module|Add3~13_sumout\,
	cout => \i2c_module|Add3~14\);

-- Location: FF_X63_Y17_N50
\i2c_module|pair_idx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add3~13_sumout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|pair_idx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|pair_idx\(6));

-- Location: LABCELL_X63_Y17_N51
\i2c_module|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Add3~9_sumout\ = SUM(( \i2c_module|pair_idx\(7) ) + ( GND ) + ( \i2c_module|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2c_module|ALT_INV_pair_idx\(7),
	cin => \i2c_module|Add3~14\,
	sumout => \i2c_module|Add3~9_sumout\);

-- Location: FF_X63_Y17_N53
\i2c_module|pair_idx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add3~9_sumout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|pair_idx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|pair_idx\(7));

-- Location: LABCELL_X63_Y17_N18
\i2c_module|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|LessThan0~0_combout\ = ( !\i2c_module|pair_idx\(3) & ( (!\i2c_module|pair_idx\(7) & (!\i2c_module|pair_idx\(5) & (!\i2c_module|pair_idx\(6) & !\i2c_module|pair_idx\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_pair_idx\(7),
	datab => \i2c_module|ALT_INV_pair_idx\(5),
	datac => \i2c_module|ALT_INV_pair_idx\(6),
	datad => \i2c_module|ALT_INV_pair_idx\(4),
	dataf => \i2c_module|ALT_INV_pair_idx\(3),
	combout => \i2c_module|LessThan0~0_combout\);

-- Location: LABCELL_X63_Y17_N24
\i2c_module|pair_idx[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|pair_idx[7]~0_combout\ = ( !\i2c_module|pair_idx\(2) & ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (\i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\ & (\i2c_module|tick~DUPLICATE_q\ & (!\i2c_module|pair_idx[1]~DUPLICATE_q\ & 
-- \i2c_module|LessThan0~0_combout\))) ) ) ) # ( \i2c_module|pair_idx\(2) & ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) ) # ( !\i2c_module|pair_idx\(2) & ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_state.ST_NEXT_PAIR~DUPLICATE_q\,
	datab => \i2c_module|ALT_INV_tick~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_LessThan0~0_combout\,
	datae => \i2c_module|ALT_INV_pair_idx\(2),
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \i2c_module|pair_idx[7]~0_combout\);

-- Location: FF_X63_Y17_N35
\i2c_module|pair_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add3~1_sumout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|pair_idx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|pair_idx\(1));

-- Location: FF_X63_Y17_N34
\i2c_module|pair_idx[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add3~1_sumout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|pair_idx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|pair_idx[1]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y17_N15
\i2c_module|state~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~25_combout\ = ( \i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\ & ( ((!\i2c_module|LessThan0~0_combout\) # (\i2c_module|pair_idx\(2))) # (\i2c_module|pair_idx[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\,
	datab => \i2c_module|ALT_INV_LessThan0~0_combout\,
	datac => \i2c_module|ALT_INV_pair_idx\(2),
	dataf => \i2c_module|ALT_INV_state.ST_NEXT_PAIR~DUPLICATE_q\,
	combout => \i2c_module|state~25_combout\);

-- Location: FF_X60_Y17_N25
\i2c_module|byte_idx[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|byte_idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|byte_idx[0]~DUPLICATE_q\);

-- Location: FF_X60_Y17_N31
\i2c_module|byte_idx[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|byte_idx[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|byte_idx[1]~DUPLICATE_q\);

-- Location: MLABCELL_X60_Y17_N36
\i2c_module|byte_idx[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|byte_idx[0]~1_combout\ = (\i2c_module|tick~DUPLICATE_q\ & ((!\i2c_module|state.ST_ACK_DONE~DUPLICATE_q\) # ((!\i2c_module|byte_idx[1]~DUPLICATE_q\) # (\i2c_module|byte_idx[0]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111101100000000111110110000000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_state.ST_ACK_DONE~DUPLICATE_q\,
	datab => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_tick~DUPLICATE_q\,
	combout => \i2c_module|byte_idx[0]~1_combout\);

-- Location: MLABCELL_X60_Y17_N24
\i2c_module|byte_idx[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|byte_idx[0]~2_combout\ = ( \i2c_module|byte_idx\(0) & ( \i2c_module|state.ST_ACK_DONE~DUPLICATE_q\ & ( (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & (((!\i2c_module|byte_idx[0]~1_combout\) # (\i2c_module|state~25_combout\)) # 
-- (\i2c_module|byte_idx[0]~0_combout\))) ) ) ) # ( !\i2c_module|byte_idx\(0) & ( \i2c_module|state.ST_ACK_DONE~DUPLICATE_q\ & ( (!\i2c_module|byte_idx[0]~0_combout\ & (!\i2c_module|state~25_combout\ & (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) 
-- & \i2c_module|byte_idx[0]~1_combout\))) ) ) ) # ( \i2c_module|byte_idx\(0) & ( !\i2c_module|state.ST_ACK_DONE~DUPLICATE_q\ & ( (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & (((!\i2c_module|byte_idx[0]~1_combout\) # 
-- (\i2c_module|state~25_combout\)) # (\i2c_module|byte_idx[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000011100000000000010000000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_byte_idx[0]~0_combout\,
	datab => \i2c_module|ALT_INV_state~25_combout\,
	datac => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datad => \i2c_module|ALT_INV_byte_idx[0]~1_combout\,
	datae => \i2c_module|ALT_INV_byte_idx\(0),
	dataf => \i2c_module|ALT_INV_state.ST_ACK_DONE~DUPLICATE_q\,
	combout => \i2c_module|byte_idx[0]~2_combout\);

-- Location: FF_X60_Y17_N26
\i2c_module|byte_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|byte_idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|byte_idx\(0));

-- Location: MLABCELL_X60_Y17_N0
\i2c_module|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Selector9~0_combout\ = ( \i2c_module|byte_idx[1]~DUPLICATE_q\ & ( ((\i2c_module|byte_idx\(0) & \i2c_module|state.ST_ACK_DONE~DUPLICATE_q\)) # (\i2c_module|state.ST_START2~q\) ) ) # ( !\i2c_module|byte_idx[1]~DUPLICATE_q\ & ( 
-- (\i2c_module|state.ST_ACK_DONE~DUPLICATE_q\) # (\i2c_module|state.ST_START2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_state.ST_START2~q\,
	datac => \i2c_module|ALT_INV_byte_idx\(0),
	datad => \i2c_module|ALT_INV_state.ST_ACK_DONE~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\,
	combout => \i2c_module|Selector9~0_combout\);

-- Location: FF_X60_Y17_N1
\i2c_module|state.ST_LOAD_BYTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Selector9~0_combout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_LOAD_BYTE~q\);

-- Location: LABCELL_X61_Y17_N3
\i2c_module|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Selector10~0_combout\ = ( \i2c_module|bit_cnt[1]~DUPLICATE_q\ & ( (\i2c_module|state.ST_BIT_DONE~q\) # (\i2c_module|state.ST_LOAD_BYTE~q\) ) ) # ( !\i2c_module|bit_cnt[1]~DUPLICATE_q\ & ( ((\i2c_module|state.ST_BIT_DONE~q\ & 
-- ((\i2c_module|bit_cnt\(2)) # (\i2c_module|bit_cnt\(0))))) # (\i2c_module|state.ST_LOAD_BYTE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101111111001100110111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_bit_cnt\(0),
	datab => \i2c_module|ALT_INV_state.ST_LOAD_BYTE~q\,
	datac => \i2c_module|ALT_INV_bit_cnt\(2),
	datad => \i2c_module|ALT_INV_state.ST_BIT_DONE~q\,
	dataf => \i2c_module|ALT_INV_bit_cnt[1]~DUPLICATE_q\,
	combout => \i2c_module|Selector10~0_combout\);

-- Location: FF_X61_Y17_N4
\i2c_module|state.ST_BIT_LOW~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Selector10~0_combout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_BIT_LOW~DUPLICATE_q\);

-- Location: LABCELL_X61_Y16_N33
\i2c_module|state~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~21_combout\ = ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( \i2c_module|state.ST_BIT_LOW~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2c_module|ALT_INV_state.ST_BIT_LOW~DUPLICATE_q\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \i2c_module|state~21_combout\);

-- Location: FF_X61_Y16_N34
\i2c_module|state.ST_BIT_HIGH~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~21_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_BIT_HIGH~DUPLICATE_q\);

-- Location: MLABCELL_X60_Y17_N39
\i2c_module|state~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~26_combout\ = ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( \i2c_module|state.ST_BIT_HIGH~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_state.ST_BIT_HIGH~DUPLICATE_q\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \i2c_module|state~26_combout\);

-- Location: FF_X60_Y17_N40
\i2c_module|state.ST_BIT_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~26_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_BIT_DONE~q\);

-- Location: LABCELL_X61_Y17_N51
\i2c_module|state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~22_combout\ = ( !\i2c_module|bit_cnt[1]~DUPLICATE_q\ & ( (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & (\i2c_module|state.ST_BIT_DONE~q\ & (!\i2c_module|bit_cnt\(2) & !\i2c_module|bit_cnt[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datab => \i2c_module|ALT_INV_state.ST_BIT_DONE~q\,
	datac => \i2c_module|ALT_INV_bit_cnt\(2),
	datad => \i2c_module|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_bit_cnt[1]~DUPLICATE_q\,
	combout => \i2c_module|state~22_combout\);

-- Location: FF_X61_Y17_N52
\i2c_module|state.ST_ACK_LOW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~22_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_ACK_LOW~q\);

-- Location: LABCELL_X61_Y17_N0
\i2c_module|state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~16_combout\ = ( \i2c_module|state.ST_ACK_LOW~q\ & ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	dataf => \i2c_module|ALT_INV_state.ST_ACK_LOW~q\,
	combout => \i2c_module|state~16_combout\);

-- Location: FF_X61_Y17_N1
\i2c_module|state.ST_ACK_HIGH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~16_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_ACK_HIGH~q\);

-- Location: MLABCELL_X60_Y17_N48
\i2c_module|state~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~24_combout\ = ( \i2c_module|state.ST_ACK_HIGH~q\ & ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	dataf => \i2c_module|ALT_INV_state.ST_ACK_HIGH~q\,
	combout => \i2c_module|state~24_combout\);

-- Location: FF_X60_Y17_N49
\i2c_module|state.ST_ACK_DONE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~24_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_ACK_DONE~DUPLICATE_q\);

-- Location: LABCELL_X63_Y17_N21
\i2c_module|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|LessThan0~1_combout\ = ( !\i2c_module|pair_idx[1]~DUPLICATE_q\ & ( (!\i2c_module|pair_idx\(2) & \i2c_module|LessThan0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_pair_idx\(2),
	datad => \i2c_module|ALT_INV_LessThan0~0_combout\,
	dataf => \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\,
	combout => \i2c_module|LessThan0~1_combout\);

-- Location: MLABCELL_X60_Y17_N42
\i2c_module|byte_idx[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|byte_idx[0]~3_combout\ = ( \i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\ & ( \i2c_module|LessThan0~1_combout\ & ( (\i2c_module|tick~DUPLICATE_q\ & ((!\i2c_module|state.ST_ACK_DONE~DUPLICATE_q\) # ((!\i2c_module|byte_idx[1]~DUPLICATE_q\) # 
-- (\i2c_module|byte_idx[0]~DUPLICATE_q\)))) ) ) ) # ( !\i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\ & ( \i2c_module|LessThan0~1_combout\ & ( (\i2c_module|tick~DUPLICATE_q\ & ((!\i2c_module|state.ST_ACK_DONE~DUPLICATE_q\) # 
-- ((!\i2c_module|byte_idx[1]~DUPLICATE_q\) # (\i2c_module|byte_idx[0]~DUPLICATE_q\)))) ) ) ) # ( !\i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\ & ( !\i2c_module|LessThan0~1_combout\ & ( (\i2c_module|tick~DUPLICATE_q\ & 
-- ((!\i2c_module|state.ST_ACK_DONE~DUPLICATE_q\) # ((!\i2c_module|byte_idx[1]~DUPLICATE_q\) # (\i2c_module|byte_idx[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000000000000000000000111110110000000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_state.ST_ACK_DONE~DUPLICATE_q\,
	datab => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_tick~DUPLICATE_q\,
	datae => \i2c_module|ALT_INV_state.ST_NEXT_PAIR~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_LessThan0~1_combout\,
	combout => \i2c_module|byte_idx[0]~3_combout\);

-- Location: FF_X60_Y17_N50
\i2c_module|state.ST_ACK_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~24_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_ACK_DONE~q\);

-- Location: MLABCELL_X60_Y17_N30
\i2c_module|byte_idx[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|byte_idx[1]~4_combout\ = ( \i2c_module|byte_idx\(1) & ( \i2c_module|byte_idx[0]~DUPLICATE_q\ & ( (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ((!\i2c_module|byte_idx[0]~3_combout\) # (\i2c_module|byte_idx[0]~0_combout\))) ) ) ) # 
-- ( !\i2c_module|byte_idx\(1) & ( \i2c_module|byte_idx[0]~DUPLICATE_q\ & ( (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & (\i2c_module|byte_idx[0]~3_combout\ & (\i2c_module|state.ST_ACK_DONE~q\ & !\i2c_module|byte_idx[0]~0_combout\))) ) ) ) # ( 
-- \i2c_module|byte_idx\(1) & ( !\i2c_module|byte_idx[0]~DUPLICATE_q\ & ( (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ((!\i2c_module|byte_idx[0]~3_combout\) # ((\i2c_module|byte_idx[0]~0_combout\) # (\i2c_module|state.ST_ACK_DONE~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001010101010100000001000000000100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datab => \i2c_module|ALT_INV_byte_idx[0]~3_combout\,
	datac => \i2c_module|ALT_INV_state.ST_ACK_DONE~q\,
	datad => \i2c_module|ALT_INV_byte_idx[0]~0_combout\,
	datae => \i2c_module|ALT_INV_byte_idx\(1),
	dataf => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	combout => \i2c_module|byte_idx[1]~4_combout\);

-- Location: FF_X60_Y17_N32
\i2c_module|byte_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|byte_idx[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|byte_idx\(1));

-- Location: MLABCELL_X60_Y17_N15
\i2c_module|state~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~19_combout\ = ( \i2c_module|state.ST_ACK_DONE~DUPLICATE_q\ & ( !\i2c_module|byte_idx[0]~DUPLICATE_q\ & ( (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & \i2c_module|byte_idx\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datac => \i2c_module|ALT_INV_byte_idx\(1),
	datae => \i2c_module|ALT_INV_state.ST_ACK_DONE~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	combout => \i2c_module|state~19_combout\);

-- Location: FF_X60_Y17_N16
\i2c_module|state.ST_STOP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~19_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_STOP1~q\);

-- Location: LABCELL_X61_Y16_N24
\i2c_module|state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~18_combout\ = (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & \i2c_module|state.ST_STOP1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datac => \i2c_module|ALT_INV_state.ST_STOP1~q\,
	combout => \i2c_module|state~18_combout\);

-- Location: FF_X61_Y16_N25
\i2c_module|state.ST_STOP2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~18_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_STOP2~q\);

-- Location: LABCELL_X61_Y16_N27
\i2c_module|state~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~17_combout\ = ( \i2c_module|state.ST_STOP2~q\ & ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	dataf => \i2c_module|ALT_INV_state.ST_STOP2~q\,
	combout => \i2c_module|state~17_combout\);

-- Location: FF_X61_Y16_N29
\i2c_module|state.ST_NEXT_PAIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~17_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_NEXT_PAIR~q\);

-- Location: LABCELL_X61_Y16_N0
\i2c_module|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Selector7~0_combout\ = ( \i2c_module|pair_idx[1]~DUPLICATE_q\ & ( !\i2c_module|state.ST_IDLE~q\ ) ) # ( !\i2c_module|pair_idx[1]~DUPLICATE_q\ & ( (!\i2c_module|state.ST_IDLE~q\) # ((\i2c_module|state.ST_NEXT_PAIR~q\ & 
-- (\i2c_module|LessThan0~0_combout\ & !\i2c_module|pair_idx\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010000111111110000000011111111000100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_state.ST_NEXT_PAIR~q\,
	datab => \i2c_module|ALT_INV_LessThan0~0_combout\,
	datac => \i2c_module|ALT_INV_pair_idx\(2),
	datad => \i2c_module|ALT_INV_state.ST_IDLE~q\,
	datae => \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\,
	combout => \i2c_module|Selector7~0_combout\);

-- Location: FF_X61_Y16_N1
\i2c_module|state.ST_START1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Selector7~0_combout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_START1~q\);

-- Location: MLABCELL_X60_Y17_N3
\i2c_module|sda~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|sda~2_combout\ = ( !\i2c_module|state.ST_ACK_LOW~q\ & ( (!\i2c_module|state.ST_START2~q\ & (!\i2c_module|state.ST_ACK_DONE~DUPLICATE_q\ & !\i2c_module|state.ST_BIT_HIGH~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_state.ST_START2~q\,
	datab => \i2c_module|ALT_INV_state.ST_ACK_DONE~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_state.ST_BIT_HIGH~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_state.ST_ACK_LOW~q\,
	combout => \i2c_module|sda~2_combout\);

-- Location: MLABCELL_X60_Y17_N18
\i2c_module|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Selector26~0_combout\ = ( !\i2c_module|state.ST_LOAD_BYTE~q\ & ( !\i2c_module|state.ST_ACK_HIGH~q\ & ( (!\i2c_module|state.ST_START1~q\ & (!\i2c_module|state.ST_STOP1~q\ & (\i2c_module|sda~2_combout\ & 
-- !\i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_state.ST_START1~q\,
	datab => \i2c_module|ALT_INV_state.ST_STOP1~q\,
	datac => \i2c_module|ALT_INV_sda~2_combout\,
	datad => \i2c_module|ALT_INV_state.ST_NEXT_PAIR~DUPLICATE_q\,
	datae => \i2c_module|ALT_INV_state.ST_LOAD_BYTE~q\,
	dataf => \i2c_module|ALT_INV_state.ST_ACK_HIGH~q\,
	combout => \i2c_module|Selector26~0_combout\);

-- Location: FF_X61_Y17_N5
\i2c_module|state.ST_BIT_LOW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Selector10~0_combout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_BIT_LOW~q\);

-- Location: LABCELL_X63_Y17_N12
\i2c_module|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Mux5~0_combout\ = ( \i2c_module|pair_idx\(0) & ( (!\i2c_module|pair_idx[1]~DUPLICATE_q\ & (\i2c_module|byte_idx[0]~DUPLICATE_q\ & !\i2c_module|byte_idx[1]~DUPLICATE_q\)) ) ) # ( !\i2c_module|pair_idx\(0) & ( 
-- (!\i2c_module|pair_idx[1]~DUPLICATE_q\ & ((\i2c_module|byte_idx[1]~DUPLICATE_q\) # (\i2c_module|byte_idx[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_pair_idx\(0),
	combout => \i2c_module|Mux5~0_combout\);

-- Location: LABCELL_X61_Y17_N39
\i2c_module|tx_byte~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|tx_byte~0_combout\ = ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (\i2c_module|state.ST_LOAD_BYTE~q\ & \i2c_module|tick~DUPLICATE_q\) ) ) # ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2c_module|ALT_INV_state.ST_LOAD_BYTE~q\,
	datad => \i2c_module|ALT_INV_tick~DUPLICATE_q\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \i2c_module|tx_byte~0_combout\);

-- Location: FF_X63_Y17_N13
\i2c_module|tx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Mux5~0_combout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|tx_byte~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|tx_byte\(2));

-- Location: FF_X63_Y17_N32
\i2c_module|pair_idx[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Add3~29_sumout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|pair_idx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|pair_idx[0]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y17_N9
\i2c_module|tx_byte~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|tx_byte~3_combout\ = ( \i2c_module|pair_idx[1]~DUPLICATE_q\ & ( (!\i2c_module|byte_idx[1]~DUPLICATE_q\ & (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ((!\i2c_module|byte_idx[0]~DUPLICATE_q\) # 
-- (!\i2c_module|pair_idx[0]~DUPLICATE_q\)))) ) ) # ( !\i2c_module|pair_idx[1]~DUPLICATE_q\ & ( (!\i2c_module|byte_idx[0]~DUPLICATE_q\ & (!\i2c_module|byte_idx[1]~DUPLICATE_q\ & \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	datab => \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_pair_idx[0]~DUPLICATE_q\,
	datad => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	dataf => \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\,
	combout => \i2c_module|tx_byte~3_combout\);

-- Location: FF_X63_Y17_N10
\i2c_module|tx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|tx_byte~3_combout\,
	ena => \i2c_module|tx_byte~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|tx_byte\(6));

-- Location: LABCELL_X63_Y17_N57
\i2c_module|tx_byte~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|tx_byte~2_combout\ = ( !\i2c_module|pair_idx[1]~DUPLICATE_q\ & ( (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & (!\i2c_module|pair_idx[0]~DUPLICATE_q\ & (!\i2c_module|byte_idx[1]~DUPLICATE_q\ & 
-- \i2c_module|byte_idx[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datab => \i2c_module|ALT_INV_pair_idx[0]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\,
	combout => \i2c_module|tx_byte~2_combout\);

-- Location: FF_X63_Y17_N58
\i2c_module|tx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|tx_byte~2_combout\,
	ena => \i2c_module|tx_byte~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|tx_byte\(7));

-- Location: LABCELL_X61_Y17_N6
\i2c_module|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Mux8~1_combout\ = ( \i2c_module|tx_byte\(7) & ( ((!\i2c_module|bit_cnt\(2) & (\i2c_module|tx_byte\(2))) # (\i2c_module|bit_cnt\(2) & ((\i2c_module|tx_byte\(6))))) # (\i2c_module|bit_cnt\(0)) ) ) # ( !\i2c_module|tx_byte\(7) & ( 
-- (!\i2c_module|bit_cnt\(0) & ((!\i2c_module|bit_cnt\(2) & (\i2c_module|tx_byte\(2))) # (\i2c_module|bit_cnt\(2) & ((\i2c_module|tx_byte\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_bit_cnt\(0),
	datab => \i2c_module|ALT_INV_bit_cnt\(2),
	datac => \i2c_module|ALT_INV_tx_byte\(2),
	datad => \i2c_module|ALT_INV_tx_byte\(6),
	dataf => \i2c_module|ALT_INV_tx_byte\(7),
	combout => \i2c_module|Mux8~1_combout\);

-- Location: LABCELL_X63_Y17_N6
\i2c_module|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Mux3~0_combout\ = ( \i2c_module|pair_idx\(0) & ( (!\i2c_module|pair_idx\(1)) # ((!\i2c_module|byte_idx[0]~DUPLICATE_q\ & !\i2c_module|byte_idx[1]~DUPLICATE_q\)) ) ) # ( !\i2c_module|pair_idx\(0) & ( (!\i2c_module|byte_idx[1]~DUPLICATE_q\ & 
-- (!\i2c_module|byte_idx[0]~DUPLICATE_q\)) # (\i2c_module|byte_idx[1]~DUPLICATE_q\ & ((\i2c_module|pair_idx\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110001011100010111000101111111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	datab => \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_pair_idx\(1),
	dataf => \i2c_module|ALT_INV_pair_idx\(0),
	combout => \i2c_module|Mux3~0_combout\);

-- Location: FF_X63_Y17_N7
\i2c_module|tx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Mux3~0_combout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|tx_byte~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|tx_byte\(4));

-- Location: LABCELL_X63_Y17_N54
\i2c_module|tx_byte~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|tx_byte~1_combout\ = ( \i2c_module|pair_idx[1]~DUPLICATE_q\ & ( (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & (!\i2c_module|byte_idx[0]~DUPLICATE_q\ & !\i2c_module|byte_idx[1]~DUPLICATE_q\)) ) ) # ( 
-- !\i2c_module|pair_idx[1]~DUPLICATE_q\ & ( (\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & (!\i2c_module|byte_idx[1]~DUPLICATE_q\ & ((!\i2c_module|pair_idx[0]~DUPLICATE_q\) # (!\i2c_module|byte_idx[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000000010101000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datab => \i2c_module|ALT_INV_pair_idx[0]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\,
	combout => \i2c_module|tx_byte~1_combout\);

-- Location: FF_X63_Y17_N55
\i2c_module|tx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|tx_byte~1_combout\,
	ena => \i2c_module|tx_byte~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|tx_byte\(5));

-- Location: FF_X61_Y17_N43
\i2c_module|bit_cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|bit_cnt[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|bit_cnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y17_N0
\i2c_module|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Mux7~0_combout\ = ( \i2c_module|pair_idx\(0) & ( (\i2c_module|byte_idx[0]~DUPLICATE_q\ & (!\i2c_module|byte_idx[1]~DUPLICATE_q\ & !\i2c_module|pair_idx\(1))) ) ) # ( !\i2c_module|pair_idx\(0) & ( (\i2c_module|byte_idx[0]~DUPLICATE_q\ & 
-- !\i2c_module|byte_idx[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	datab => \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_pair_idx\(1),
	dataf => \i2c_module|ALT_INV_pair_idx\(0),
	combout => \i2c_module|Mux7~0_combout\);

-- Location: FF_X63_Y17_N1
\i2c_module|tx_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Mux7~0_combout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|tx_byte~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|tx_byte\(0));

-- Location: LABCELL_X63_Y17_N3
\i2c_module|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Mux6~0_combout\ = ( \i2c_module|pair_idx[1]~DUPLICATE_q\ & ( (!\i2c_module|byte_idx[0]~DUPLICATE_q\ & !\i2c_module|byte_idx[1]~DUPLICATE_q\) ) ) # ( !\i2c_module|pair_idx[1]~DUPLICATE_q\ & ( (!\i2c_module|pair_idx[0]~DUPLICATE_q\) # 
-- ((!\i2c_module|byte_idx[0]~DUPLICATE_q\ & !\i2c_module|byte_idx[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111110001111100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_byte_idx[0]~DUPLICATE_q\,
	datab => \i2c_module|ALT_INV_byte_idx[1]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_pair_idx[0]~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\,
	combout => \i2c_module|Mux6~0_combout\);

-- Location: FF_X63_Y17_N4
\i2c_module|tx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Mux6~0_combout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|tx_byte~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|tx_byte\(1));

-- Location: LABCELL_X61_Y17_N18
\i2c_module|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Mux8~0_combout\ = ( \i2c_module|tx_byte\(1) & ( \i2c_module|bit_cnt\(0) & ( (!\i2c_module|bit_cnt[2]~DUPLICATE_q\) # (\i2c_module|tx_byte\(5)) ) ) ) # ( !\i2c_module|tx_byte\(1) & ( \i2c_module|bit_cnt\(0) & ( (\i2c_module|tx_byte\(5) & 
-- \i2c_module|bit_cnt[2]~DUPLICATE_q\) ) ) ) # ( \i2c_module|tx_byte\(1) & ( !\i2c_module|bit_cnt\(0) & ( (!\i2c_module|bit_cnt[2]~DUPLICATE_q\ & ((\i2c_module|tx_byte\(0)))) # (\i2c_module|bit_cnt[2]~DUPLICATE_q\ & (\i2c_module|tx_byte\(4))) ) ) ) # ( 
-- !\i2c_module|tx_byte\(1) & ( !\i2c_module|bit_cnt\(0) & ( (!\i2c_module|bit_cnt[2]~DUPLICATE_q\ & ((\i2c_module|tx_byte\(0)))) # (\i2c_module|bit_cnt[2]~DUPLICATE_q\ & (\i2c_module|tx_byte\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_tx_byte\(4),
	datab => \i2c_module|ALT_INV_tx_byte\(5),
	datac => \i2c_module|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_tx_byte\(0),
	datae => \i2c_module|ALT_INV_tx_byte\(1),
	dataf => \i2c_module|ALT_INV_bit_cnt\(0),
	combout => \i2c_module|Mux8~0_combout\);

-- Location: LABCELL_X61_Y17_N36
\i2c_module|Selector26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|Selector26~1_combout\ = ( \i2c_module|Mux8~0_combout\ & ( (!\i2c_module|Selector26~0_combout\) # ((\i2c_module|bit_cnt[1]~DUPLICATE_q\ & (\i2c_module|state.ST_BIT_LOW~q\ & !\i2c_module|Mux8~1_combout\))) ) ) # ( !\i2c_module|Mux8~0_combout\ & 
-- ( (!\i2c_module|Selector26~0_combout\) # ((\i2c_module|state.ST_BIT_LOW~q\ & ((!\i2c_module|bit_cnt[1]~DUPLICATE_q\) # (!\i2c_module|Mux8~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101110101011111010111010101011101010101010101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_Selector26~0_combout\,
	datab => \i2c_module|ALT_INV_bit_cnt[1]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_state.ST_BIT_LOW~q\,
	datad => \i2c_module|ALT_INV_Mux8~1_combout\,
	dataf => \i2c_module|ALT_INV_Mux8~0_combout\,
	combout => \i2c_module|Selector26~1_combout\);

-- Location: LABCELL_X61_Y17_N54
\i2c_module|sda~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|sda~3_combout\ = ( \i2c_module|tick~DUPLICATE_q\ & ( \i2c_module|bit_cnt[0]~DUPLICATE_q\ & ( !\i2c_module|state.ST_BIT_DONE~q\ ) ) ) # ( \i2c_module|tick~DUPLICATE_q\ & ( !\i2c_module|bit_cnt[0]~DUPLICATE_q\ & ( 
-- (!\i2c_module|state.ST_BIT_DONE~q\) # ((!\i2c_module|bit_cnt[1]~DUPLICATE_q\ & !\i2c_module|bit_cnt[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2c_module|ALT_INV_bit_cnt[1]~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_state.ST_BIT_DONE~q\,
	datae => \i2c_module|ALT_INV_tick~DUPLICATE_q\,
	dataf => \i2c_module|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	combout => \i2c_module|sda~3_combout\);

-- Location: MLABCELL_X60_Y17_N54
\i2c_module|sda~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|sda~4_combout\ = ( \i2c_module|state.ST_LOAD_BYTE~q\ & ( \i2c_module|state.ST_ACK_HIGH~q\ & ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) ) ) # ( !\i2c_module|state.ST_LOAD_BYTE~q\ & ( \i2c_module|state.ST_ACK_HIGH~q\ & ( 
-- !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) ) ) # ( \i2c_module|state.ST_LOAD_BYTE~q\ & ( !\i2c_module|state.ST_ACK_HIGH~q\ & ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) ) ) # ( !\i2c_module|state.ST_LOAD_BYTE~q\ & ( 
-- !\i2c_module|state.ST_ACK_HIGH~q\ & ( (!\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0)) # ((!\i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\ & (\i2c_module|sda~2_combout\ & \i2c_module|sda~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101110101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datab => \i2c_module|ALT_INV_state.ST_NEXT_PAIR~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_sda~2_combout\,
	datad => \i2c_module|ALT_INV_sda~3_combout\,
	datae => \i2c_module|ALT_INV_state.ST_LOAD_BYTE~q\,
	dataf => \i2c_module|ALT_INV_state.ST_ACK_HIGH~q\,
	combout => \i2c_module|sda~4_combout\);

-- Location: FF_X61_Y17_N37
\i2c_module|sda~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|Selector26~1_combout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \i2c_module|sda~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|sda~en_q\);

-- Location: LABCELL_X59_Y22_N0
\video_timing|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~21_sumout\ = SUM(( \video_timing|vcount_buf\(0) ) + ( VCC ) + ( !VCC ))
-- \video_timing|Add0~22\ = CARRY(( \video_timing|vcount_buf\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount_buf\(0),
	cin => GND,
	sumout => \video_timing|Add0~21_sumout\,
	cout => \video_timing|Add0~22\);

-- Location: LABCELL_X59_Y22_N18
\video_timing|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~5_sumout\ = SUM(( \video_timing|vcount\(6) ) + ( GND ) + ( \video_timing|Add0~10\ ))
-- \video_timing|Add0~6\ = CARRY(( \video_timing|vcount\(6) ) + ( GND ) + ( \video_timing|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(6),
	cin => \video_timing|Add0~10\,
	sumout => \video_timing|Add0~5_sumout\,
	cout => \video_timing|Add0~6\);

-- Location: LABCELL_X59_Y22_N21
\video_timing|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~1_sumout\ = SUM(( \video_timing|vcount\(7) ) + ( GND ) + ( \video_timing|Add0~6\ ))
-- \video_timing|Add0~2\ = CARRY(( \video_timing|vcount\(7) ) + ( GND ) + ( \video_timing|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \video_timing|ALT_INV_vcount\(7),
	cin => \video_timing|Add0~6\,
	sumout => \video_timing|Add0~1_sumout\,
	cout => \video_timing|Add0~2\);

-- Location: MLABCELL_X60_Y23_N0
\video_timing|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~89_sumout\ = SUM(( \video_timing|hcount_buf\(0) ) + ( VCC ) + ( !VCC ))
-- \video_timing|Add1~90\ = CARRY(( \video_timing|hcount_buf\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount_buf\(0),
	cin => GND,
	sumout => \video_timing|Add1~89_sumout\,
	cout => \video_timing|Add1~90\);

-- Location: LABCELL_X59_Y23_N15
\video_timing|hcount_buf~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|hcount_buf~0_combout\ = ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( \video_timing|Equal0~7_combout\ ) ) # ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Equal0~7_combout\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \video_timing|hcount_buf~0_combout\);

-- Location: FF_X60_Y23_N2
\video_timing|hcount_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~89_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount_buf\(0));

-- Location: MLABCELL_X60_Y23_N3
\video_timing|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~93_sumout\ = SUM(( \video_timing|hcount\(1) ) + ( GND ) + ( \video_timing|Add1~90\ ))
-- \video_timing|Add1~94\ = CARRY(( \video_timing|hcount\(1) ) + ( GND ) + ( \video_timing|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \video_timing|ALT_INV_hcount\(1),
	cin => \video_timing|Add1~90\,
	sumout => \video_timing|Add1~93_sumout\,
	cout => \video_timing|Add1~94\);

-- Location: FF_X60_Y23_N5
\video_timing|hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~93_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(1));

-- Location: MLABCELL_X60_Y23_N6
\video_timing|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~85_sumout\ = SUM(( \video_timing|hcount\(2) ) + ( GND ) + ( \video_timing|Add1~94\ ))
-- \video_timing|Add1~86\ = CARRY(( \video_timing|hcount\(2) ) + ( GND ) + ( \video_timing|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_hcount\(2),
	cin => \video_timing|Add1~94\,
	sumout => \video_timing|Add1~85_sumout\,
	cout => \video_timing|Add1~86\);

-- Location: FF_X60_Y23_N8
\video_timing|hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~85_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(2));

-- Location: MLABCELL_X60_Y23_N9
\video_timing|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~81_sumout\ = SUM(( \video_timing|hcount\(3) ) + ( GND ) + ( \video_timing|Add1~86\ ))
-- \video_timing|Add1~82\ = CARRY(( \video_timing|hcount\(3) ) + ( GND ) + ( \video_timing|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(3),
	cin => \video_timing|Add1~86\,
	sumout => \video_timing|Add1~81_sumout\,
	cout => \video_timing|Add1~82\);

-- Location: FF_X60_Y23_N11
\video_timing|hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~81_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(3));

-- Location: MLABCELL_X60_Y23_N12
\video_timing|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~117_sumout\ = SUM(( \video_timing|hcount\(4) ) + ( GND ) + ( \video_timing|Add1~82\ ))
-- \video_timing|Add1~118\ = CARRY(( \video_timing|hcount\(4) ) + ( GND ) + ( \video_timing|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_hcount\(4),
	cin => \video_timing|Add1~82\,
	sumout => \video_timing|Add1~117_sumout\,
	cout => \video_timing|Add1~118\);

-- Location: FF_X60_Y23_N14
\video_timing|hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~117_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(4));

-- Location: MLABCELL_X60_Y23_N15
\video_timing|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~113_sumout\ = SUM(( \video_timing|hcount\(5) ) + ( GND ) + ( \video_timing|Add1~118\ ))
-- \video_timing|Add1~114\ = CARRY(( \video_timing|hcount\(5) ) + ( GND ) + ( \video_timing|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(5),
	cin => \video_timing|Add1~118\,
	sumout => \video_timing|Add1~113_sumout\,
	cout => \video_timing|Add1~114\);

-- Location: FF_X60_Y23_N17
\video_timing|hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~113_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(5));

-- Location: MLABCELL_X60_Y23_N18
\video_timing|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~109_sumout\ = SUM(( \video_timing|hcount\(6) ) + ( GND ) + ( \video_timing|Add1~114\ ))
-- \video_timing|Add1~110\ = CARRY(( \video_timing|hcount\(6) ) + ( GND ) + ( \video_timing|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(6),
	cin => \video_timing|Add1~114\,
	sumout => \video_timing|Add1~109_sumout\,
	cout => \video_timing|Add1~110\);

-- Location: FF_X60_Y23_N20
\video_timing|hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~109_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(6));

-- Location: MLABCELL_X60_Y23_N21
\video_timing|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~105_sumout\ = SUM(( \video_timing|hcount\(7) ) + ( GND ) + ( \video_timing|Add1~110\ ))
-- \video_timing|Add1~106\ = CARRY(( \video_timing|hcount\(7) ) + ( GND ) + ( \video_timing|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \video_timing|ALT_INV_hcount\(7),
	cin => \video_timing|Add1~110\,
	sumout => \video_timing|Add1~105_sumout\,
	cout => \video_timing|Add1~106\);

-- Location: FF_X60_Y23_N23
\video_timing|hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~105_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(7));

-- Location: MLABCELL_X60_Y23_N24
\video_timing|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~101_sumout\ = SUM(( \video_timing|hcount\(8) ) + ( GND ) + ( \video_timing|Add1~106\ ))
-- \video_timing|Add1~102\ = CARRY(( \video_timing|hcount\(8) ) + ( GND ) + ( \video_timing|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(8),
	cin => \video_timing|Add1~106\,
	sumout => \video_timing|Add1~101_sumout\,
	cout => \video_timing|Add1~102\);

-- Location: FF_X60_Y23_N26
\video_timing|hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~101_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(8));

-- Location: MLABCELL_X60_Y23_N27
\video_timing|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~97_sumout\ = SUM(( \video_timing|hcount\(9) ) + ( GND ) + ( \video_timing|Add1~102\ ))
-- \video_timing|Add1~98\ = CARRY(( \video_timing|hcount\(9) ) + ( GND ) + ( \video_timing|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \video_timing|ALT_INV_hcount\(9),
	cin => \video_timing|Add1~102\,
	sumout => \video_timing|Add1~97_sumout\,
	cout => \video_timing|Add1~98\);

-- Location: FF_X60_Y23_N29
\video_timing|hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~97_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(9));

-- Location: MLABCELL_X60_Y23_N30
\video_timing|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~125_sumout\ = SUM(( \video_timing|hcount\(10) ) + ( GND ) + ( \video_timing|Add1~98\ ))
-- \video_timing|Add1~126\ = CARRY(( \video_timing|hcount\(10) ) + ( GND ) + ( \video_timing|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_hcount\(10),
	cin => \video_timing|Add1~98\,
	sumout => \video_timing|Add1~125_sumout\,
	cout => \video_timing|Add1~126\);

-- Location: FF_X60_Y23_N32
\video_timing|hcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~125_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(10));

-- Location: MLABCELL_X60_Y23_N33
\video_timing|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~21_sumout\ = SUM(( \video_timing|hcount\(11) ) + ( GND ) + ( \video_timing|Add1~126\ ))
-- \video_timing|Add1~22\ = CARRY(( \video_timing|hcount\(11) ) + ( GND ) + ( \video_timing|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(11),
	cin => \video_timing|Add1~126\,
	sumout => \video_timing|Add1~21_sumout\,
	cout => \video_timing|Add1~22\);

-- Location: FF_X60_Y23_N35
\video_timing|hcount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~21_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(11));

-- Location: MLABCELL_X60_Y23_N36
\video_timing|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~17_sumout\ = SUM(( \video_timing|hcount\(12) ) + ( GND ) + ( \video_timing|Add1~22\ ))
-- \video_timing|Add1~18\ = CARRY(( \video_timing|hcount\(12) ) + ( GND ) + ( \video_timing|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(12),
	cin => \video_timing|Add1~22\,
	sumout => \video_timing|Add1~17_sumout\,
	cout => \video_timing|Add1~18\);

-- Location: FF_X60_Y23_N38
\video_timing|hcount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~17_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(12));

-- Location: MLABCELL_X60_Y23_N39
\video_timing|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~13_sumout\ = SUM(( \video_timing|hcount\(13) ) + ( GND ) + ( \video_timing|Add1~18\ ))
-- \video_timing|Add1~14\ = CARRY(( \video_timing|hcount\(13) ) + ( GND ) + ( \video_timing|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(13),
	cin => \video_timing|Add1~18\,
	sumout => \video_timing|Add1~13_sumout\,
	cout => \video_timing|Add1~14\);

-- Location: FF_X60_Y23_N41
\video_timing|hcount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~13_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(13));

-- Location: MLABCELL_X60_Y23_N42
\video_timing|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~9_sumout\ = SUM(( \video_timing|hcount\(14) ) + ( GND ) + ( \video_timing|Add1~14\ ))
-- \video_timing|Add1~10\ = CARRY(( \video_timing|hcount\(14) ) + ( GND ) + ( \video_timing|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_hcount\(14),
	cin => \video_timing|Add1~14\,
	sumout => \video_timing|Add1~9_sumout\,
	cout => \video_timing|Add1~10\);

-- Location: FF_X60_Y23_N44
\video_timing|hcount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~9_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(14));

-- Location: MLABCELL_X60_Y23_N45
\video_timing|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~77_sumout\ = SUM(( \video_timing|hcount\(15) ) + ( GND ) + ( \video_timing|Add1~10\ ))
-- \video_timing|Add1~78\ = CARRY(( \video_timing|hcount\(15) ) + ( GND ) + ( \video_timing|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(15),
	cin => \video_timing|Add1~10\,
	sumout => \video_timing|Add1~77_sumout\,
	cout => \video_timing|Add1~78\);

-- Location: FF_X60_Y23_N47
\video_timing|hcount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~77_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(15));

-- Location: MLABCELL_X60_Y23_N48
\video_timing|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~73_sumout\ = SUM(( \video_timing|hcount\(16) ) + ( GND ) + ( \video_timing|Add1~78\ ))
-- \video_timing|Add1~74\ = CARRY(( \video_timing|hcount\(16) ) + ( GND ) + ( \video_timing|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(16),
	cin => \video_timing|Add1~78\,
	sumout => \video_timing|Add1~73_sumout\,
	cout => \video_timing|Add1~74\);

-- Location: FF_X60_Y23_N50
\video_timing|hcount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~73_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(16));

-- Location: MLABCELL_X60_Y23_N51
\video_timing|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~69_sumout\ = SUM(( \video_timing|hcount\(17) ) + ( GND ) + ( \video_timing|Add1~74\ ))
-- \video_timing|Add1~70\ = CARRY(( \video_timing|hcount\(17) ) + ( GND ) + ( \video_timing|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(17),
	cin => \video_timing|Add1~74\,
	sumout => \video_timing|Add1~69_sumout\,
	cout => \video_timing|Add1~70\);

-- Location: FF_X60_Y23_N53
\video_timing|hcount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~69_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(17));

-- Location: MLABCELL_X60_Y23_N54
\video_timing|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~65_sumout\ = SUM(( \video_timing|hcount\(18) ) + ( GND ) + ( \video_timing|Add1~70\ ))
-- \video_timing|Add1~66\ = CARRY(( \video_timing|hcount\(18) ) + ( GND ) + ( \video_timing|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(18),
	cin => \video_timing|Add1~70\,
	sumout => \video_timing|Add1~65_sumout\,
	cout => \video_timing|Add1~66\);

-- Location: FF_X60_Y23_N56
\video_timing|hcount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~65_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(18));

-- Location: MLABCELL_X60_Y23_N57
\video_timing|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~61_sumout\ = SUM(( \video_timing|hcount\(19) ) + ( GND ) + ( \video_timing|Add1~66\ ))
-- \video_timing|Add1~62\ = CARRY(( \video_timing|hcount\(19) ) + ( GND ) + ( \video_timing|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(19),
	cin => \video_timing|Add1~66\,
	sumout => \video_timing|Add1~61_sumout\,
	cout => \video_timing|Add1~62\);

-- Location: FF_X60_Y23_N59
\video_timing|hcount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~61_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(19));

-- Location: MLABCELL_X60_Y22_N0
\video_timing|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~57_sumout\ = SUM(( \video_timing|hcount\(20) ) + ( GND ) + ( \video_timing|Add1~62\ ))
-- \video_timing|Add1~58\ = CARRY(( \video_timing|hcount\(20) ) + ( GND ) + ( \video_timing|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(20),
	cin => \video_timing|Add1~62\,
	sumout => \video_timing|Add1~57_sumout\,
	cout => \video_timing|Add1~58\);

-- Location: FF_X60_Y22_N2
\video_timing|hcount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~57_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(20));

-- Location: MLABCELL_X60_Y22_N3
\video_timing|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~53_sumout\ = SUM(( \video_timing|hcount\(21) ) + ( GND ) + ( \video_timing|Add1~58\ ))
-- \video_timing|Add1~54\ = CARRY(( \video_timing|hcount\(21) ) + ( GND ) + ( \video_timing|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \video_timing|ALT_INV_hcount\(21),
	cin => \video_timing|Add1~58\,
	sumout => \video_timing|Add1~53_sumout\,
	cout => \video_timing|Add1~54\);

-- Location: FF_X60_Y22_N5
\video_timing|hcount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~53_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(21));

-- Location: MLABCELL_X60_Y22_N6
\video_timing|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~49_sumout\ = SUM(( \video_timing|hcount\(22) ) + ( GND ) + ( \video_timing|Add1~54\ ))
-- \video_timing|Add1~50\ = CARRY(( \video_timing|hcount\(22) ) + ( GND ) + ( \video_timing|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(22),
	cin => \video_timing|Add1~54\,
	sumout => \video_timing|Add1~49_sumout\,
	cout => \video_timing|Add1~50\);

-- Location: FF_X60_Y22_N8
\video_timing|hcount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~49_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(22));

-- Location: MLABCELL_X60_Y22_N9
\video_timing|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~45_sumout\ = SUM(( \video_timing|hcount\(23) ) + ( GND ) + ( \video_timing|Add1~50\ ))
-- \video_timing|Add1~46\ = CARRY(( \video_timing|hcount\(23) ) + ( GND ) + ( \video_timing|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(23),
	cin => \video_timing|Add1~50\,
	sumout => \video_timing|Add1~45_sumout\,
	cout => \video_timing|Add1~46\);

-- Location: FF_X60_Y22_N11
\video_timing|hcount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~45_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(23));

-- Location: MLABCELL_X60_Y22_N12
\video_timing|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~41_sumout\ = SUM(( \video_timing|hcount\(24) ) + ( GND ) + ( \video_timing|Add1~46\ ))
-- \video_timing|Add1~42\ = CARRY(( \video_timing|hcount\(24) ) + ( GND ) + ( \video_timing|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_hcount\(24),
	cin => \video_timing|Add1~46\,
	sumout => \video_timing|Add1~41_sumout\,
	cout => \video_timing|Add1~42\);

-- Location: FF_X60_Y22_N14
\video_timing|hcount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~41_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(24));

-- Location: MLABCELL_X60_Y22_N15
\video_timing|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~37_sumout\ = SUM(( \video_timing|hcount\(25) ) + ( GND ) + ( \video_timing|Add1~42\ ))
-- \video_timing|Add1~38\ = CARRY(( \video_timing|hcount\(25) ) + ( GND ) + ( \video_timing|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(25),
	cin => \video_timing|Add1~42\,
	sumout => \video_timing|Add1~37_sumout\,
	cout => \video_timing|Add1~38\);

-- Location: FF_X60_Y22_N17
\video_timing|hcount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~37_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(25));

-- Location: MLABCELL_X60_Y22_N18
\video_timing|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~33_sumout\ = SUM(( \video_timing|hcount\(26) ) + ( GND ) + ( \video_timing|Add1~38\ ))
-- \video_timing|Add1~34\ = CARRY(( \video_timing|hcount\(26) ) + ( GND ) + ( \video_timing|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(26),
	cin => \video_timing|Add1~38\,
	sumout => \video_timing|Add1~33_sumout\,
	cout => \video_timing|Add1~34\);

-- Location: FF_X60_Y22_N20
\video_timing|hcount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~33_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(26));

-- Location: MLABCELL_X60_Y22_N21
\video_timing|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~5_sumout\ = SUM(( \video_timing|hcount\(27) ) + ( GND ) + ( \video_timing|Add1~34\ ))
-- \video_timing|Add1~6\ = CARRY(( \video_timing|hcount\(27) ) + ( GND ) + ( \video_timing|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(27),
	cin => \video_timing|Add1~34\,
	sumout => \video_timing|Add1~5_sumout\,
	cout => \video_timing|Add1~6\);

-- Location: FF_X60_Y22_N23
\video_timing|hcount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~5_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(27));

-- Location: MLABCELL_X60_Y22_N24
\video_timing|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~1_sumout\ = SUM(( \video_timing|hcount\(28) ) + ( GND ) + ( \video_timing|Add1~6\ ))
-- \video_timing|Add1~2\ = CARRY(( \video_timing|hcount\(28) ) + ( GND ) + ( \video_timing|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(28),
	cin => \video_timing|Add1~6\,
	sumout => \video_timing|Add1~1_sumout\,
	cout => \video_timing|Add1~2\);

-- Location: FF_X60_Y22_N26
\video_timing|hcount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~1_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(28));

-- Location: MLABCELL_X60_Y22_N27
\video_timing|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~29_sumout\ = SUM(( \video_timing|hcount\(29) ) + ( GND ) + ( \video_timing|Add1~2\ ))
-- \video_timing|Add1~30\ = CARRY(( \video_timing|hcount\(29) ) + ( GND ) + ( \video_timing|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(29),
	cin => \video_timing|Add1~2\,
	sumout => \video_timing|Add1~29_sumout\,
	cout => \video_timing|Add1~30\);

-- Location: FF_X60_Y22_N29
\video_timing|hcount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~29_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(29));

-- Location: MLABCELL_X60_Y22_N30
\video_timing|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~25_sumout\ = SUM(( \video_timing|hcount\(30) ) + ( GND ) + ( \video_timing|Add1~30\ ))
-- \video_timing|Add1~26\ = CARRY(( \video_timing|hcount\(30) ) + ( GND ) + ( \video_timing|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_hcount\(30),
	cin => \video_timing|Add1~30\,
	sumout => \video_timing|Add1~25_sumout\,
	cout => \video_timing|Add1~26\);

-- Location: FF_X60_Y22_N32
\video_timing|hcount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~25_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(30));

-- Location: LABCELL_X61_Y23_N0
\video_timing|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Equal0~1_combout\ = ( !\video_timing|hcount\(30) & ( !\video_timing|hcount\(11) & ( (!\video_timing|hcount\(14) & (!\video_timing|hcount\(13) & (!\video_timing|hcount\(12) & !\video_timing|hcount\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(14),
	datab => \video_timing|ALT_INV_hcount\(13),
	datac => \video_timing|ALT_INV_hcount\(12),
	datad => \video_timing|ALT_INV_hcount\(29),
	datae => \video_timing|ALT_INV_hcount\(30),
	dataf => \video_timing|ALT_INV_hcount\(11),
	combout => \video_timing|Equal0~1_combout\);

-- Location: LABCELL_X61_Y22_N30
\video_timing|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Equal0~0_combout\ = ( !\video_timing|hcount\(27) & ( !\video_timing|hcount\(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount\(28),
	dataf => \video_timing|ALT_INV_hcount\(27),
	combout => \video_timing|Equal0~0_combout\);

-- Location: LABCELL_X61_Y23_N39
\video_timing|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Equal0~3_combout\ = ( !\video_timing|hcount\(20) & ( !\video_timing|hcount\(15) & ( (!\video_timing|hcount\(18) & (!\video_timing|hcount\(17) & (!\video_timing|hcount\(19) & !\video_timing|hcount\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(18),
	datab => \video_timing|ALT_INV_hcount\(17),
	datac => \video_timing|ALT_INV_hcount\(19),
	datad => \video_timing|ALT_INV_hcount\(16),
	datae => \video_timing|ALT_INV_hcount\(20),
	dataf => \video_timing|ALT_INV_hcount\(15),
	combout => \video_timing|Equal0~3_combout\);

-- Location: MLABCELL_X60_Y22_N33
\video_timing|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add1~121_sumout\ = SUM(( \video_timing|hcount_buf\(31) ) + ( GND ) + ( \video_timing|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount_buf\(31),
	cin => \video_timing|Add1~26\,
	sumout => \video_timing|Add1~121_sumout\);

-- Location: FF_X60_Y22_N35
\video_timing|hcount_buf[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add1~121_sumout\,
	sclr => \video_timing|hcount_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount_buf\(31));

-- Location: LABCELL_X61_Y23_N6
\video_timing|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Equal0~5_combout\ = ( !\video_timing|hcount\(2) & ( \video_timing|hcount_buf\(0) & ( (\video_timing|hcount\(10) & (!\video_timing|hcount_buf\(31) & (\video_timing|hcount\(9) & !\video_timing|hcount\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(10),
	datab => \video_timing|ALT_INV_hcount_buf\(31),
	datac => \video_timing|ALT_INV_hcount\(9),
	datad => \video_timing|ALT_INV_hcount\(1),
	datae => \video_timing|ALT_INV_hcount\(2),
	dataf => \video_timing|ALT_INV_hcount_buf\(0),
	combout => \video_timing|Equal0~5_combout\);

-- Location: MLABCELL_X60_Y22_N36
\video_timing|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Equal0~2_combout\ = ( !\video_timing|hcount\(21) & ( !\video_timing|hcount\(25) & ( (!\video_timing|hcount\(22) & (!\video_timing|hcount\(23) & (!\video_timing|hcount\(26) & !\video_timing|hcount\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(22),
	datab => \video_timing|ALT_INV_hcount\(23),
	datac => \video_timing|ALT_INV_hcount\(26),
	datad => \video_timing|ALT_INV_hcount\(24),
	datae => \video_timing|ALT_INV_hcount\(21),
	dataf => \video_timing|ALT_INV_hcount\(25),
	combout => \video_timing|Equal0~2_combout\);

-- Location: LABCELL_X61_Y23_N12
\video_timing|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Equal0~6_combout\ = ( !\video_timing|hcount\(3) & ( \video_timing|hcount\(6) & ( (!\video_timing|hcount\(7) & (!\video_timing|hcount\(8) & (\video_timing|hcount\(4) & \video_timing|hcount\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(7),
	datab => \video_timing|ALT_INV_hcount\(8),
	datac => \video_timing|ALT_INV_hcount\(4),
	datad => \video_timing|ALT_INV_hcount\(5),
	datae => \video_timing|ALT_INV_hcount\(3),
	dataf => \video_timing|ALT_INV_hcount\(6),
	combout => \video_timing|Equal0~6_combout\);

-- Location: LABCELL_X61_Y23_N48
\video_timing|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Equal0~7_combout\ = ( \video_timing|Equal0~2_combout\ & ( \video_timing|Equal0~6_combout\ & ( (\video_timing|Equal0~1_combout\ & (\video_timing|Equal0~0_combout\ & (\video_timing|Equal0~3_combout\ & \video_timing|Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Equal0~1_combout\,
	datab => \video_timing|ALT_INV_Equal0~0_combout\,
	datac => \video_timing|ALT_INV_Equal0~3_combout\,
	datad => \video_timing|ALT_INV_Equal0~5_combout\,
	datae => \video_timing|ALT_INV_Equal0~2_combout\,
	dataf => \video_timing|ALT_INV_Equal0~6_combout\,
	combout => \video_timing|Equal0~7_combout\);

-- Location: LABCELL_X59_Y23_N6
\video_timing|vcount_buf~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~9_combout\ = ( \video_timing|Equal0~7_combout\ & ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) ) # ( \video_timing|Equal0~7_combout\ & ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) ) # ( 
-- !\video_timing|Equal0~7_combout\ & ( !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \video_timing|ALT_INV_Equal0~7_combout\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \video_timing|vcount_buf~9_combout\);

-- Location: FF_X59_Y22_N23
\video_timing|vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~1_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(7));

-- Location: LABCELL_X59_Y22_N24
\video_timing|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~77_sumout\ = SUM(( \video_timing|vcount\(8) ) + ( GND ) + ( \video_timing|Add0~2\ ))
-- \video_timing|Add0~78\ = CARRY(( \video_timing|vcount\(8) ) + ( GND ) + ( \video_timing|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(8),
	cin => \video_timing|Add0~2\,
	sumout => \video_timing|Add0~77_sumout\,
	cout => \video_timing|Add0~78\);

-- Location: FF_X59_Y22_N26
\video_timing|vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~77_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(8));

-- Location: LABCELL_X59_Y22_N27
\video_timing|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~125_sumout\ = SUM(( \video_timing|vcount\(9) ) + ( GND ) + ( \video_timing|Add0~78\ ))
-- \video_timing|Add0~126\ = CARRY(( \video_timing|vcount\(9) ) + ( GND ) + ( \video_timing|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \video_timing|ALT_INV_vcount\(9),
	cin => \video_timing|Add0~78\,
	sumout => \video_timing|Add0~125_sumout\,
	cout => \video_timing|Add0~126\);

-- Location: FF_X59_Y22_N29
\video_timing|vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~125_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(9));

-- Location: LABCELL_X59_Y22_N30
\video_timing|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~73_sumout\ = SUM(( \video_timing|vcount\(10) ) + ( GND ) + ( \video_timing|Add0~126\ ))
-- \video_timing|Add0~74\ = CARRY(( \video_timing|vcount\(10) ) + ( GND ) + ( \video_timing|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_vcount\(10),
	cin => \video_timing|Add0~126\,
	sumout => \video_timing|Add0~73_sumout\,
	cout => \video_timing|Add0~74\);

-- Location: FF_X59_Y22_N32
\video_timing|vcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~73_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(10));

-- Location: LABCELL_X59_Y22_N33
\video_timing|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~69_sumout\ = SUM(( \video_timing|vcount\(11) ) + ( GND ) + ( \video_timing|Add0~74\ ))
-- \video_timing|Add0~70\ = CARRY(( \video_timing|vcount\(11) ) + ( GND ) + ( \video_timing|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(11),
	cin => \video_timing|Add0~74\,
	sumout => \video_timing|Add0~69_sumout\,
	cout => \video_timing|Add0~70\);

-- Location: FF_X59_Y22_N35
\video_timing|vcount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~69_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(11));

-- Location: LABCELL_X59_Y22_N36
\video_timing|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~65_sumout\ = SUM(( \video_timing|vcount\(12) ) + ( GND ) + ( \video_timing|Add0~70\ ))
-- \video_timing|Add0~66\ = CARRY(( \video_timing|vcount\(12) ) + ( GND ) + ( \video_timing|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(12),
	cin => \video_timing|Add0~70\,
	sumout => \video_timing|Add0~65_sumout\,
	cout => \video_timing|Add0~66\);

-- Location: FF_X59_Y22_N38
\video_timing|vcount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~65_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(12));

-- Location: LABCELL_X59_Y22_N39
\video_timing|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~61_sumout\ = SUM(( \video_timing|vcount\(13) ) + ( GND ) + ( \video_timing|Add0~66\ ))
-- \video_timing|Add0~62\ = CARRY(( \video_timing|vcount\(13) ) + ( GND ) + ( \video_timing|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(13),
	cin => \video_timing|Add0~66\,
	sumout => \video_timing|Add0~61_sumout\,
	cout => \video_timing|Add0~62\);

-- Location: FF_X59_Y22_N41
\video_timing|vcount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~61_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(13));

-- Location: LABCELL_X59_Y22_N42
\video_timing|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~57_sumout\ = SUM(( \video_timing|vcount\(14) ) + ( GND ) + ( \video_timing|Add0~62\ ))
-- \video_timing|Add0~58\ = CARRY(( \video_timing|vcount\(14) ) + ( GND ) + ( \video_timing|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_vcount\(14),
	cin => \video_timing|Add0~62\,
	sumout => \video_timing|Add0~57_sumout\,
	cout => \video_timing|Add0~58\);

-- Location: FF_X59_Y22_N44
\video_timing|vcount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~57_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(14));

-- Location: LABCELL_X58_Y21_N36
\video_timing|vcount_buf~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~1_combout\ = ( !\video_timing|vcount\(11) & ( !\video_timing|vcount\(10) & ( (!\video_timing|vcount\(12) & (!\video_timing|vcount\(14) & (!\video_timing|vcount\(13) & !\video_timing|vcount\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(12),
	datab => \video_timing|ALT_INV_vcount\(14),
	datac => \video_timing|ALT_INV_vcount\(13),
	datad => \video_timing|ALT_INV_vcount\(8),
	datae => \video_timing|ALT_INV_vcount\(11),
	dataf => \video_timing|ALT_INV_vcount\(10),
	combout => \video_timing|vcount_buf~1_combout\);

-- Location: LABCELL_X59_Y22_N45
\video_timing|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~37_sumout\ = SUM(( \video_timing|vcount\(15) ) + ( GND ) + ( \video_timing|Add0~58\ ))
-- \video_timing|Add0~38\ = CARRY(( \video_timing|vcount\(15) ) + ( GND ) + ( \video_timing|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(15),
	cin => \video_timing|Add0~58\,
	sumout => \video_timing|Add0~37_sumout\,
	cout => \video_timing|Add0~38\);

-- Location: FF_X59_Y22_N47
\video_timing|vcount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~37_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(15));

-- Location: LABCELL_X59_Y22_N48
\video_timing|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~117_sumout\ = SUM(( \video_timing|vcount\(16) ) + ( GND ) + ( \video_timing|Add0~38\ ))
-- \video_timing|Add0~118\ = CARRY(( \video_timing|vcount\(16) ) + ( GND ) + ( \video_timing|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(16),
	cin => \video_timing|Add0~38\,
	sumout => \video_timing|Add0~117_sumout\,
	cout => \video_timing|Add0~118\);

-- Location: FF_X59_Y22_N50
\video_timing|vcount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~117_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(16));

-- Location: LABCELL_X59_Y22_N51
\video_timing|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~113_sumout\ = SUM(( \video_timing|vcount\(17) ) + ( GND ) + ( \video_timing|Add0~118\ ))
-- \video_timing|Add0~114\ = CARRY(( \video_timing|vcount\(17) ) + ( GND ) + ( \video_timing|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(17),
	cin => \video_timing|Add0~118\,
	sumout => \video_timing|Add0~113_sumout\,
	cout => \video_timing|Add0~114\);

-- Location: FF_X59_Y22_N53
\video_timing|vcount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~113_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(17));

-- Location: LABCELL_X59_Y22_N54
\video_timing|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~109_sumout\ = SUM(( \video_timing|vcount\(18) ) + ( GND ) + ( \video_timing|Add0~114\ ))
-- \video_timing|Add0~110\ = CARRY(( \video_timing|vcount\(18) ) + ( GND ) + ( \video_timing|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(18),
	cin => \video_timing|Add0~114\,
	sumout => \video_timing|Add0~109_sumout\,
	cout => \video_timing|Add0~110\);

-- Location: FF_X59_Y22_N56
\video_timing|vcount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~109_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(18));

-- Location: LABCELL_X59_Y22_N57
\video_timing|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~105_sumout\ = SUM(( \video_timing|vcount\(19) ) + ( GND ) + ( \video_timing|Add0~110\ ))
-- \video_timing|Add0~106\ = CARRY(( \video_timing|vcount\(19) ) + ( GND ) + ( \video_timing|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(19),
	cin => \video_timing|Add0~110\,
	sumout => \video_timing|Add0~105_sumout\,
	cout => \video_timing|Add0~106\);

-- Location: FF_X59_Y22_N59
\video_timing|vcount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~105_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(19));

-- Location: LABCELL_X59_Y21_N0
\video_timing|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~101_sumout\ = SUM(( \video_timing|vcount\(20) ) + ( GND ) + ( \video_timing|Add0~106\ ))
-- \video_timing|Add0~102\ = CARRY(( \video_timing|vcount\(20) ) + ( GND ) + ( \video_timing|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_vcount\(20),
	cin => \video_timing|Add0~106\,
	sumout => \video_timing|Add0~101_sumout\,
	cout => \video_timing|Add0~102\);

-- Location: FF_X59_Y21_N47
\video_timing|vcount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \video_timing|Add0~101_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	sload => VCC,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(20));

-- Location: LABCELL_X59_Y21_N3
\video_timing|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~33_sumout\ = SUM(( \video_timing|vcount\(21) ) + ( GND ) + ( \video_timing|Add0~102\ ))
-- \video_timing|Add0~34\ = CARRY(( \video_timing|vcount\(21) ) + ( GND ) + ( \video_timing|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(21),
	cin => \video_timing|Add0~102\,
	sumout => \video_timing|Add0~33_sumout\,
	cout => \video_timing|Add0~34\);

-- Location: FF_X59_Y21_N41
\video_timing|vcount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \video_timing|Add0~33_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	sload => VCC,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(21));

-- Location: LABCELL_X59_Y21_N6
\video_timing|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~97_sumout\ = SUM(( \video_timing|vcount\(22) ) + ( GND ) + ( \video_timing|Add0~34\ ))
-- \video_timing|Add0~98\ = CARRY(( \video_timing|vcount\(22) ) + ( GND ) + ( \video_timing|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_vcount\(22),
	cin => \video_timing|Add0~34\,
	sumout => \video_timing|Add0~97_sumout\,
	cout => \video_timing|Add0~98\);

-- Location: FF_X59_Y21_N8
\video_timing|vcount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~97_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(22));

-- Location: LABCELL_X59_Y21_N9
\video_timing|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~93_sumout\ = SUM(( \video_timing|vcount\(23) ) + ( GND ) + ( \video_timing|Add0~98\ ))
-- \video_timing|Add0~94\ = CARRY(( \video_timing|vcount\(23) ) + ( GND ) + ( \video_timing|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(23),
	cin => \video_timing|Add0~98\,
	sumout => \video_timing|Add0~93_sumout\,
	cout => \video_timing|Add0~94\);

-- Location: FF_X59_Y21_N11
\video_timing|vcount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~93_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(23));

-- Location: LABCELL_X59_Y21_N12
\video_timing|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~89_sumout\ = SUM(( \video_timing|vcount\(24) ) + ( GND ) + ( \video_timing|Add0~94\ ))
-- \video_timing|Add0~90\ = CARRY(( \video_timing|vcount\(24) ) + ( GND ) + ( \video_timing|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_vcount\(24),
	cin => \video_timing|Add0~94\,
	sumout => \video_timing|Add0~89_sumout\,
	cout => \video_timing|Add0~90\);

-- Location: FF_X59_Y21_N14
\video_timing|vcount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~89_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(24));

-- Location: LABCELL_X59_Y21_N15
\video_timing|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~85_sumout\ = SUM(( \video_timing|vcount\(25) ) + ( GND ) + ( \video_timing|Add0~90\ ))
-- \video_timing|Add0~86\ = CARRY(( \video_timing|vcount\(25) ) + ( GND ) + ( \video_timing|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(25),
	cin => \video_timing|Add0~90\,
	sumout => \video_timing|Add0~85_sumout\,
	cout => \video_timing|Add0~86\);

-- Location: FF_X59_Y21_N17
\video_timing|vcount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~85_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(25));

-- Location: LABCELL_X59_Y21_N18
\video_timing|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~81_sumout\ = SUM(( \video_timing|vcount\(26) ) + ( GND ) + ( \video_timing|Add0~86\ ))
-- \video_timing|Add0~82\ = CARRY(( \video_timing|vcount\(26) ) + ( GND ) + ( \video_timing|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(26),
	cin => \video_timing|Add0~86\,
	sumout => \video_timing|Add0~81_sumout\,
	cout => \video_timing|Add0~82\);

-- Location: FF_X59_Y21_N20
\video_timing|vcount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~81_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(26));

-- Location: LABCELL_X58_Y21_N12
\video_timing|vcount_buf~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~2_combout\ = ( !\video_timing|vcount\(24) & ( (!\video_timing|vcount\(23) & (!\video_timing|vcount\(26) & (!\video_timing|vcount\(25) & !\video_timing|vcount\(22)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(23),
	datab => \video_timing|ALT_INV_vcount\(26),
	datac => \video_timing|ALT_INV_vcount\(25),
	datad => \video_timing|ALT_INV_vcount\(22),
	dataf => \video_timing|ALT_INV_vcount\(24),
	combout => \video_timing|vcount_buf~2_combout\);

-- Location: LABCELL_X59_Y21_N21
\video_timing|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~53_sumout\ = SUM(( \video_timing|vcount\(27) ) + ( GND ) + ( \video_timing|Add0~82\ ))
-- \video_timing|Add0~54\ = CARRY(( \video_timing|vcount\(27) ) + ( GND ) + ( \video_timing|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(27),
	cin => \video_timing|Add0~82\,
	sumout => \video_timing|Add0~53_sumout\,
	cout => \video_timing|Add0~54\);

-- Location: FF_X59_Y21_N23
\video_timing|vcount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~53_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(27));

-- Location: LABCELL_X59_Y21_N24
\video_timing|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~49_sumout\ = SUM(( \video_timing|vcount\(28) ) + ( GND ) + ( \video_timing|Add0~54\ ))
-- \video_timing|Add0~50\ = CARRY(( \video_timing|vcount\(28) ) + ( GND ) + ( \video_timing|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(28),
	cin => \video_timing|Add0~54\,
	sumout => \video_timing|Add0~49_sumout\,
	cout => \video_timing|Add0~50\);

-- Location: FF_X59_Y21_N26
\video_timing|vcount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~49_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(28));

-- Location: LABCELL_X59_Y21_N27
\video_timing|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~45_sumout\ = SUM(( \video_timing|vcount\(29) ) + ( GND ) + ( \video_timing|Add0~50\ ))
-- \video_timing|Add0~46\ = CARRY(( \video_timing|vcount\(29) ) + ( GND ) + ( \video_timing|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(29),
	cin => \video_timing|Add0~50\,
	sumout => \video_timing|Add0~45_sumout\,
	cout => \video_timing|Add0~46\);

-- Location: FF_X59_Y21_N29
\video_timing|vcount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~45_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(29));

-- Location: LABCELL_X59_Y21_N30
\video_timing|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~41_sumout\ = SUM(( \video_timing|vcount\(30) ) + ( GND ) + ( \video_timing|Add0~46\ ))
-- \video_timing|Add0~42\ = CARRY(( \video_timing|vcount\(30) ) + ( GND ) + ( \video_timing|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_vcount\(30),
	cin => \video_timing|Add0~46\,
	sumout => \video_timing|Add0~41_sumout\,
	cout => \video_timing|Add0~42\);

-- Location: FF_X59_Y21_N32
\video_timing|vcount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~41_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(30));

-- Location: LABCELL_X58_Y21_N0
\video_timing|vcount_buf~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~0_combout\ = ( !\video_timing|vcount\(30) & ( (!\video_timing|vcount\(27) & (!\video_timing|vcount\(28) & !\video_timing|vcount\(29))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(27),
	datab => \video_timing|ALT_INV_vcount\(28),
	datac => \video_timing|ALT_INV_vcount\(29),
	dataf => \video_timing|ALT_INV_vcount\(30),
	combout => \video_timing|vcount_buf~0_combout\);

-- Location: LABCELL_X58_Y21_N48
\video_timing|vcount_buf~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~3_combout\ = ( !\video_timing|vcount\(17) & ( (!\video_timing|vcount\(18) & (!\video_timing|vcount\(19) & (!\video_timing|vcount\(20) & !\video_timing|vcount\(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(18),
	datab => \video_timing|ALT_INV_vcount\(19),
	datac => \video_timing|ALT_INV_vcount\(20),
	datad => \video_timing|ALT_INV_vcount\(16),
	dataf => \video_timing|ALT_INV_vcount\(17),
	combout => \video_timing|vcount_buf~3_combout\);

-- Location: LABCELL_X58_Y21_N24
\video_timing|vcount_buf~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~4_combout\ = ( !\video_timing|vcount\(15) & ( !\video_timing|vcount\(21) & ( (\video_timing|vcount_buf~1_combout\ & (\video_timing|vcount_buf~2_combout\ & (\video_timing|vcount_buf~0_combout\ & 
-- \video_timing|vcount_buf~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount_buf~1_combout\,
	datab => \video_timing|ALT_INV_vcount_buf~2_combout\,
	datac => \video_timing|ALT_INV_vcount_buf~0_combout\,
	datad => \video_timing|ALT_INV_vcount_buf~3_combout\,
	datae => \video_timing|ALT_INV_vcount\(15),
	dataf => \video_timing|ALT_INV_vcount\(21),
	combout => \video_timing|vcount_buf~4_combout\);

-- Location: LABCELL_X58_Y22_N21
\video_timing|vcount_buf~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~5_combout\ = ( \video_timing|vcount\(9) & ( (\video_timing|vcount\(3) & (\video_timing|vcount\(5) & !\video_timing|vcount\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(3),
	datab => \video_timing|ALT_INV_vcount\(5),
	datac => \video_timing|ALT_INV_vcount\(4),
	dataf => \video_timing|ALT_INV_vcount\(9),
	combout => \video_timing|vcount_buf~5_combout\);

-- Location: LABCELL_X59_Y21_N33
\video_timing|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~121_sumout\ = SUM(( \video_timing|vcount_buf\(31) ) + ( GND ) + ( \video_timing|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount_buf\(31),
	cin => \video_timing|Add0~42\,
	sumout => \video_timing|Add0~121_sumout\);

-- Location: FF_X59_Y21_N35
\video_timing|vcount_buf[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~121_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount_buf\(31));

-- Location: LABCELL_X58_Y22_N27
\video_timing|vcount_buf~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~6_combout\ = ( !\video_timing|vcount_buf\(31) & ( (\video_timing|vcount\(6) & (\video_timing|vcount_buf\(0) & \video_timing|vcount\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_vcount\(6),
	datac => \video_timing|ALT_INV_vcount_buf\(0),
	datad => \video_timing|ALT_INV_vcount\(7),
	dataf => \video_timing|ALT_INV_vcount_buf\(31),
	combout => \video_timing|vcount_buf~6_combout\);

-- Location: LABCELL_X58_Y22_N24
\video_timing|vcount_buf~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~7_combout\ = ( \video_timing|vcount_buf~6_combout\ & ( (\video_timing|vcount_buf~5_combout\ & (\video_timing|vcount\(2) & !\video_timing|vcount\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount_buf~5_combout\,
	datac => \video_timing|ALT_INV_vcount\(2),
	datad => \video_timing|ALT_INV_vcount\(1),
	dataf => \video_timing|ALT_INV_vcount_buf~6_combout\,
	combout => \video_timing|vcount_buf~7_combout\);

-- Location: LABCELL_X58_Y23_N27
\video_timing|vcount_buf~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~8_combout\ = ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (\video_timing|vcount_buf~4_combout\ & (\video_timing|Equal0~7_combout\ & \video_timing|vcount_buf~7_combout\)) ) ) # ( 
-- !\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount_buf~4_combout\,
	datac => \video_timing|ALT_INV_Equal0~7_combout\,
	datad => \video_timing|ALT_INV_vcount_buf~7_combout\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \video_timing|vcount_buf~8_combout\);

-- Location: FF_X59_Y22_N2
\video_timing|vcount_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~21_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount_buf\(0));

-- Location: LABCELL_X59_Y22_N3
\video_timing|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~29_sumout\ = SUM(( \video_timing|vcount\(1) ) + ( GND ) + ( \video_timing|Add0~22\ ))
-- \video_timing|Add0~30\ = CARRY(( \video_timing|vcount\(1) ) + ( GND ) + ( \video_timing|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \video_timing|ALT_INV_vcount\(1),
	cin => \video_timing|Add0~22\,
	sumout => \video_timing|Add0~29_sumout\,
	cout => \video_timing|Add0~30\);

-- Location: FF_X59_Y22_N5
\video_timing|vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~29_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(1));

-- Location: LABCELL_X59_Y22_N6
\video_timing|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~25_sumout\ = SUM(( \video_timing|vcount\(2) ) + ( GND ) + ( \video_timing|Add0~30\ ))
-- \video_timing|Add0~26\ = CARRY(( \video_timing|vcount\(2) ) + ( GND ) + ( \video_timing|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_vcount\(2),
	cin => \video_timing|Add0~30\,
	sumout => \video_timing|Add0~25_sumout\,
	cout => \video_timing|Add0~26\);

-- Location: FF_X59_Y22_N8
\video_timing|vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~25_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(2));

-- Location: LABCELL_X59_Y22_N9
\video_timing|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~17_sumout\ = SUM(( \video_timing|vcount\(3) ) + ( GND ) + ( \video_timing|Add0~26\ ))
-- \video_timing|Add0~18\ = CARRY(( \video_timing|vcount\(3) ) + ( GND ) + ( \video_timing|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(3),
	cin => \video_timing|Add0~26\,
	sumout => \video_timing|Add0~17_sumout\,
	cout => \video_timing|Add0~18\);

-- Location: FF_X59_Y22_N11
\video_timing|vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~17_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(3));

-- Location: LABCELL_X59_Y22_N12
\video_timing|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~13_sumout\ = SUM(( \video_timing|vcount\(4) ) + ( GND ) + ( \video_timing|Add0~18\ ))
-- \video_timing|Add0~14\ = CARRY(( \video_timing|vcount\(4) ) + ( GND ) + ( \video_timing|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_vcount\(4),
	cin => \video_timing|Add0~18\,
	sumout => \video_timing|Add0~13_sumout\,
	cout => \video_timing|Add0~14\);

-- Location: FF_X59_Y22_N14
\video_timing|vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~13_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(4));

-- Location: LABCELL_X59_Y22_N15
\video_timing|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Add0~9_sumout\ = SUM(( \video_timing|vcount\(5) ) + ( GND ) + ( \video_timing|Add0~14\ ))
-- \video_timing|Add0~10\ = CARRY(( \video_timing|vcount\(5) ) + ( GND ) + ( \video_timing|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(5),
	cin => \video_timing|Add0~14\,
	sumout => \video_timing|Add0~9_sumout\,
	cout => \video_timing|Add0~10\);

-- Location: FF_X59_Y22_N17
\video_timing|vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~9_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(5));

-- Location: FF_X59_Y22_N20
\video_timing|vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|Add0~5_sumout\,
	sclr => \video_timing|vcount_buf~8_combout\,
	ena => \video_timing|vcount_buf~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(6));

-- Location: LABCELL_X58_Y22_N39
\video_timing|vcount_buf~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~10_combout\ = ( \video_timing|vcount_buf\(0) & ( ((\video_timing|Equal0~7_combout\ & !\video_timing|Add0~21_sumout\)) # (\video_timing|vcount_buf~8_combout\) ) ) # ( !\video_timing|vcount_buf\(0) & ( 
-- (!\video_timing|Equal0~7_combout\) # ((!\video_timing|Add0~21_sumout\) # (\video_timing|vcount_buf~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001111111111111100111100111111000011110011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_Equal0~7_combout\,
	datac => \video_timing|ALT_INV_vcount_buf~8_combout\,
	datad => \video_timing|ALT_INV_Add0~21_sumout\,
	dataf => \video_timing|ALT_INV_vcount_buf\(0),
	combout => \video_timing|vcount_buf~10_combout\);

-- Location: FF_X58_Y22_N41
\video_timing|vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|vcount_buf~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(0));

-- Location: LABCELL_X58_Y22_N42
\renderer_inst|rectangle_inst|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \renderer_inst|rectangle_inst|LessThan3~0_combout\ = ( \video_timing|vcount\(3) & ( !\video_timing|vcount\(5) & ( (!\video_timing|vcount\(2) & (\video_timing|vcount\(0) & (!\video_timing|vcount\(1) & !\video_timing|vcount\(4)))) ) ) ) # ( 
-- !\video_timing|vcount\(3) & ( !\video_timing|vcount\(5) & ( !\video_timing|vcount\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(2),
	datab => \video_timing|ALT_INV_vcount\(0),
	datac => \video_timing|ALT_INV_vcount\(1),
	datad => \video_timing|ALT_INV_vcount\(4),
	datae => \video_timing|ALT_INV_vcount\(3),
	dataf => \video_timing|ALT_INV_vcount\(5),
	combout => \renderer_inst|rectangle_inst|LessThan3~0_combout\);

-- Location: LABCELL_X58_Y23_N48
\video_timing|LessThan5~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~12_combout\ = ( \video_timing|vcount_buf~7_combout\ & ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (!\video_timing|Equal0~7_combout\ & (!\video_timing|vcount_buf\(31))) # (\video_timing|Equal0~7_combout\ & 
-- (((!\video_timing|Add0~121_sumout\ & !\video_timing|vcount_buf~4_combout\)))) ) ) ) # ( !\video_timing|vcount_buf~7_combout\ & ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (!\video_timing|Equal0~7_combout\ & 
-- (!\video_timing|vcount_buf\(31))) # (\video_timing|Equal0~7_combout\ & ((!\video_timing|Add0~121_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010110011001010101011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount_buf\(31),
	datab => \video_timing|ALT_INV_Add0~121_sumout\,
	datac => \video_timing|ALT_INV_vcount_buf~4_combout\,
	datad => \video_timing|ALT_INV_Equal0~7_combout\,
	datae => \video_timing|ALT_INV_vcount_buf~7_combout\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \video_timing|LessThan5~12_combout\);

-- Location: LABCELL_X58_Y21_N30
\video_timing|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~2_combout\ = ( \video_timing|vcount\(15) & ( !\video_timing|Equal0~7_combout\ ) ) # ( !\video_timing|vcount\(15) & ( !\video_timing|Equal0~7_combout\ & ( (((\video_timing|vcount\(11)) # (\video_timing|vcount\(13))) # 
-- (\video_timing|vcount\(14))) # (\video_timing|vcount\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(12),
	datab => \video_timing|ALT_INV_vcount\(14),
	datac => \video_timing|ALT_INV_vcount\(13),
	datad => \video_timing|ALT_INV_vcount\(11),
	datae => \video_timing|ALT_INV_vcount\(15),
	dataf => \video_timing|ALT_INV_Equal0~7_combout\,
	combout => \video_timing|LessThan5~2_combout\);

-- Location: LABCELL_X58_Y21_N18
\video_timing|LessThan5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~5_combout\ = ( \video_timing|vcount\(22) & ( \video_timing|vcount\(21) & ( !\video_timing|Equal0~7_combout\ ) ) ) # ( !\video_timing|vcount\(22) & ( \video_timing|vcount\(21) & ( !\video_timing|Equal0~7_combout\ ) ) ) # ( 
-- \video_timing|vcount\(22) & ( !\video_timing|vcount\(21) & ( !\video_timing|Equal0~7_combout\ ) ) ) # ( !\video_timing|vcount\(22) & ( !\video_timing|vcount\(21) & ( (!\video_timing|Equal0~7_combout\ & (((\video_timing|vcount\(25)) # 
-- (\video_timing|vcount\(24))) # (\video_timing|vcount\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(23),
	datab => \video_timing|ALT_INV_vcount\(24),
	datac => \video_timing|ALT_INV_vcount\(25),
	datad => \video_timing|ALT_INV_Equal0~7_combout\,
	datae => \video_timing|ALT_INV_vcount\(22),
	dataf => \video_timing|ALT_INV_vcount\(21),
	combout => \video_timing|LessThan5~5_combout\);

-- Location: LABCELL_X58_Y21_N6
\video_timing|LessThan5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~3_combout\ = ( \video_timing|vcount\(16) & ( !\video_timing|Equal0~7_combout\ ) ) # ( !\video_timing|vcount\(16) & ( !\video_timing|Equal0~7_combout\ & ( (((\video_timing|vcount\(19)) # (\video_timing|vcount\(20))) # 
-- (\video_timing|vcount\(17))) # (\video_timing|vcount\(18)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(18),
	datab => \video_timing|ALT_INV_vcount\(17),
	datac => \video_timing|ALT_INV_vcount\(20),
	datad => \video_timing|ALT_INV_vcount\(19),
	datae => \video_timing|ALT_INV_vcount\(16),
	dataf => \video_timing|ALT_INV_Equal0~7_combout\,
	combout => \video_timing|LessThan5~3_combout\);

-- Location: LABCELL_X58_Y21_N42
\video_timing|LessThan5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~4_combout\ = ( \video_timing|vcount\(27) & ( !\video_timing|Equal0~7_combout\ ) ) # ( !\video_timing|vcount\(27) & ( !\video_timing|Equal0~7_combout\ & ( (((\video_timing|vcount\(26)) # (\video_timing|vcount\(29))) # 
-- (\video_timing|vcount\(28))) # (\video_timing|vcount\(30)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(30),
	datab => \video_timing|ALT_INV_vcount\(28),
	datac => \video_timing|ALT_INV_vcount\(29),
	datad => \video_timing|ALT_INV_vcount\(26),
	datae => \video_timing|ALT_INV_vcount\(27),
	dataf => \video_timing|ALT_INV_Equal0~7_combout\,
	combout => \video_timing|LessThan5~4_combout\);

-- Location: LABCELL_X58_Y21_N54
\video_timing|LessThan5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~6_combout\ = ( \video_timing|Add0~105_sumout\ & ( !\video_timing|LessThan5~4_combout\ & ( (!\video_timing|Equal0~7_combout\ & (!\video_timing|LessThan5~2_combout\ & (!\video_timing|LessThan5~5_combout\ & 
-- !\video_timing|LessThan5~3_combout\))) ) ) ) # ( !\video_timing|Add0~105_sumout\ & ( !\video_timing|LessThan5~4_combout\ & ( (!\video_timing|LessThan5~2_combout\ & (!\video_timing|LessThan5~5_combout\ & !\video_timing|LessThan5~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Equal0~7_combout\,
	datab => \video_timing|ALT_INV_LessThan5~2_combout\,
	datac => \video_timing|ALT_INV_LessThan5~5_combout\,
	datad => \video_timing|ALT_INV_LessThan5~3_combout\,
	datae => \video_timing|ALT_INV_Add0~105_sumout\,
	dataf => \video_timing|ALT_INV_LessThan5~4_combout\,
	combout => \video_timing|LessThan5~6_combout\);

-- Location: LABCELL_X58_Y23_N12
\video_timing|LessThan5~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~7_combout\ = ( \video_timing|LessThan5~6_combout\ & ( \video_timing|Add0~41_sumout\ & ( !\video_timing|Equal0~7_combout\ ) ) ) # ( \video_timing|LessThan5~6_combout\ & ( !\video_timing|Add0~41_sumout\ & ( 
-- (!\video_timing|Equal0~7_combout\) # ((!\video_timing|Add0~81_sumout\ & (!\video_timing|Add0~89_sumout\ & !\video_timing|Add0~85_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add0~81_sumout\,
	datab => \video_timing|ALT_INV_Add0~89_sumout\,
	datac => \video_timing|ALT_INV_Add0~85_sumout\,
	datad => \video_timing|ALT_INV_Equal0~7_combout\,
	datae => \video_timing|ALT_INV_LessThan5~6_combout\,
	dataf => \video_timing|ALT_INV_Add0~41_sumout\,
	combout => \video_timing|LessThan5~7_combout\);

-- Location: LABCELL_X58_Y21_N15
\video_timing|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~5_combout\ = ( !\video_timing|Equal0~7_combout\ & ( (!\video_timing|Add1~121_sumout\ & \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_Add1~121_sumout\,
	datad => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	dataf => \video_timing|ALT_INV_Equal0~7_combout\,
	combout => \video_timing|process_0~5_combout\);

-- Location: LABCELL_X59_Y21_N54
\video_timing|LessThan5~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~14_combout\ = ( !\video_timing|Add0~33_sumout\ & ( !\video_timing|Add0~93_sumout\ & ( (!\video_timing|Add0~97_sumout\ & (!\video_timing|Add0~53_sumout\ & !\video_timing|Add0~101_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add0~97_sumout\,
	datab => \video_timing|ALT_INV_Add0~53_sumout\,
	datac => \video_timing|ALT_INV_Add0~101_sumout\,
	datae => \video_timing|ALT_INV_Add0~33_sumout\,
	dataf => \video_timing|ALT_INV_Add0~93_sumout\,
	combout => \video_timing|LessThan5~14_combout\);

-- Location: LABCELL_X58_Y22_N6
\video_timing|LessThan5~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~10_combout\ = ( \video_timing|Add0~117_sumout\ & ( \video_timing|Add0~57_sumout\ & ( \video_timing|Equal0~7_combout\ ) ) ) # ( !\video_timing|Add0~117_sumout\ & ( \video_timing|Add0~57_sumout\ & ( \video_timing|Equal0~7_combout\ ) 
-- ) ) # ( \video_timing|Add0~117_sumout\ & ( !\video_timing|Add0~57_sumout\ & ( \video_timing|Equal0~7_combout\ ) ) ) # ( !\video_timing|Add0~117_sumout\ & ( !\video_timing|Add0~57_sumout\ & ( (\video_timing|Equal0~7_combout\ & 
-- (((\video_timing|Add0~37_sumout\) # (\video_timing|Add0~109_sumout\)) # (\video_timing|Add0~113_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add0~113_sumout\,
	datab => \video_timing|ALT_INV_Add0~109_sumout\,
	datac => \video_timing|ALT_INV_Add0~37_sumout\,
	datad => \video_timing|ALT_INV_Equal0~7_combout\,
	datae => \video_timing|ALT_INV_Add0~117_sumout\,
	dataf => \video_timing|ALT_INV_Add0~57_sumout\,
	combout => \video_timing|LessThan5~10_combout\);

-- Location: MLABCELL_X60_Y22_N42
\video_timing|LessThan5~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~8_combout\ = ( \video_timing|Add0~69_sumout\ & ( \video_timing|Add0~73_sumout\ & ( (!\video_timing|Equal0~7_combout\ & !\video_timing|vcount\(10)) ) ) ) # ( !\video_timing|Add0~69_sumout\ & ( \video_timing|Add0~73_sumout\ & ( 
-- (!\video_timing|Equal0~7_combout\ & !\video_timing|vcount\(10)) ) ) ) # ( \video_timing|Add0~69_sumout\ & ( !\video_timing|Add0~73_sumout\ & ( (!\video_timing|Equal0~7_combout\ & !\video_timing|vcount\(10)) ) ) ) # ( !\video_timing|Add0~69_sumout\ & ( 
-- !\video_timing|Add0~73_sumout\ & ( (!\video_timing|Equal0~7_combout\ & (((!\video_timing|vcount\(10))))) # (\video_timing|Equal0~7_combout\ & (!\video_timing|Add0~65_sumout\ & ((!\video_timing|Add0~61_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add0~65_sumout\,
	datab => \video_timing|ALT_INV_Equal0~7_combout\,
	datac => \video_timing|ALT_INV_vcount\(10),
	datad => \video_timing|ALT_INV_Add0~61_sumout\,
	datae => \video_timing|ALT_INV_Add0~69_sumout\,
	dataf => \video_timing|ALT_INV_Add0~73_sumout\,
	combout => \video_timing|LessThan5~8_combout\);

-- Location: LABCELL_X59_Y21_N36
\video_timing|LessThan5~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~11_combout\ = ( \video_timing|Equal0~7_combout\ & ( \video_timing|LessThan5~8_combout\ & ( (\video_timing|LessThan5~14_combout\ & (!\video_timing|Add0~49_sumout\ & (!\video_timing|LessThan5~10_combout\ & 
-- !\video_timing|Add0~45_sumout\))) ) ) ) # ( !\video_timing|Equal0~7_combout\ & ( \video_timing|LessThan5~8_combout\ & ( !\video_timing|LessThan5~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_LessThan5~14_combout\,
	datab => \video_timing|ALT_INV_Add0~49_sumout\,
	datac => \video_timing|ALT_INV_LessThan5~10_combout\,
	datad => \video_timing|ALT_INV_Add0~45_sumout\,
	datae => \video_timing|ALT_INV_Equal0~7_combout\,
	dataf => \video_timing|ALT_INV_LessThan5~8_combout\,
	combout => \video_timing|LessThan5~11_combout\);

-- Location: LABCELL_X58_Y22_N0
\video_timing|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~0_combout\ = ( \video_timing|Add0~5_sumout\ & ( (!\video_timing|Equal0~7_combout\ & (\video_timing|vcount\(7) & (\video_timing|vcount\(6)))) # (\video_timing|Equal0~7_combout\ & (((\video_timing|Add0~1_sumout\)))) ) ) # ( 
-- !\video_timing|Add0~5_sumout\ & ( (\video_timing|vcount\(7) & (!\video_timing|Equal0~7_combout\ & \video_timing|vcount\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100001101110000010000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(7),
	datab => \video_timing|ALT_INV_Equal0~7_combout\,
	datac => \video_timing|ALT_INV_vcount\(6),
	datad => \video_timing|ALT_INV_Add0~1_sumout\,
	dataf => \video_timing|ALT_INV_Add0~5_sumout\,
	combout => \video_timing|LessThan5~0_combout\);

-- Location: LABCELL_X58_Y21_N3
\video_timing|vcount_buf~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~13_combout\ = ( \video_timing|Equal0~7_combout\ & ( \video_timing|Add0~77_sumout\ ) ) # ( !\video_timing|Equal0~7_combout\ & ( \video_timing|vcount\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(8),
	datad => \video_timing|ALT_INV_Add0~77_sumout\,
	dataf => \video_timing|ALT_INV_Equal0~7_combout\,
	combout => \video_timing|vcount_buf~13_combout\);

-- Location: LABCELL_X58_Y23_N33
\video_timing|vcount_buf~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~15_combout\ = ( \video_timing|Equal0~7_combout\ & ( \video_timing|Add0~13_sumout\ ) ) # ( !\video_timing|Equal0~7_combout\ & ( \video_timing|vcount\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_vcount\(4),
	datad => \video_timing|ALT_INV_Add0~13_sumout\,
	dataf => \video_timing|ALT_INV_Equal0~7_combout\,
	combout => \video_timing|vcount_buf~15_combout\);

-- Location: LABCELL_X61_Y22_N33
\video_timing|vcount_buf~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~14_combout\ = ( \video_timing|Equal0~7_combout\ & ( \video_timing|Add0~9_sumout\ ) ) # ( !\video_timing|Equal0~7_combout\ & ( \video_timing|vcount\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(5),
	datac => \video_timing|ALT_INV_Add0~9_sumout\,
	dataf => \video_timing|ALT_INV_Equal0~7_combout\,
	combout => \video_timing|vcount_buf~14_combout\);

-- Location: LABCELL_X58_Y23_N3
\video_timing|vcount_buf~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~12_combout\ = ( \video_timing|vcount\(9) & ( (!\video_timing|Equal0~7_combout\) # (\video_timing|Add0~125_sumout\) ) ) # ( !\video_timing|vcount\(9) & ( (\video_timing|Equal0~7_combout\ & \video_timing|Add0~125_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_Equal0~7_combout\,
	datac => \video_timing|ALT_INV_Add0~125_sumout\,
	dataf => \video_timing|ALT_INV_vcount\(9),
	combout => \video_timing|vcount_buf~12_combout\);

-- Location: LABCELL_X58_Y23_N36
\video_timing|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~1_combout\ = ( \video_timing|vcount_buf~12_combout\ & ( ((\video_timing|LessThan5~0_combout\ & ((\video_timing|vcount_buf~14_combout\) # (\video_timing|vcount_buf~15_combout\)))) # (\video_timing|vcount_buf~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110111011101110011011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_LessThan5~0_combout\,
	datab => \video_timing|ALT_INV_vcount_buf~13_combout\,
	datac => \video_timing|ALT_INV_vcount_buf~15_combout\,
	datad => \video_timing|ALT_INV_vcount_buf~14_combout\,
	dataf => \video_timing|ALT_INV_vcount_buf~12_combout\,
	combout => \video_timing|LessThan5~1_combout\);

-- Location: LABCELL_X59_Y23_N24
\video_timing|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~3_combout\ = ( !\video_timing|Add1~53_sumout\ & ( !\video_timing|Add1~65_sumout\ & ( (!\video_timing|Add1~57_sumout\ & (!\video_timing|Add1~33_sumout\ & (!\video_timing|Add1~61_sumout\ & !\video_timing|Add1~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add1~57_sumout\,
	datab => \video_timing|ALT_INV_Add1~33_sumout\,
	datac => \video_timing|ALT_INV_Add1~61_sumout\,
	datad => \video_timing|ALT_INV_Add1~69_sumout\,
	datae => \video_timing|ALT_INV_Add1~53_sumout\,
	dataf => \video_timing|ALT_INV_Add1~65_sumout\,
	combout => \video_timing|process_0~3_combout\);

-- Location: MLABCELL_X60_Y22_N54
\video_timing|process_0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~19_combout\ = ( !\video_timing|Add1~5_sumout\ & ( !\video_timing|Add1~37_sumout\ & ( (!\video_timing|Add1~25_sumout\ & (!\video_timing|Add1~41_sumout\ & (!\video_timing|Add1~45_sumout\ & !\video_timing|Add1~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add1~25_sumout\,
	datab => \video_timing|ALT_INV_Add1~41_sumout\,
	datac => \video_timing|ALT_INV_Add1~45_sumout\,
	datad => \video_timing|ALT_INV_Add1~49_sumout\,
	datae => \video_timing|ALT_INV_Add1~5_sumout\,
	dataf => \video_timing|ALT_INV_Add1~37_sumout\,
	combout => \video_timing|process_0~19_combout\);

-- Location: LABCELL_X59_Y23_N21
\video_timing|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~0_combout\ = ( \video_timing|Add1~97_sumout\ & ( \video_timing|Add1~125_sumout\ ) ) # ( !\video_timing|Add1~97_sumout\ & ( (\video_timing|Add1~125_sumout\ & \video_timing|Add1~101_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add1~125_sumout\,
	datac => \video_timing|ALT_INV_Add1~101_sumout\,
	dataf => \video_timing|ALT_INV_Add1~97_sumout\,
	combout => \video_timing|process_0~0_combout\);

-- Location: LABCELL_X61_Y23_N54
\video_timing|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~1_combout\ = ( !\video_timing|Add1~73_sumout\ & ( !\video_timing|Add1~17_sumout\ & ( (!\video_timing|Add1~13_sumout\ & (!\video_timing|Add1~9_sumout\ & (!\video_timing|Add1~77_sumout\ & !\video_timing|Add1~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add1~13_sumout\,
	datab => \video_timing|ALT_INV_Add1~9_sumout\,
	datac => \video_timing|ALT_INV_Add1~77_sumout\,
	datad => \video_timing|ALT_INV_Add1~21_sumout\,
	datae => \video_timing|ALT_INV_Add1~73_sumout\,
	dataf => \video_timing|ALT_INV_Add1~17_sumout\,
	combout => \video_timing|process_0~1_combout\);

-- Location: LABCELL_X59_Y23_N30
\video_timing|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~4_combout\ = ( !\video_timing|Add1~1_sumout\ & ( \video_timing|process_0~1_combout\ & ( (\video_timing|process_0~3_combout\ & (\video_timing|process_0~19_combout\ & (!\video_timing|process_0~0_combout\ & 
-- !\video_timing|Add1~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_process_0~3_combout\,
	datab => \video_timing|ALT_INV_process_0~19_combout\,
	datac => \video_timing|ALT_INV_process_0~0_combout\,
	datad => \video_timing|ALT_INV_Add1~29_sumout\,
	datae => \video_timing|ALT_INV_Add1~1_sumout\,
	dataf => \video_timing|ALT_INV_process_0~1_combout\,
	combout => \video_timing|process_0~4_combout\);

-- Location: LABCELL_X58_Y23_N6
\video_timing|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~6_combout\ = ( \video_timing|LessThan5~1_combout\ & ( \video_timing|process_0~4_combout\ & ( !\video_timing|LessThan5~12_combout\ ) ) ) # ( !\video_timing|LessThan5~1_combout\ & ( \video_timing|process_0~4_combout\ & ( 
-- (!\video_timing|LessThan5~12_combout\) # ((\video_timing|LessThan5~7_combout\ & \video_timing|LessThan5~11_combout\)) ) ) ) # ( \video_timing|LessThan5~1_combout\ & ( !\video_timing|process_0~4_combout\ & ( (!\video_timing|LessThan5~12_combout\ & 
-- !\video_timing|process_0~5_combout\) ) ) ) # ( !\video_timing|LessThan5~1_combout\ & ( !\video_timing|process_0~4_combout\ & ( (!\video_timing|process_0~5_combout\ & ((!\video_timing|LessThan5~12_combout\) # ((\video_timing|LessThan5~7_combout\ & 
-- \video_timing|LessThan5~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010110000101000001010000010101010101110111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_LessThan5~12_combout\,
	datab => \video_timing|ALT_INV_LessThan5~7_combout\,
	datac => \video_timing|ALT_INV_process_0~5_combout\,
	datad => \video_timing|ALT_INV_LessThan5~11_combout\,
	datae => \video_timing|ALT_INV_LessThan5~1_combout\,
	dataf => \video_timing|ALT_INV_process_0~4_combout\,
	combout => \video_timing|process_0~6_combout\);

-- Location: FF_X58_Y23_N8
\video_timing|de\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|de~q\);

-- Location: LABCELL_X59_Y21_N51
\video_timing|vcount_buf~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|vcount_buf~11_combout\ = ( \video_timing|vcount_buf\(31) & ( ((\video_timing|Equal0~7_combout\ & !\video_timing|Add0~121_sumout\)) # (\video_timing|vcount_buf~8_combout\) ) ) # ( !\video_timing|vcount_buf\(31) & ( 
-- (!\video_timing|Equal0~7_combout\) # ((!\video_timing|Add0~121_sumout\) # (\video_timing|vcount_buf~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111010111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Equal0~7_combout\,
	datac => \video_timing|ALT_INV_vcount_buf~8_combout\,
	datad => \video_timing|ALT_INV_Add0~121_sumout\,
	dataf => \video_timing|ALT_INV_vcount_buf\(31),
	combout => \video_timing|vcount_buf~11_combout\);

-- Location: FF_X58_Y23_N5
\video_timing|vcount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \video_timing|vcount_buf~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vcount\(31));

-- Location: LABCELL_X58_Y21_N51
\video_timing|hcount_buf~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|hcount_buf~2_combout\ = (!\video_timing|Add1~121_sumout\) # (\video_timing|hcount_buf~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount_buf~0_combout\,
	datad => \video_timing|ALT_INV_Add1~121_sumout\,
	combout => \video_timing|hcount_buf~2_combout\);

-- Location: FF_X58_Y21_N52
\video_timing|hcount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|hcount_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(31));

-- Location: LABCELL_X58_Y23_N42
\renderer_inst|rgb[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \renderer_inst|rgb[0]~0_combout\ = ( \video_timing|vcount\(31) & ( \video_timing|hcount\(31) & ( (!\video_timing|hcount\(10) & (\video_timing|de~q\ & !\video_timing|vcount\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(10),
	datab => \video_timing|ALT_INV_de~q\,
	datad => \video_timing|ALT_INV_vcount\(9),
	datae => \video_timing|ALT_INV_vcount\(31),
	dataf => \video_timing|ALT_INV_hcount\(31),
	combout => \renderer_inst|rgb[0]~0_combout\);

-- Location: LABCELL_X61_Y23_N21
\video_timing|hcount_buf~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|hcount_buf~1_combout\ = ( \video_timing|Add1~89_sumout\ & ( \video_timing|hcount_buf~0_combout\ ) ) # ( !\video_timing|Add1~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \video_timing|ALT_INV_hcount_buf~0_combout\,
	dataf => \video_timing|ALT_INV_Add1~89_sumout\,
	combout => \video_timing|hcount_buf~1_combout\);

-- Location: FF_X61_Y23_N23
\video_timing|hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|hcount_buf~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hcount\(0));

-- Location: LABCELL_X61_Y23_N42
\renderer_inst|rectangle_inst|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \renderer_inst|rectangle_inst|LessThan1~0_combout\ = ( \video_timing|hcount\(1) & ( (!\video_timing|hcount\(3) & !\video_timing|hcount\(2)) ) ) # ( !\video_timing|hcount\(1) & ( (!\video_timing|hcount\(3) & ((!\video_timing|hcount\(2)) # 
-- (\video_timing|hcount\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(3),
	datac => \video_timing|ALT_INV_hcount\(2),
	datad => \video_timing|ALT_INV_hcount\(0),
	dataf => \video_timing|ALT_INV_hcount\(1),
	combout => \renderer_inst|rectangle_inst|LessThan1~0_combout\);

-- Location: LABCELL_X61_Y23_N24
\renderer_inst|rgb[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \renderer_inst|rgb[0]~1_combout\ = ( \video_timing|hcount\(3) & ( !\video_timing|hcount\(6) & ( (!\video_timing|hcount\(7) & (!\video_timing|hcount\(8) & !\video_timing|hcount\(5))) ) ) ) # ( !\video_timing|hcount\(3) & ( !\video_timing|hcount\(6) & ( 
-- (!\video_timing|hcount\(7) & (!\video_timing|hcount\(8) & ((!\video_timing|hcount\(4)) # (!\video_timing|hcount\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(7),
	datab => \video_timing|ALT_INV_hcount\(8),
	datac => \video_timing|ALT_INV_hcount\(4),
	datad => \video_timing|ALT_INV_hcount\(5),
	datae => \video_timing|ALT_INV_hcount\(3),
	dataf => \video_timing|ALT_INV_hcount\(6),
	combout => \renderer_inst|rgb[0]~1_combout\);

-- Location: LABCELL_X58_Y22_N18
\renderer_inst|rgb[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \renderer_inst|rgb[0]~2_combout\ = ( !\video_timing|vcount\(6) & ( (!\video_timing|vcount\(7) & ((!\video_timing|vcount\(5)) # ((!\video_timing|vcount\(3) & !\video_timing|vcount\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(3),
	datab => \video_timing|ALT_INV_vcount\(5),
	datac => \video_timing|ALT_INV_vcount\(7),
	datad => \video_timing|ALT_INV_vcount\(4),
	dataf => \video_timing|ALT_INV_vcount\(6),
	combout => \renderer_inst|rgb[0]~2_combout\);

-- Location: LABCELL_X61_Y23_N18
\renderer_inst|rectangle_inst|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \renderer_inst|rectangle_inst|LessThan1~1_combout\ = ( \video_timing|hcount\(5) & ( (\video_timing|hcount\(7) & (\video_timing|hcount\(8) & (\video_timing|hcount\(6) & \video_timing|hcount\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_hcount\(7),
	datab => \video_timing|ALT_INV_hcount\(8),
	datac => \video_timing|ALT_INV_hcount\(6),
	datad => \video_timing|ALT_INV_hcount\(4),
	dataf => \video_timing|ALT_INV_hcount\(5),
	combout => \renderer_inst|rectangle_inst|LessThan1~1_combout\);

-- Location: LABCELL_X61_Y23_N30
\renderer_inst|rgb[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \renderer_inst|rgb[0]~3_combout\ = ( !\video_timing|hcount\(9) & ( \renderer_inst|rectangle_inst|LessThan1~1_combout\ & ( (\renderer_inst|rgb[0]~0_combout\ & (\renderer_inst|rectangle_inst|LessThan1~0_combout\ & (!\renderer_inst|rgb[0]~1_combout\ & 
-- !\renderer_inst|rgb[0]~2_combout\))) ) ) ) # ( !\video_timing|hcount\(9) & ( !\renderer_inst|rectangle_inst|LessThan1~1_combout\ & ( (\renderer_inst|rgb[0]~0_combout\ & (!\renderer_inst|rgb[0]~1_combout\ & !\renderer_inst|rgb[0]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \renderer_inst|ALT_INV_rgb[0]~0_combout\,
	datab => \renderer_inst|rectangle_inst|ALT_INV_LessThan1~0_combout\,
	datac => \renderer_inst|ALT_INV_rgb[0]~1_combout\,
	datad => \renderer_inst|ALT_INV_rgb[0]~2_combout\,
	datae => \video_timing|ALT_INV_hcount\(9),
	dataf => \renderer_inst|rectangle_inst|ALT_INV_LessThan1~1_combout\,
	combout => \renderer_inst|rgb[0]~3_combout\);

-- Location: LABCELL_X61_Y23_N45
\video_timing|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|Equal0~4_combout\ = ( \video_timing|Equal0~3_combout\ & ( (\video_timing|Equal0~2_combout\ & (\video_timing|Equal0~0_combout\ & \video_timing|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \video_timing|ALT_INV_Equal0~2_combout\,
	datac => \video_timing|ALT_INV_Equal0~0_combout\,
	datad => \video_timing|ALT_INV_Equal0~1_combout\,
	dataf => \video_timing|ALT_INV_Equal0~3_combout\,
	combout => \video_timing|Equal0~4_combout\);

-- Location: LABCELL_X61_Y22_N36
\renderer_inst|rgb[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \renderer_inst|rgb[0]~4_combout\ = ( \video_timing|Equal0~4_combout\ & ( \video_timing|vcount_buf~4_combout\ & ( (\renderer_inst|rgb[0]~3_combout\ & ((!\video_timing|vcount\(6)) # ((!\video_timing|vcount\(7)) # 
-- (\renderer_inst|rectangle_inst|LessThan3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(6),
	datab => \video_timing|ALT_INV_vcount\(7),
	datac => \renderer_inst|rectangle_inst|ALT_INV_LessThan3~0_combout\,
	datad => \renderer_inst|ALT_INV_rgb[0]~3_combout\,
	datae => \video_timing|ALT_INV_Equal0~4_combout\,
	dataf => \video_timing|ALT_INV_vcount_buf~4_combout\,
	combout => \renderer_inst|rgb[0]~4_combout\);

-- Location: FF_X58_Y23_N7
\video_timing|de~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|de~DUPLICATE_q\);

-- Location: LABCELL_X59_Y23_N12
\video_timing|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~7_combout\ = ( !\video_timing|Add1~65_sumout\ & ( !\video_timing|Add1~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \video_timing|ALT_INV_Add1~69_sumout\,
	dataf => \video_timing|ALT_INV_Add1~65_sumout\,
	combout => \video_timing|process_0~7_combout\);

-- Location: LABCELL_X59_Y23_N36
\video_timing|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~8_combout\ = ( !\video_timing|Add1~57_sumout\ & ( !\video_timing|Add1~61_sumout\ & ( (!\video_timing|Add1~53_sumout\ & (\video_timing|process_0~7_combout\ & (!\video_timing|Add1~33_sumout\ & !\video_timing|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add1~53_sumout\,
	datab => \video_timing|ALT_INV_process_0~7_combout\,
	datac => \video_timing|ALT_INV_Add1~33_sumout\,
	datad => \video_timing|ALT_INV_Add1~1_sumout\,
	datae => \video_timing|ALT_INV_Add1~57_sumout\,
	dataf => \video_timing|ALT_INV_Add1~61_sumout\,
	combout => \video_timing|process_0~8_combout\);

-- Location: MLABCELL_X60_Y22_N48
\video_timing|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~2_combout\ = ( !\video_timing|Add1~5_sumout\ & ( !\video_timing|Add1~49_sumout\ & ( (\video_timing|process_0~1_combout\ & (!\video_timing|Add1~41_sumout\ & (!\video_timing|Add1~45_sumout\ & !\video_timing|Add1~37_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_process_0~1_combout\,
	datab => \video_timing|ALT_INV_Add1~41_sumout\,
	datac => \video_timing|ALT_INV_Add1~45_sumout\,
	datad => \video_timing|ALT_INV_Add1~37_sumout\,
	datae => \video_timing|ALT_INV_Add1~5_sumout\,
	dataf => \video_timing|ALT_INV_Add1~49_sumout\,
	combout => \video_timing|process_0~2_combout\);

-- Location: LABCELL_X59_Y23_N18
\video_timing|process_0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~10_combout\ = ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (\video_timing|Add1~125_sumout\ & !\video_timing|Equal0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add1~125_sumout\,
	datac => \video_timing|ALT_INV_Equal0~7_combout\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \video_timing|process_0~10_combout\);

-- Location: LABCELL_X59_Y23_N42
\video_timing|process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~9_combout\ = ( \video_timing|Add1~109_sumout\ & ( \video_timing|Add1~93_sumout\ & ( (\video_timing|Add1~113_sumout\ & (((\video_timing|Add1~81_sumout\ & \video_timing|Add1~85_sumout\)) # (\video_timing|Add1~117_sumout\))) ) ) ) # ( 
-- \video_timing|Add1~109_sumout\ & ( !\video_timing|Add1~93_sumout\ & ( (\video_timing|Add1~117_sumout\ & \video_timing|Add1~113_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add1~81_sumout\,
	datab => \video_timing|ALT_INV_Add1~117_sumout\,
	datac => \video_timing|ALT_INV_Add1~113_sumout\,
	datad => \video_timing|ALT_INV_Add1~85_sumout\,
	datae => \video_timing|ALT_INV_Add1~109_sumout\,
	dataf => \video_timing|ALT_INV_Add1~93_sumout\,
	combout => \video_timing|process_0~9_combout\);

-- Location: LABCELL_X59_Y23_N48
\video_timing|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan1~0_combout\ = ( !\video_timing|Add1~109_sumout\ & ( \video_timing|Add1~93_sumout\ & ( (!\video_timing|Add1~113_sumout\ & ((!\video_timing|Add1~117_sumout\) # ((!\video_timing|Add1~81_sumout\ & !\video_timing|Add1~85_sumout\)))) ) ) 
-- ) # ( !\video_timing|Add1~109_sumout\ & ( !\video_timing|Add1~93_sumout\ & ( (!\video_timing|Add1~113_sumout\ & ((!\video_timing|Add1~81_sumout\) # (!\video_timing|Add1~117_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000000000000000000011100000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add1~81_sumout\,
	datab => \video_timing|ALT_INV_Add1~117_sumout\,
	datac => \video_timing|ALT_INV_Add1~113_sumout\,
	datad => \video_timing|ALT_INV_Add1~85_sumout\,
	datae => \video_timing|ALT_INV_Add1~109_sumout\,
	dataf => \video_timing|ALT_INV_Add1~93_sumout\,
	combout => \video_timing|LessThan1~0_combout\);

-- Location: LABCELL_X59_Y23_N54
\video_timing|process_0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~11_combout\ = ( \video_timing|Add1~105_sumout\ & ( \video_timing|LessThan1~0_combout\ & ( (\video_timing|process_0~10_combout\ & (!\video_timing|Add1~97_sumout\ & \video_timing|Add1~101_sumout\)) ) ) ) # ( 
-- !\video_timing|Add1~105_sumout\ & ( \video_timing|LessThan1~0_combout\ & ( (\video_timing|process_0~10_combout\ & (\video_timing|process_0~9_combout\ & (!\video_timing|Add1~97_sumout\ & \video_timing|Add1~101_sumout\))) ) ) ) # ( 
-- !\video_timing|Add1~105_sumout\ & ( !\video_timing|LessThan1~0_combout\ & ( (\video_timing|process_0~10_combout\ & (\video_timing|process_0~9_combout\ & (!\video_timing|Add1~97_sumout\ & \video_timing|Add1~101_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_process_0~10_combout\,
	datab => \video_timing|ALT_INV_process_0~9_combout\,
	datac => \video_timing|ALT_INV_Add1~97_sumout\,
	datad => \video_timing|ALT_INV_Add1~101_sumout\,
	datae => \video_timing|ALT_INV_Add1~105_sumout\,
	dataf => \video_timing|ALT_INV_LessThan1~0_combout\,
	combout => \video_timing|process_0~11_combout\);

-- Location: LABCELL_X59_Y23_N0
\video_timing|process_0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~12_combout\ = ( !\video_timing|Add1~121_sumout\ & ( !\video_timing|Add1~25_sumout\ & ( (\video_timing|process_0~8_combout\ & (\video_timing|process_0~2_combout\ & (\video_timing|process_0~11_combout\ & 
-- !\video_timing|Add1~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_process_0~8_combout\,
	datab => \video_timing|ALT_INV_process_0~2_combout\,
	datac => \video_timing|ALT_INV_process_0~11_combout\,
	datad => \video_timing|ALT_INV_Add1~29_sumout\,
	datae => \video_timing|ALT_INV_Add1~121_sumout\,
	dataf => \video_timing|ALT_INV_Add1~25_sumout\,
	combout => \video_timing|process_0~12_combout\);

-- Location: FF_X59_Y23_N1
\video_timing|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|process_0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|hsync~q\);

-- Location: LABCELL_X59_Y21_N42
\video_timing|LessThan5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~9_combout\ = ( \video_timing|Add0~97_sumout\ & ( \video_timing|LessThan5~8_combout\ & ( !\video_timing|Equal0~7_combout\ ) ) ) # ( !\video_timing|Add0~97_sumout\ & ( \video_timing|LessThan5~8_combout\ & ( 
-- (!\video_timing|Equal0~7_combout\) # ((!\video_timing|Add0~33_sumout\ & (!\video_timing|Add0~93_sumout\ & !\video_timing|Add0~101_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add0~33_sumout\,
	datab => \video_timing|ALT_INV_Add0~93_sumout\,
	datac => \video_timing|ALT_INV_Add0~101_sumout\,
	datad => \video_timing|ALT_INV_Equal0~7_combout\,
	datae => \video_timing|ALT_INV_Add0~97_sumout\,
	dataf => \video_timing|ALT_INV_LessThan5~8_combout\,
	combout => \video_timing|LessThan5~9_combout\);

-- Location: LABCELL_X58_Y22_N36
\video_timing|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan3~0_combout\ = ( \video_timing|Add0~25_sumout\ & ( (!\video_timing|vcount\(2) & (!\video_timing|Equal0~7_combout\ & !\video_timing|vcount\(1))) ) ) # ( !\video_timing|Add0~25_sumout\ & ( (!\video_timing|Equal0~7_combout\ & 
-- (!\video_timing|vcount\(2) & (!\video_timing|vcount\(1)))) # (\video_timing|Equal0~7_combout\ & (((!\video_timing|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001110000000101100111000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(2),
	datab => \video_timing|ALT_INV_Equal0~7_combout\,
	datac => \video_timing|ALT_INV_vcount\(1),
	datad => \video_timing|ALT_INV_Add0~29_sumout\,
	dataf => \video_timing|ALT_INV_Add0~25_sumout\,
	combout => \video_timing|LessThan3~0_combout\);

-- Location: LABCELL_X58_Y23_N0
\video_timing|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan3~2_combout\ = ( \video_timing|vcount\(4) & ( (!\video_timing|Equal0~7_combout\ & (\video_timing|vcount\(3))) # (\video_timing|Equal0~7_combout\ & (((\video_timing|Add0~13_sumout\ & \video_timing|Add0~17_sumout\)))) ) ) # ( 
-- !\video_timing|vcount\(4) & ( (\video_timing|Equal0~7_combout\ & (\video_timing|Add0~13_sumout\ & \video_timing|Add0~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001101000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(3),
	datab => \video_timing|ALT_INV_Equal0~7_combout\,
	datac => \video_timing|ALT_INV_Add0~13_sumout\,
	datad => \video_timing|ALT_INV_Add0~17_sumout\,
	dataf => \video_timing|ALT_INV_vcount\(4),
	combout => \video_timing|LessThan3~2_combout\);

-- Location: LABCELL_X58_Y22_N12
\video_timing|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan3~1_combout\ = ( \video_timing|vcount\(5) & ( (!\video_timing|Add0~77_sumout\ & (!\video_timing|Add0~9_sumout\ & \video_timing|Equal0~7_combout\)) ) ) # ( !\video_timing|vcount\(5) & ( (!\video_timing|Equal0~7_combout\ & 
-- (((!\video_timing|vcount\(8))))) # (\video_timing|Equal0~7_combout\ & (!\video_timing|Add0~77_sumout\ & ((!\video_timing|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010100000110011001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add0~77_sumout\,
	datab => \video_timing|ALT_INV_vcount\(8),
	datac => \video_timing|ALT_INV_Add0~9_sumout\,
	datad => \video_timing|ALT_INV_Equal0~7_combout\,
	dataf => \video_timing|ALT_INV_vcount\(5),
	combout => \video_timing|LessThan3~1_combout\);

-- Location: LABCELL_X58_Y23_N39
\video_timing|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan3~3_combout\ = ( \video_timing|LessThan3~1_combout\ & ( (!\video_timing|LessThan3~0_combout\ & (\video_timing|LessThan3~2_combout\ & ((\video_timing|vcount_buf~13_combout\) # (\video_timing|LessThan5~0_combout\)))) ) ) # ( 
-- !\video_timing|LessThan3~1_combout\ & ( (\video_timing|vcount_buf~13_combout\) # (\video_timing|LessThan5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100000000011100000000000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_LessThan5~0_combout\,
	datab => \video_timing|ALT_INV_vcount_buf~13_combout\,
	datac => \video_timing|ALT_INV_LessThan3~0_combout\,
	datad => \video_timing|ALT_INV_LessThan3~2_combout\,
	dataf => \video_timing|ALT_INV_LessThan3~1_combout\,
	combout => \video_timing|LessThan3~3_combout\);

-- Location: LABCELL_X58_Y23_N54
\video_timing|process_0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~20_combout\ = ( \video_timing|Add0~89_sumout\ & ( \video_timing|Add0~41_sumout\ & ( \video_timing|Equal0~7_combout\ ) ) ) # ( !\video_timing|Add0~89_sumout\ & ( \video_timing|Add0~41_sumout\ & ( \video_timing|Equal0~7_combout\ ) ) 
-- ) # ( \video_timing|Add0~89_sumout\ & ( !\video_timing|Add0~41_sumout\ & ( \video_timing|Equal0~7_combout\ ) ) ) # ( !\video_timing|Add0~89_sumout\ & ( !\video_timing|Add0~41_sumout\ & ( (\video_timing|Equal0~7_combout\ & (((\video_timing|Add0~85_sumout\) 
-- # (\video_timing|Add0~121_sumout\)) # (\video_timing|Add0~81_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add0~81_sumout\,
	datab => \video_timing|ALT_INV_Add0~121_sumout\,
	datac => \video_timing|ALT_INV_Add0~85_sumout\,
	datad => \video_timing|ALT_INV_Equal0~7_combout\,
	datae => \video_timing|ALT_INV_Add0~89_sumout\,
	dataf => \video_timing|ALT_INV_Add0~41_sumout\,
	combout => \video_timing|process_0~20_combout\);

-- Location: LABCELL_X58_Y22_N3
\video_timing|process_0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~13_combout\ = ( \video_timing|Add0~77_sumout\ & ( (!\video_timing|vcount\(7) & (!\video_timing|Equal0~7_combout\ & !\video_timing|vcount\(8))) ) ) # ( !\video_timing|Add0~77_sumout\ & ( (!\video_timing|Equal0~7_combout\ & 
-- (!\video_timing|vcount\(7) & (!\video_timing|vcount\(8)))) # (\video_timing|Equal0~7_combout\ & (((!\video_timing|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001110000000101100111000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(7),
	datab => \video_timing|ALT_INV_Equal0~7_combout\,
	datac => \video_timing|ALT_INV_vcount\(8),
	datad => \video_timing|ALT_INV_Add0~1_sumout\,
	dataf => \video_timing|ALT_INV_Add0~77_sumout\,
	combout => \video_timing|process_0~13_combout\);

-- Location: LABCELL_X58_Y22_N54
\video_timing|process_0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~18_combout\ = ( \video_timing|vcount\(3) & ( \video_timing|Equal0~7_combout\ & ( (!\video_timing|Add0~25_sumout\) # ((!\video_timing|Add0~21_sumout\ & !\video_timing|Add0~29_sumout\)) ) ) ) # ( !\video_timing|vcount\(3) & ( 
-- \video_timing|Equal0~7_combout\ & ( (!\video_timing|Add0~25_sumout\) # ((!\video_timing|Add0~21_sumout\ & !\video_timing|Add0~29_sumout\)) ) ) ) # ( \video_timing|vcount\(3) & ( !\video_timing|Equal0~7_combout\ & ( !\video_timing|vcount\(4) ) ) ) # ( 
-- !\video_timing|vcount\(3) & ( !\video_timing|Equal0~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001100110011111111101000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add0~21_sumout\,
	datab => \video_timing|ALT_INV_vcount\(4),
	datac => \video_timing|ALT_INV_Add0~29_sumout\,
	datad => \video_timing|ALT_INV_Add0~25_sumout\,
	datae => \video_timing|ALT_INV_vcount\(3),
	dataf => \video_timing|ALT_INV_Equal0~7_combout\,
	combout => \video_timing|process_0~18_combout\);

-- Location: LABCELL_X58_Y22_N48
\video_timing|process_0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~17_combout\ = ( \video_timing|vcount\(1) & ( !\video_timing|vcount\(5) & ( (!\video_timing|vcount\(8) & ((!\video_timing|vcount\(4)) # (!\video_timing|vcount\(2)))) ) ) ) # ( !\video_timing|vcount\(1) & ( !\video_timing|vcount\(5) 
-- & ( (!\video_timing|vcount\(8) & ((!\video_timing|vcount\(4)) # ((!\video_timing|vcount\(2)) # (!\video_timing|vcount_buf\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000110010001100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount\(4),
	datab => \video_timing|ALT_INV_vcount\(8),
	datac => \video_timing|ALT_INV_vcount\(2),
	datad => \video_timing|ALT_INV_vcount_buf\(0),
	datae => \video_timing|ALT_INV_vcount\(1),
	dataf => \video_timing|ALT_INV_vcount\(5),
	combout => \video_timing|process_0~17_combout\);

-- Location: LABCELL_X58_Y22_N30
\video_timing|process_0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~22_combout\ = ( !\video_timing|Equal0~7_combout\ & ( (\video_timing|process_0~18_combout\ & (((\video_timing|process_0~17_combout\)))) ) ) # ( \video_timing|Equal0~7_combout\ & ( (!\video_timing|Add0~77_sumout\ & 
-- (!\video_timing|Add0~9_sumout\ & ((!\video_timing|Add0~13_sumout\) # ((\video_timing|process_0~18_combout\ & !\video_timing|Add0~17_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101110011000100000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_process_0~18_combout\,
	datab => \video_timing|ALT_INV_Add0~77_sumout\,
	datac => \video_timing|ALT_INV_Add0~17_sumout\,
	datad => \video_timing|ALT_INV_Add0~13_sumout\,
	datae => \video_timing|ALT_INV_Equal0~7_combout\,
	dataf => \video_timing|ALT_INV_Add0~9_sumout\,
	datag => \video_timing|ALT_INV_process_0~17_combout\,
	combout => \video_timing|process_0~22_combout\);

-- Location: LABCELL_X58_Y23_N24
\video_timing|process_0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~15_combout\ = ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (!\video_timing|Equal0~7_combout\ & (((!\video_timing|vcount_buf\(31))))) # (\video_timing|Equal0~7_combout\ & ((!\video_timing|vcount_buf~4_combout\) # 
-- ((!\video_timing|vcount_buf~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110011111000101111001111100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_vcount_buf~4_combout\,
	datab => \video_timing|ALT_INV_Equal0~7_combout\,
	datac => \video_timing|ALT_INV_vcount_buf\(31),
	datad => \video_timing|ALT_INV_vcount_buf~7_combout\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \video_timing|process_0~15_combout\);

-- Location: LABCELL_X58_Y22_N15
\video_timing|process_0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~14_combout\ = ( \video_timing|Add0~5_sumout\ & ( (!\video_timing|vcount\(8) & (!\video_timing|vcount\(6) & !\video_timing|Equal0~7_combout\)) ) ) # ( !\video_timing|Add0~5_sumout\ & ( (!\video_timing|Equal0~7_combout\ & 
-- (((!\video_timing|vcount\(8) & !\video_timing|vcount\(6))))) # (\video_timing|Equal0~7_combout\ & (!\video_timing|Add0~77_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010101010110000001010101011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Add0~77_sumout\,
	datab => \video_timing|ALT_INV_vcount\(8),
	datac => \video_timing|ALT_INV_vcount\(6),
	datad => \video_timing|ALT_INV_Equal0~7_combout\,
	dataf => \video_timing|ALT_INV_Add0~5_sumout\,
	combout => \video_timing|process_0~14_combout\);

-- Location: LABCELL_X58_Y23_N30
\video_timing|process_0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~21_combout\ = ( \video_timing|vcount_buf~12_combout\ & ( (!\video_timing|process_0~13_combout\ & (!\video_timing|process_0~22_combout\ & (\video_timing|process_0~15_combout\ & !\video_timing|process_0~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_process_0~13_combout\,
	datab => \video_timing|ALT_INV_process_0~22_combout\,
	datac => \video_timing|ALT_INV_process_0~15_combout\,
	datad => \video_timing|ALT_INV_process_0~14_combout\,
	dataf => \video_timing|ALT_INV_vcount_buf~12_combout\,
	combout => \video_timing|process_0~21_combout\);

-- Location: LABCELL_X59_Y21_N48
\video_timing|LessThan5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|LessThan5~13_combout\ = ( \video_timing|Add0~53_sumout\ & ( (!\video_timing|Equal0~7_combout\ & !\video_timing|LessThan5~10_combout\) ) ) # ( !\video_timing|Add0~53_sumout\ & ( (!\video_timing|LessThan5~10_combout\ & 
-- ((!\video_timing|Equal0~7_combout\) # ((!\video_timing|Add0~45_sumout\ & !\video_timing|Add0~49_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000111010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_Equal0~7_combout\,
	datab => \video_timing|ALT_INV_Add0~45_sumout\,
	datac => \video_timing|ALT_INV_Add0~49_sumout\,
	datad => \video_timing|ALT_INV_LessThan5~10_combout\,
	dataf => \video_timing|ALT_INV_Add0~53_sumout\,
	combout => \video_timing|LessThan5~13_combout\);

-- Location: LABCELL_X58_Y23_N18
\video_timing|process_0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \video_timing|process_0~16_combout\ = ( \video_timing|LessThan5~6_combout\ & ( \video_timing|LessThan5~13_combout\ & ( (\video_timing|LessThan5~9_combout\ & (!\video_timing|LessThan3~3_combout\ & (!\video_timing|process_0~20_combout\ & 
-- \video_timing|process_0~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \video_timing|ALT_INV_LessThan5~9_combout\,
	datab => \video_timing|ALT_INV_LessThan3~3_combout\,
	datac => \video_timing|ALT_INV_process_0~20_combout\,
	datad => \video_timing|ALT_INV_process_0~21_combout\,
	datae => \video_timing|ALT_INV_LessThan5~6_combout\,
	dataf => \video_timing|ALT_INV_LessThan5~13_combout\,
	combout => \video_timing|process_0~16_combout\);

-- Location: FF_X58_Y23_N19
\video_timing|vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \video_timing|process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_timing|vsync~q\);

-- Location: MLABCELL_X60_Y17_N6
\i2c_module|sda~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|sda~0_combout\ = ( !\i2c_module|state.ST_LOAD_BYTE~q\ & ( !\i2c_module|state.ST_ACK_HIGH~q\ & ( !\i2c_module|state.ST_NEXT_PAIR~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2c_module|ALT_INV_state.ST_NEXT_PAIR~DUPLICATE_q\,
	datae => \i2c_module|ALT_INV_state.ST_LOAD_BYTE~q\,
	dataf => \i2c_module|ALT_INV_state.ST_ACK_HIGH~q\,
	combout => \i2c_module|sda~0_combout\);

-- Location: FF_X61_Y16_N20
\i2c_module|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|tick~q\);

-- Location: LABCELL_X61_Y16_N36
\i2c_module|state~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|state~20_combout\ = ( \i2c_module|state.ST_DONE~q\ & ( \i2c_module|pair_idx\(2) ) ) # ( !\i2c_module|state.ST_DONE~q\ & ( \i2c_module|pair_idx\(2) & ( (\i2c_module|tick~q\ & \i2c_module|state.ST_NEXT_PAIR~q\) ) ) ) # ( 
-- \i2c_module|state.ST_DONE~q\ & ( !\i2c_module|pair_idx\(2) ) ) # ( !\i2c_module|state.ST_DONE~q\ & ( !\i2c_module|pair_idx\(2) & ( (\i2c_module|tick~q\ & (\i2c_module|state.ST_NEXT_PAIR~q\ & ((!\i2c_module|LessThan0~0_combout\) # 
-- (\i2c_module|pair_idx[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000101111111111111111100000101000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_tick~q\,
	datab => \i2c_module|ALT_INV_LessThan0~0_combout\,
	datac => \i2c_module|ALT_INV_state.ST_NEXT_PAIR~q\,
	datad => \i2c_module|ALT_INV_pair_idx[1]~DUPLICATE_q\,
	datae => \i2c_module|ALT_INV_state.ST_DONE~q\,
	dataf => \i2c_module|ALT_INV_pair_idx\(2),
	combout => \i2c_module|state~20_combout\);

-- Location: FF_X61_Y16_N38
\i2c_module|state.ST_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~20_combout\,
	sclr => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_DONE~q\);

-- Location: FF_X61_Y16_N35
\i2c_module|state.ST_BIT_HIGH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|state~21_combout\,
	ena => \i2c_module|scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|state.ST_BIT_HIGH~q\);

-- Location: LABCELL_X61_Y16_N9
\i2c_module|scl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|scl~2_combout\ = ( !\i2c_module|state.ST_STOP1~q\ & ( \pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0) & ( (!\i2c_module|state.ST_DONE~q\ & (!\i2c_module|state.ST_ACK_LOW~q\ & (\i2c_module|state.ST_IDLE~q\ & 
-- !\i2c_module|state.ST_BIT_HIGH~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_state.ST_DONE~q\,
	datab => \i2c_module|ALT_INV_state.ST_ACK_LOW~q\,
	datac => \i2c_module|ALT_INV_state.ST_IDLE~q\,
	datad => \i2c_module|ALT_INV_state.ST_BIT_HIGH~q\,
	datae => \i2c_module|ALT_INV_state.ST_STOP1~q\,
	dataf => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	combout => \i2c_module|scl~2_combout\);

-- Location: LABCELL_X61_Y16_N30
\i2c_module|scl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|scl~1_combout\ = ( !\i2c_module|state.ST_STOP2~q\ & ( (!\i2c_module|state.ST_BIT_LOW~DUPLICATE_q\ & (!\i2c_module|state.ST_START1~q\ & ((!\pll_clock|pll_74mhz_inst|altera_pll_i|locked_wire\(0)) # (\i2c_module|tick~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000100011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pll_clock|pll_74mhz_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datab => \i2c_module|ALT_INV_state.ST_BIT_LOW~DUPLICATE_q\,
	datac => \i2c_module|ALT_INV_tick~DUPLICATE_q\,
	datad => \i2c_module|ALT_INV_state.ST_START1~q\,
	dataf => \i2c_module|ALT_INV_state.ST_STOP2~q\,
	combout => \i2c_module|scl~1_combout\);

-- Location: LABCELL_X61_Y16_N42
\i2c_module|scl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_module|scl~3_combout\ = ( \i2c_module|scl~1_combout\ & ( (!\i2c_module|sda~0_combout\ & (((!\i2c_module|scl~2_combout\ & \i2c_module|scl~0_combout\)) # (\i2c_module|scl~q\))) # (\i2c_module|sda~0_combout\ & (!\i2c_module|scl~2_combout\ & 
-- (\i2c_module|scl~0_combout\))) ) ) # ( !\i2c_module|scl~1_combout\ & ( ((!\i2c_module|scl~2_combout\ & \i2c_module|scl~0_combout\)) # (\i2c_module|scl~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100001100101011100000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_module|ALT_INV_sda~0_combout\,
	datab => \i2c_module|ALT_INV_scl~2_combout\,
	datac => \i2c_module|ALT_INV_scl~0_combout\,
	datad => \i2c_module|ALT_INV_scl~q\,
	dataf => \i2c_module|ALT_INV_scl~1_combout\,
	combout => \i2c_module|scl~3_combout\);

-- Location: FF_X61_Y16_N43
\i2c_module|scl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|pll_74mhz_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_module|scl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_module|scl~q\);

-- Location: IOIBUF_X68_Y12_N55
\cpu_reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu_reset_n,
	o => \cpu_reset_n~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\key[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\key[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\key[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\key[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\sw[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: IOIBUF_X38_Y61_N18
\i2c_sda~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2c_sda,
	o => \i2c_sda~input_o\);

-- Location: LABCELL_X67_Y48_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


