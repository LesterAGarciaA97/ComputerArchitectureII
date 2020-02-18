----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.08.2019 09:13:31
-- Design Name: 
-- Module Name: led - Behavioral
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

entity led is
Port (
    modulador : in STD_LOGIC_VECTOR(2 downto 0);
    led : out STD_LOGIC
);
end led;

architecture Behavioral of led is

begin

process (modulador)
    begin
        case modulador is
        when "011" => led <= '1';
        when "101" => led <= '1';
        when "110" => led <= '1';
        when others => led <= '0';
        end case;
    end process;

end Behavioral;
