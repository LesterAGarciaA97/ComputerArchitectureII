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
    semaforo : out STD_LOGIC_VECTOR(2 downto 0)
);
end main;

architecture Behavioral of main is

signal Clock_1s: std_logic := '0';
signal act : std_logic := '0';

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
 
 process (Clock_1s)
    begin
        if act = '0' then
            semaforo <= 
        else
        
        end if;
    end process;

end Behavioral;