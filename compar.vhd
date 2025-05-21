----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2025 07:01:17 PM
-- Design Name: 
-- Module Name: compar - Behavioral
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

entity compar is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           e : out STD_LOGIC;
           g : out STD_LOGIC;
           l : out STD_LOGIC);
end compar;

architecture Behavioral of compar is

begin
process (a,b)
begin 
if (a > b) then
g <= '1' ;
l <= '0';
e <= '0';
elsif (a = b) then
g <= '0' ;
l <= '0';
e <= '1';
else 
g <= '0' ;
l <= '1';
e <= '0';
end if;
end process;

end Behavioral;
