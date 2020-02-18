----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.08.2019 12:15:02
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
GENERIC(
    NBITS  : integer :=  9; -- Cantidad de bits del n?mero binario.
    NSALIDA: integer := 11  -- Cantidad de bits de salida en formato BCD.
);
Port (
    Display : out STD_LOGIC_VECTOR (3 downto 0);
    led : out STD_LOGIC_VECTOR (6 downto 0);
    timer : in STD_LOGIC;
    reset : in STD_LOGIC;
    sensores: in STD_LOGIC_VECTOR(2 downto 0)
);
end codigo;

architecture Behavioral of codigo is
signal contador: STD_LOGIC_VECTOR (27 downto 0);
signal activo: std_logic;
signal numero: STD_LOGIC_VECTOR (15 downto 0);
signal SDDisplay: STD_LOGIC_VECTOR (3 downto 0);
signal rfsh: STD_LOGIC_VECTOR (10 downto 0);
signal act: std_logic_vector(1 downto 0);
signal limitante1: STD_LOGIC;
signal limitante2: STD_LOGIC;
signal limitante3: STD_LOGIC;
signal limitante4: STD_LOGIC;
begin

process(SDDisplay, contador)
    begin
        case SDDisplay is
            when "0000" => led <= "0000001"; -- 0     
            when "0001" => led <= "1001111"; -- 1 
            when "0010" => led <= "0010010"; -- 2 
            when "0011" => led <= "0000110"; -- 3 
            when "0100" => led <= "1001100"; -- 4 
            when "0101" => led <= "0100100"; -- 5 
            when "0110" => led <= "0100000"; -- 6 
            when "0111" => led <= "0001111"; -- 7 
            when "1000" => led <= "0000000"; -- 8     
            when "1001" => led <= "0000100"; -- 9 
            when "1010" => led <= "0001000"; -- A 
            when "1011" => led <= "1100000"; -- B 
            when "1100" => led <= "0110001"; -- C 
            when "1101" => led <= "1000010"; -- D
            when "1110" => led <= "0110000"; -- E 
            when "1111" => led <= "0111000"; -- F 
        end case;
    end process;
    
process(timer,reset)
    begin 
        if(reset='1') then
            rfsh <= (others => '0');
        elsif(rising_edge(timer)) then
            rfsh <= rfsh + 1;
        end if;
    end process;
    
 act <= rfsh(10 downto 9);
 
process(act)
    begin
        case act is
        when "00" =>
            Display <= "0111"; 
            SDDisplay <= numero(15 downto 12);
        when "01" =>
            Display <= "1011"; 
            SDDisplay <= numero(11 downto 8);
        when "10" =>
            Display <= "1101"; 
            SDDisplay <= numero(7 downto 4);
        when "11" =>
            Display <= "1110"; 
            SDDisplay <= numero(3 downto 0);
        end case;
    end process;

process(timer,reset,sensores)
    begin
            if (sensores = "100") then
                limitante1 <= '1';
                limitante2 <= '0';
            elsif (sensores = "001") then
                limitante2 <= '1';
                limitante1 <= '0';
            elsif(reset='1') then
                contador <= (others => '0');
            elsif(rising_edge(timer) and (sensores = "010")) then
                if(contador>=x"5F5E0FF") then
                    contador <= (others => '0');
                else
                     if limitante1 = '1' and limitante2 = '0' then
                        contador <= contador + "0000001";
                        numero <= numero + x"0001";
                        limitante1 <= '0';
                        limitante3 <= '1';
                    elsif limitante1 = '0' and limitante2 = '1' then
                        contador <= contador - "0000001";
                        numero <= numero - x"0001";
                        limitante2 <= '0';
                        limitante4 <= '1';
                    end if;
                end if;
            end if;
    end process;
    
activo <= '1' when contador=x"5F5E0FF" else '0';
    
end Behavioral;