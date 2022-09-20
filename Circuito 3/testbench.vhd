-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity tb_one2_4hot is 

end tb_one2_4hot;

achitecture arch_1 of tb_one2_4hot is

component one2_4hot is 
port(i_A  : in std_logic;
	 i_B  : in std_logic;
     o_S  : out bit_vector ( 3 dowto 0 ));
end component;

signal w_A;w_B : std_logic;
signal w_S : std__logic_vector ( 3 downto 0 );

begin

u_DUT: one2_4hot port map (i_A => w_A,
						   i_B => w_B,
                           o_S => w_S,
                           
process
begin
  
  w_A <= '0';
  w_B <= '0';
  wait for 1 ns; 
  assert(w_S(3)='0' and w_S(2)='0' and w_S(1)='0' and w_S(0)='1') report "Fail @ 0001" severity error;
  
  w_A <= '0';
  w_B <= '1';
  wait for 1 ns;
  assert(w_S(3)='0' and w_S(2)='0' and w_S(1)='1' and w_S(0)='0') report "Fail @ 0010" severity error;
  
  w_A <= '1';
  w_B <= '0';
  wait for 1 ns;
  assert(w_S(3)='0' and w_S(2)='1' and w_S(1)='0' and w_S(0)='0') report "Fail @ 0100" severity error;
  
  w_A <= '1';
  w_B <= '1';
  wait for 1 ns;
  
  assert(w_S(3)='1' and w_S(2)='0' and w_S(1)='0' and w_S(0)='0') report "Fail @
1000" severity error;

   w_A <= '0';
   w_B <= '0';
   assert false report "Test done." severity note;
   wait;
  end process;
end arch_1;
  
  
