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

