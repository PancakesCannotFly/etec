----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2025 07:48:33 PM
-- Design Name: 
-- Module Name: fulladderthingy - Behavioral
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

entity fulladderthingy is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           sum : out STD_LOGIC);
end fulladderthingy;

architecture Behavioral of fulladderthingy is
signal s1,s2,s3 :std_logic;

begin
s1 <= (x xor y);
s2 <= (x and y);

sum <= (cin xor s1);
s3 <= (cin and s1);

cout <= (s2 xor s3);
end Behavioral;
