-- כתבו תוכנית למרבב 2 לאחד באמצעות שערים לוגים בלבד
library ieee;
use ieee.std_logic_1164.all;

entity tar3 is
    port (
        A   : in  std_logic; 
        B   : in  std_logic; 
		  sel : in std_logic;
        y   : out std_logic);
end tar3;

architecture behave of tar3 is
begin
  	y<= (a and not(sel)) or (b and sel);
end behave;
