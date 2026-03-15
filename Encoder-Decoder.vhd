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
