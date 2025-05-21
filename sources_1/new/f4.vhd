----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2025 08:15:08 PM
-- Design Name: 
-- Module Name: f - structural
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

entity f is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end f;

architecture structural of f is
signal s1,c1,c2 : std_logic;
begin
ha1 : entity work.halfadden port map (x => x, y => y, sum => s1, cout => c1);
ha2 : entity work.halfadden port map (x => s1, y => cin, sum => sum, cout => c2);
o1 : entity work.oren port map (x => c2, y => c1, z => cout  );
end structural;
