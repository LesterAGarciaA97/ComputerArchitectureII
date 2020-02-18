----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2019 08:05:19
-- Design Name: 
-- Module Name: codigo - Behavioral
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

entity codigo is
Port (
    sensor1 : in STD_LOGIC;
    sensor2 : in STD_LOGIC;
    sensor3 : in STD_LOGIC;
    activador : in STD_LOGIC;
    led1: out STD_LOGIC;
    led2: out STD_LOGIC;
    led3: out STD_LOGIC;
    relay1 : out STD_LOGIC;
    relay2 : out STD_LOGIC;
    relay3 : out STD_LOGIC
);
end codigo;

architecture Behavioral of codigo is
begin
process (sensor1,sensor2,sensor3,activador)
    begin
        if sensor1 = '1' then
            relay1 <= '1';
            led1 <= '1';
        else
            relay1 <= '0';
            led1 <= '0';
        end if;
        
        if sensor2 = '1' and activador = '0' then
            relay2 <= '1';
            led2 <= '1';
        elsif sensor2 = '0' and activador = '1' then
            relay2 <= '0';
            led2 <= '0';
        end if;
        
        if sensor3 = '1' then
            relay3 <= '1';
            led3 <= '1';
        else
            relay3 <= '0';
            led3 <= '0';
        end if;
    end process;
    

end Behavioral;
