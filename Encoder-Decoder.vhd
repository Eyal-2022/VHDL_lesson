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
-- כתבו מקודד עדיפות 4 ל-2(Priority Encoder)
-- מקודד רגיל יפעל באופן תקין כאשר יש כניסה אחת בלבד פעילה עם מידע, אך מה קורה כאשר כמה כניסות פעילות עם מידע?
-- לצורך כך יש את המקודד עדיפות שהוא הרחבה של מקודד רגיל, באמצעתו ניתן עדיפות לכניסה שנרצה 
