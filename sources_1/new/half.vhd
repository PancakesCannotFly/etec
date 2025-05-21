----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2025 07:25:27 PM
-- Design Name: 
-- Module Name: halfadden - Behavioral
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

entity halfadden is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end halfadden;

architecture Behavioral of halfadden is

begin
sum <= (x xor y);
cout <= (x and y); 

end Behavioral;