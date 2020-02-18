----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2019 15:17:12
-- Design Name: 
-- Module Name: main - Behavioral
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

entity main is
Port (
    Clock : in STD_LOGIC;
    semaforo : out STD_LOGIC_VECTOR(2 downto 0) := "100"
);
end main;

architecture Behavioral of main is
signal Clock_1s: std_logic:= '0';
signal Clock_Hs: std_logic:= '0';

signal contador: integer := 0;
signal color : std_logic_vector(1 downto 0) := "00";
signal contParpadeo : integer := 0;

begin


New_Clock : Process(Clock)
variable Counter: integer:= 1;
 begin
 if rising_edge(Clock) then
  
    if Counter = 60000000 then
        Clock_1s <= not Clock_1s;
        Counter :=1;
    else
        Counter:= Counter +1;
     end if; 
 
 end if;
 end process New_Clock;
 
 New_Clock2 : Process(Clock)
variable Counter: integer:= 1;
 begin
 if rising_edge(Clock) then
  
    if Counter = 30000000 then
        Clock_Hs <= not Clock_Hs;
        Counter :=1;
    else
        Counter:= Counter +1;
     end if; 
 
 end if;
 end process New_Clock2;
 
 process (Clock_1s)
    begin
        if rising_edge(Clock_1s) then
            contador <= contador + 1;
            if contador = 5 and color = "00" then
                color <= "01";
                contador <= 0;
                semaforo <= "010";
            elsif contador = 3 and color = "01" then
                color <= "10";
                contador <= 0;
                semaforo <= "001";
            elsif contador = 4 and color = "10" then
                color <= "00";
                contador <= 0;
                semaforo <= "100";
            end if;
        end if;
    end process;

end Behavioral;