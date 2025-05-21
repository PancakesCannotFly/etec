----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2025 07:18:45 PM
-- Design Name: 
-- Module Name: andpotato - Behavioral
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

entity andpotato is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           f : out STD_LOGIC);
end andpotato;

architecture Behavioral of andpotato is
begin
process (x,y)
begin
if ((x = '1') and (y = '1')) then
f <= '1' ;
else
f<= '0';
end if;
end process;
end Behavioral;

architecture Behavioral1 of andpotato is
begin
f <= x and y;
end Behavioral1;

