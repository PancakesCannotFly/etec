----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2025 07:05:41 PM
-- Design Name: 
-- Module Name: tb - Behavioral
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

entity tb is
--  Port ( );
end tb;

architecture Behavioral1 of tb is
component compar is
Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           e : out STD_LOGIC;
           g : out STD_LOGIC;
           l : out STD_LOGIC);
end component;
signal a,b,e,g,l: std_logic;
begin
uut: compar Port map( a => a , b => b , e => e , g => g , l => l);

aproc:process
begin
wait for 20ns;
a <= '1';
wait for 20ns;
a <= '0';
wait for 20ns;
end process;
bproc:process
begin
wait for 10ns;
b <= '1';
wait for 10ns;
b <= '0';
wait for 10ns;
end process;
end Behavioral1;
