
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ANDBitaBit is
    Port (
        BUS_A: in std_logic_vector(3 downto 0);
        BUS_B: in std_logic_vector(3 downto 0);
        Res: out std_logic_vector(3 downto 0)
      );
end ANDBitaBit;

architecture Behavioral of ANDBitaBit is
    
begin

    process(BUS_A,BUS_B)
    variable R : std_logic_vector(3 downto 0) := (others => '0'); 
    begin
       for i in 0 to 3 loop
        R(i) := BUS_A(i) and BUS_B(i);
       end loop;
       Res <= R; 
    end process;

end Behavioral;
