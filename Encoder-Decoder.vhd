-- תרגיל 1
-- כתבו קוד למקודד 4 ל-2(encoder)
-- pin planner: D0-> U13, D1-> V13, D2-> T13, D3-> T12, Y0-> AA2, Y1-> AA1.
library IEEE;
use IEEE.std_logic_1164.all;
entity tar1 is
    port(
        D0 : in std_logic;
        D1 : in std_logic;
        D2 : in std_logic;
        D3 : in std_logic;
        Y0 : out std_logic;
        Y1 : out std_logic);
end tar1;
architecture behave of tar1 is
begin
    Y1 <= D2 or D3;
    Y0 <= D1 or D3;
end behave;
    
-- תרגיל 2
-- כתבו תוכנית למפענח 2 ל-4(decoder)
-- pin planner: A0->U13, A1->V13, Y0->AA2, Y1->AA1, Y2->W2, Y3->Y3.
library IEEE;
use IEEE.std_logic_1164.all;
entity tar2 is
    port(
        A1 : in std_logic;
        A0 : in std_logic;
        Y0 : out std_logic;
        Y1 : out std_logic;
        Y2 : out std_logic;
        Y3 : out std_logic);
end tar2;
architecture logic of tar2 is
begin

    Y0 <= (not A1) and (not A0);
    Y1 <= (not A1) and A0;
    Y2 <= A1 and (not A0);
    Y3 <= A1 and A0;
end logic;

-- תרגיל 3
--  כתבו מקודד עדיפות 4 ל-2 לכניסה הנמוכה ביותר(Priority Encoder)
--כלומר לדוגמא אם כניסה די(0) שווה ל-1 וגם די(1) שווה ל-1 אז תינתן עדיפות לדי(0)
-- מקודד רגיל יפעל באופן תקין כאשר יש כניסה אחת בלבד פעילה עם מידע, אך מה קורה כאשר כמה כניסות פעילות עם מידע
-- לצורך כך יש את המקודד עדיפות שהוא הרחבה של מקודד רגיל, באמצעתו ניתן עדיפות לכניסה שנרצה 
-- pin planner: DO->U13, D1->V13, D2->T13, D3->T12, Y0->AA1, Y1->W2.
library IEEE;
use IEEE.std_logic_1164.all;
entity tar3 is
    port(
        D0 : in std_logic;
        D1 : in std_logic;
        D2 : in std_logic;
        D3 : in std_logic;
        Y  : out std_logic_vector(1 downto 0));
end tar3;
architecture behave of tar3 is
begin
	process(D0, D1, D2, D3)
	begin
		 if D0 = '1' then
			  Y <= "00";
		 elsif D1 = '1' then
			  Y <= "01";
		 elsif D2 = '1' then
			  Y <= "10";
		 elsif D3 = '1' then
			  Y <= "11";
		 else
			  Y <= "00";
		 end if;
	end process;
end behave;

-- תרגיל 4
-- כתבו תוכנית למקודד עדיפות 4 ל-2 לכניסה הנמוכה יותר ללא תהליך טורי(Priority Encoder)
-- הפקודה וון מתבצעת מלמעלה למטה ולכן נוצרת עדיפות אוטומטית(when) 
library IEEE;
use IEEE.std_logic_1164.all;
entity tar4 is
    port(
        D0 : in std_logic;
        D1 : in std_logic;
        D2 : in std_logic;
        D3 : in std_logic;
        Y  : out std_logic_vector(1 downto 0));
end tar4;
architecture behave of tar4 is
begin
Y <= "00" when D0 = '1' else
     "01" when (D1 = '1') else
     "10" when (D2 = '1') else
     "11" when (D3 = '1') else
     "00";
end behave;	
