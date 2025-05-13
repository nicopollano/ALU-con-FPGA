library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SumadorRestador is
  Port (
    BUS_A: in std_logic_vector(3 downto 0);
    BUS_B: in std_logic_vector(3 downto 0);
    BUS_R: out std_logic_vector(3 downto 0);
    Ctrl: in std_logic;
    Ovf: out std_logic;
    Cry: out std_logic
  );
end SumadorRestador;

architecture Behavioral of SumadorRestador is
    signal ovfTemp: std_logic := '0';
    signal cryTemp: std_logic := '0';
begin
    process(Ctrl, BUS_A, BUS_B)
    variable tempOp: signed(4 downto 0);
    begin
        if(Ctrl = '0') then
            tempOp :=  signed('0' & BUS_A) + signed('0' & BUS_B);
            
        else
            tempOp := signed('0' & BUS_A) - signed('0' & BUS_B);
        end if;
        cryTemp <= tempOp(4);
        if ((BUS_A(3) = BUS_B(3)) and (tempOp(4) /= tempOp(3))) then
            ovfTemp <= '1';
        else
            ovfTemp <= '0';
        end if;
        BUS_R <= std_logic_vector(tempOp(3 downto 0));
    end process;
    
    Ovf <= ovfTemp;
    Cry <= cryTemp;
    
end Behavioral;