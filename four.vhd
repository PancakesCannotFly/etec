----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2025 07:51:48 PM
-- Design Name: 
-- Module Name: four - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four is
    Port ( d : inout STD_LOGIC;
           clk : in STD_LOGIC;
           qn : inout STD_LOGIC;
           q0,q1,q2,q3 : inout STD_LOGIC);
end four;

architecture Behavioral of four is
signal a,b,c: std_logic;
begin
process(d,clk,qn)
begin
if (rising_edge(clk)) then
q0 <= d;
qn <= not d;
a<= q0;
else
end if;
end process;
process(d,clk,q0,q1,q2,q3,qn,a,b,c)
begin
if (rising_edge(clk)) then
q1 <= a;
qn <= not d;
a<= q1;
else
end if;
end process;
process(d,clk,q0,q1,q2,q3,qn,a,b,c)
begin
if (rising_edge(clk)) then
q2 <= a;
qn <= not d;
a<= q2;
else
end if;
end process;
process(d,clk,q0,q1,q2,q3,qn,a,b,c)
begin
if (rising_edge(clk)) then
q3 <= a;
qn <= not d;
a<= q3;
d <= qn;
else
end if;
end process;
end Behavioral;
