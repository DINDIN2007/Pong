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
		hdmi_tx_clk:   out STD_LOGIC;								-- pixel clock
		
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

component i2c_config is 
	port (
		clk:		in STD_LOGIC;		-- 74.25 mhz pixel clock
		reset: 	in STD_LOGIC;		-- active-high reset
		scl:		out STD_LOGIC;		-- i2c clock line (push-pull, but board has pull-ups)
		sda:		inout STD_LOGIC	-- i2c data line (open-drain style)
	);
end component;

component renderer is
	port (
		hcount:	in INTEGER;						-- current horizontal position on the screen
		vcount:	in INTEGER;						-- current vertical position on the screen
		de: 		in STD_LOGIC;
		
		pl_y: 	in INTEGER;						-- the left player's current y pos
		pr_y: 	in INTEGER;						-- the right player's current y pos
		ball_x: 	in INTEGER;						-- the ball's current x position
		ball_y: 	in INTEGER;						-- the ball's current y position
		score_l: in NATURAL;						-- the left player's score
		score_r: in NATURAL;						-- the right player's score
		
		rgb: out STD_LOGIC_VECTOR(23 downto 0)	-- the color of the current pixel
	);
end component;

component game_logic is
	port(
		clk:				in STD_LOGIC;
		game_clk: 		in STD_LOGIC;	-- game clock to time game updates to each frame
		reset: 			in STD_LOGIC;	-- game reset signal
		pl_up, pl_dn: 	in STD_LOGIC;	-- whether left paddle should move up/down
		pr_up, pr_dn: 	in STD_LOGIC;	-- whether right paddle should move up/down
		pl_y: 			out INTEGER;	-- left player y position
		pr_y: 			out INTEGER;	-- right player y position
		ball_x: 			out INTEGER;	-- ball x position
		ball_y: 			out INTEGER;	-- ball y position
		score_l: 		out NATURAL;	-- score of left player
		score_r: 		out NATURAL		-- score of right player
	);
end component;

-- Signal declarations for internal connections and component outputs
signal clk_pixel : STD_LOGIC;
signal pll_locked : STD_LOGIC;
signal reset : STD_LOGIC; -- Used for PLL reset
	
-- Signals to connect to the video_timing component
signal hcount : INTEGER;
signal vcount : INTEGER;
signal hsync : STD_LOGIC;
signal vsync : STD_LOGIC;
signal de : STD_LOGIC;
signal frame_start : STD_LOGIC;

-- Signals for renderer
signal rgb : STD_LOGIC_VECTOR(23 downto 0);

-- Game Logic
signal pl_y: 		INTEGER;
signal pr_y:		INTEGER;
signal ball_x: 	INTEGER;	-- ball x position
signal ball_y: 	INTEGER;	-- ball y position
signal score_l: 	NATURAL;	-- score of left player
signal score_r: 	NATURAL;	-- score of right player

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
	
	i2c_module : i2c_config
		port map (
			clk => clk_pixel,
			reset => not pll_locked,
			scl => i2c_scl,
			sda => i2c_sda
		);
	
	game_logic_inst : game_logic
		port map (
			clk => clk_pixel,
			game_clk => frame_start,
			reset => (not pll_locked) or reset,
			pl_up => not key(3),
			pl_dn => not key(2),
			pr_up => not key(1),
			pr_dn => not key(0),
			
			pl_y => pl_y,
			pr_y => pr_y,						-- the right player's current y pos
			ball_x => ball_x,						-- the ball's current x position
			ball_y => ball_y,						-- the ball's current y position
			score_l => score_l,						-- the left player's score
			score_r => score_r						-- the right player's score
			
		);
	
	renderer_inst : renderer
        port map (
            hcount => hcount,
            vcount => vcount,
            de     => de,
            rgb    => rgb,
				
				pl_y => pl_y,
				pr_y => pr_y,						-- the right player's current y pos
				ball_x => ball_x,					-- the ball's current x position
				ball_y => ball_y,						-- the ball's current y position
				score_l => score_l,						-- the left player's score
				score_r => score_r						-- the right player's score
        );
	
	hdmi_tx_de <= de;
	hdmi_tx_hs <= hsync;
	hdmi_tx_vs <= vsync;
	hdmi_tx_clk <= clk_pixel;
	
	hdmi_tx_d <= rgb;
	
	reset <= not cpu_reset_n;
end structural;