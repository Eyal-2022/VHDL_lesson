-- תרגיל 1
-- (mux)כתבו תוכנית למרבב 2 ל-1 באמצעות שערים לוגים בלבד
library ieee;
use ieee.std_logic_1164.all;

entity tar1 is
    port (
        A   : in  std_logic; 
        B   : in  std_logic; 
		  sel : in std_logic;
        y   : out std_logic);
end tar1;

architecture behave of tar1 is
begin
  	y<= (a and not(sel)) or (b and sel);
end behave;
-- תרגיל 2
-- כתבו תוכנית למפלג 1 ל-2(demux)
