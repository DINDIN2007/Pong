library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rect_display is
	port (
		hcount: in INTEGER;
		vcount: in INTEGER;
		x1: in INTEGER;
		x2: in INTEGER;
		y1: in INTEGER;
		y2: in INTEGER;
		lit: out STD_LOGIC

	);
end rect_display;

architecture procedural of rect_display is
	begin
		lit <= '0' when (hcount < x1) else
				 '0' when (hcount > x2) else
				 '0' when (vcount < y1) else
				 '0' when (vcount > y2) else
				 '1';
end procedural;