library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Saturador is
    Port(
        BUS_R_in: in std_logic_vector(3 downto 0);
        BUS_R_out: out std_logic_vector(3 downto 0);
        Ovf: in std_logic;
        Ctrl: in std_logic
    );
end Saturador;

architecture Behavioral of Saturador is
begin
    process(Ctrl, Ovf, BUS_R_in)
    begin
        if (Ctrl = '1' and Ovf = '1') then

            if(BUS_R_in(3) = '1') then
                BUS_R_out <= "1111";
            else
                BUS_R_out <= "0000"; 
            end if;
            
        else
            BUS_R_out <= BUS_R_in;     
        end if;
    end process;
end Behavioral;
