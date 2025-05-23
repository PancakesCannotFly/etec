----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2025 07:16:22 PM
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

architecture Behavioral of tb is
component comp4 is
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
end component;

signal a0,a1,a2,a3,b0,b1,b2,b3,l,g,e :std_logic; 
begin
uut: comp4 port map (a0 => a0,a1 =>a1,a2=>a2,a3=>a3,b0=>b0,b1=>b1,b2=>b2,b3=>b3,l=>l,g=>g,e=>e);
a0proc:process
begin
wait for 5ns;
a0 <= '0';
wait for 5ns;
a0 <= '1';
wait for 5ns;
end process;
a1proc:process
begin
wait for 6ns;
a1 <= '0';
wait for 6ns;
a1 <= '1';
wait for 6ns;
end process;
a2proc:process
begin
wait for 7ns;
a2 <= '0';
wait for 7ns;
a2 <= '1';
wait for 7ns;
end process;
a3proc:process
begin
wait for 8ns;
a3 <= '0';
wait for 8ns;
a3 <= '1';
wait for 8ns;
end process;
b0proc:process
begin
wait for 9ns;
b0 <= '0';
wait for 9ns;
b0 <= '1';
wait for 9ns;
end process;
b1proc:process
begin
wait for 11ns;
b1 <= '0';
wait for 11ns;
b1 <= '1';
wait for 11ns;
end process;
b2proc:process
begin
wait for 13ns;
b2 <= '0';
wait for 13ns;
b2 <= '1';
wait for 13ns;
end process;
b3proc:process
begin
wait for 17ns;
b3 <= '0';
wait for 17ns;
b3 <= '1';
wait for 17ns;
end process;


end Behavioral;
