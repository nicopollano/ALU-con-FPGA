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
    signal ovfTemp: std_ulogic;
    signal cryTemp: std_ulogic;
begin
    process(Ctrl, BUS_A, BUS_B)
    variable tempSum: unsigned(4 downto 0);
    variable tempRes: signed(4 downto 0);
    begin
        ovfTemp <= '0';
        cryTemp <= '0';
        if(Ctrl = '0') then
            tempSum := ('0' & unsigned(BUS_A)) + ('0' & unsigned(BUS_B));
            cryTemp <= tempSum(4);
            BUS_R <= std_logic_vector(tempSum(3 downto 0));
        else
            tempRes := signed('0' & BUS_A) + signed('0' & BUS_B);
            if ((BUS_A(3) = BUS_B(3)) and (BUS_A(3) /= tempRes(3))) then
                ovfTemp <= '1';
            else
                ovfTemp <= '0';
            end if;
            BUS_R <= std_logic_vector(tempRes(3 downto 0));
        end if;
    end process;
    
    Ovf <= ovfTemp;
    Cry <= cryTemp;
    
end Behavioral;