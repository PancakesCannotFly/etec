----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2025 07:10:39 PM
-- Design Name: 
-- Module Name: comp4 - Behavioral
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

entity comp4 is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b2 : in STD_LOGIC;
           b3 : in STD_LOGIC;
           e : out STD_LOGIC;
           l : out STD_LOGIC;
           g : out STD_LOGIC);
end comp4;

architecture Behavioral of comp4 is

begin
process(a0,a1,a2,a3,b0,b1,b2,b3)
begin
if ( a0 > b0 ) then
l <= '0';
e <= '0';
g <= '1';
elsif ( a0 < b0) then
l <= '1';
e <= '0';
g <= '0';
else
if ( a1 > b1 ) then
l <= '0';
e <= '0';
g <= '1';
elsif ( a1 < b1) then
l <= '1';
e <= '0';
g <= '0';
else
if ( a2 > b2 ) then
l <= '0';
e <= '0';
g <= '1';
elsif ( a2 < b2) then
l <= '1';
e <= '0';
g <= '0';
else
if ( a3 > b3 ) then
l <= '0';
e <= '0';
g <= '1';
elsif ( a3 < b3) then
l <= '1';
e <= '0';
g <= '0';
else
l <= '0';
e <= '1';
g <= '0';
end if;
end if;
end if;
end if;
end process;
end Behavioral;
