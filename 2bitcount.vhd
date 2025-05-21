----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2025 07:21:02 PM
-- Design Name: 
-- Module Name: jk1 - Behavioral
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

entity jk1 is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : inout STD_LOGIC;
           Qn : inout STD_LOGIC);
end jk1;

architecture Behavioral of jk1 is
begin
process(j,k,clk)
begin
    if ((rising_edge(clk)) and (j = '1') and (k = '1')) then
    Q <= not Q;
    Qn <= not Qn;
    elsif ((rising_edge(clk)) and (j = '0') and (k = '1')) then
    Q <= '0';
    Qn <= '1';
    elsif ((rising_edge(clk)) and (j = '1') and (k = '0')) then
    Q <= '1';
    Qn <= '0';
    elsif ((rising_edge(clk)) and (j = '0') and (k = '0')) then
    Q <= '0';
    Qn <= '1';
    else
    end if;
end process;
end Behavioral;
