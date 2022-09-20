-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

--Implemente um circuito codificador binário de 2 bits para one-hot
--(https://en.wikipedia.org/wiki/One-hot) de 4 bits e o seu testbench.

entity one2_4hot is
port (i_A  : in std_logic; 
      i_B  : in std_logic;
      o_S  : out std__logic_vector ( 3 downto 0 ));
end one2_4hot;

architecture arch_1 of one2_4hot is 
begin

  o_S(0) <= (not i_A and not i_B);
  o_S(1) <= (not i_A and i_B);
  o_S(2) <= (i_A and not i_B);
  o_s(3) <= (i_A and i_B);
  
  end arch_1;
