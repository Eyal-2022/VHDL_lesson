-- תרגיל 1
-- (mux)כתבו תוכנית למרבב 2 ל-1 באמצעות שערים לוגים בלבד
--  pin planner: A->U13 , B->V13 , sel-> U7 , Y-> AA2.
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
--  מפלג 1 ל-2 מקבל כניסה אחת ולפי הבורר מעביר את הכניסה ליציאה הראשונה או השניה
--  pin planner: D->U13, S->U7, Y0->AA2 , Y1->AA1
library IEEE;
use IEEE.std_logic_1164.all;
entity tar2 is
    port(
        D  : in  std_logic;
        S  : in  std_logic;
        Y0 : out std_logic;
        Y1 : out std_logic);
end tar2;
architecture behave of tar2 is
begin

    Y0 <= D and (not S);
    Y1 <= D and S;
end behave;
