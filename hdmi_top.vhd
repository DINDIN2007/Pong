-- main top module for hdmi pong on the c5g board with adv7513 transmitter
-- key0/key1 = player 1 up/down, key2/key3 = player 2 up/down
-- reset is moved to the cpu_reset_n pushbutton

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hdmi_top is
	port (
		clock_50_b5b: 	in STD_LOGIC;								-- 50 mhz main board clock
		
		cpu_reset_n: 	in STD_LOGIC;								-- pushbutton reset, active-low
		key: 				in STD_LOGIC_VECTOR(3 downto 0);		-- player control pushbuttons, active low
		sw:				in STD_LOGIC_VECTOR(9 downto 0);		-- toggle switches for game-speed control
		
		-- The following signals are directly connected to the ADV7513 transmitter
		hdmi_tx_d: 		out STD_LOGIC_VECTOR(23 downto 0);	-- rgb pixel data
		hdmi_tx_de: 	out STD_LOGIC;								-- data enable
		hdmi_tx_hs: 	out STD_LOGIC;								-- horizontal sync
		hdmi_tx_vs: 	out STD_LOGIC;								-- vertical sync
		hdmi_tx_clk: 	out STD_LOGIC;								-- pixel clock
		
		-- The following signals are used for I2C communication with the ADV7513 transmitter
		i2c_sda: 		inout STD_LOGIC;							-- i2c data
		i2c_scl: 		out STD_LOGIC								-- i2c clock
		
	);
end hdmi_top;

architecture structural of hdmi_top is

component pll_74mhz is
	port (
		refclk : in STD_LOGIC;
		rst : in STD_LOGIC;
		outclk_0 : out STD_LOGIC;
		locked : out STD_LOGIC
	);
end component;

variable hcount : INTEGER;
variable vcount : INTEGER;
variable hsync : STD_LOGIC;
variable vsync : STD_LOGIC;
variable de : STD_LOGIC;
variable frame_start : STD_LOGIC;

begin

	pll_clock: pll_74mhz
		port map (
			refclk => clock_50_b5b,
			rst => reset,
			outclk_0 => clk_pixel,
			locked => pll_locked
	);
	
	video_timing: entity work.video_timing
		port map (
			clk => clk_pixel,
			reset => not pll_locked,
			hcount => hcount,
			vcount => vcount,
			hsync => hsync,
			vsync => vsync,
			de => de,
			frame_start => frame_start
		);
	
	hdmi_tx_de <= de;
	hdmi_tx_hs <= hsync;
	hdmi_tx_vs <= vsync;
	hdmi_tx_clk <= clk_pixel;
	
end structural;