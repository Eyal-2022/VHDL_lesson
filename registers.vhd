-- תרגיל 1
-- תכננו דלגלג  סינכרוני עם כניסה, כניסת שעון ויציאה
-- כאשר יש חזית עולה של השעון, הערך של הכניסה ישמר ביציאה.בכל זמן אחר היציאה לא משתנה
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- הגדרת האוריינטציה של האובייקט
entity tar1 is
    Port ( clk: in std_logic;
	        d:   in std_logic;
			  q:   out std_logic);
end tar1;

-- הגדרת האדריכלות של השער
architecture Behave of tar1 is
begin
	process(clk)
	begin
		if rising_edge(clk) then
	      q<=d;
	   end if;
	end process;
end Behave;
-- תרגיל 2
-- כתבו תוכנית לדלגלג סינכרוניעם כניסה, כניסת שעון, כניסת איפוס אסיכרוני שמאפסת את הכניסה לאפס ויציאה
-- Cyclone v 5CEBA4F23C7
--  pin planner: clk->PIN_M9 , reset-> PIN_U13 , D-> PIN_U7 , Q-> PIN_AA2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tar2 is
    Port ( clk: in std_logic;
	        reset: in std_logic;
	        d:   in std_logic;
			  q:   out std_logic);
end tar2;

architecture Behave of tar2 is
begin
	process(clk,reset)
	begin
		if reset='1' 
			then q<='0';
		elsif rising_edge(clk) 
			then q<=d;
	   end if;
	end process;
end Behave;
		   
