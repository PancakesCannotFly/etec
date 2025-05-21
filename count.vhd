----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2025 07:54:25 PM
-- Design Name: 
-- Module Name: count - Behavioral
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
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count is
    Port ( res : in STD_LOGIC;
           clk : in STD_LOGIC;
           counter : out std_logic_vector(3 downto 0));
end count;

architecture Behavioral of count is
signal counter_up: std_logic_vector(3 downto 0);
begin
process(clk)
begin
if (rising_edge(clk))then
    if (res = '1') then
    counter_up <= "0";
    else
    counter_up <= counter_up + "1";
    end if;
end if;
end process;
counter <=  counter_up;

end Behavioral;
