----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.08.2019 10:55:00
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity codigo is
Port (
    entradas : in std_logic_vector(3 downto 0);
    reset : in std_logic;
    leds : out std_logic_vector(5 downto 0);
    binarios : out std_logic_vector(15 downto 0);
    reloj : in std_logic
);
end codigo;

architecture Behavioral of codigo is
signal contar : std_logic;
signal contador : std_logic_vector(26 downto 0);
signal numBin : std_logic_vector(15 downto 0);

begin

    process (reset, entradas)
    begin
        if (reset = '1') then
            contador <= "000000000000000000000000000";
            numBin <= numBin + "000000000000001";
            binarios <= numBin;
        else
            case entradas is
                when "0011" => contar <= '1';
                when "0101" => contar <= '1';
                when "0110" => contar <= '1';
                when "1001" => contar <= '1';
                when "1010" => contar <= '1';
                when "1100" => contar <= '1';
                when others => contar <= '0';
            end case;
        end if;
    end process;

end Behavioral;
