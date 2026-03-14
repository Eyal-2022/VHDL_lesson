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
-- כתבו תוכנית לדלגלג סינכרוני עם כניסה, כניסת שעון, כניסת איפוס אסיכרוני שמאפסת את הכניסה לאפס ויציאה
-- האתחול האסיכרוני משמש לאיפוס המערכת עקב שיבושים כלשהם ולכן הוא גם יופיע ברשימת הרגישיות של התהליך טורי כלומר כאשר המשתמש לוחץ עליו 
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
-- תרגיל 3
-- כתבו תוכנית לדלגלג הכולל שעון ואיתחול סינכרוני
--  נסביר את ההבדל בין איתחול אסיכרוני לסינכרוני. כאשר האתחול אסיכרוני הוא תלוי רק בלחיצת כפתור של המשתמש ולכן הוא נכנס לרשימת רגישויות
--  לעומת אתחול סינכרוני שהוא מבצע איפוס גם כאשר המשתמש לוחץ על הכפתור אך רק לאחר עליית שעון ולכן הוא לא ברשימת הרגישויות
library ieee;
use ieee.std_logic_1164.all;
entity tar3 is
    port (
        D   : in  std_logic; 
        clk : in  std_logic; 
		  reset : in std_logic;
        Q   : out std_logic);
end tar3;
architecture behave of tar3 is
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if reset='1' then
				Q<='0';
			else
				Q<=D;
			end if;
		end if;
	end process;
end behave;
-- תרגיל 4
-- כתבו תוכנית לאוגר 4 ביט
-- pin planner Q-> AA2,AA2,W2,Y3.  D-> U13,V13,T13,T12. clk->M9
library ieee;
use ieee.std_logic_1164.all;

entity tar4 is
    port (
        clk : in  std_logic; 
        D   : in  std_logic_vector(3 downto 0); 
        Q   : out std_logic_vector(3 downto 0) 
    );
end tar4;

architecture behave of tar4 is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            Q <= D;
        end if;
    end process;
end behave;			
-- שאלה 5
--  כתבו תוכנית למונה שסופר מ-0 עד 5 כולל עם איתחול אסיכרוני
-- מכיוון שהמונה הוא עד 5 כולל נשתמש ביציאה בוקטור של 3 ביטים

