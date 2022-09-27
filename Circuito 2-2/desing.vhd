--Projeto 2. A redução do comprimento do canal dos transistores e o aumento da
--frequência de operação fazem com que os componentes de um sistema integrado
--estejam cada vez mais suscetíveis a fontes de ruído internas (fonte de
--alimentação, diafonia, etc.) e externas (interferência eletromagnética, partículas
--alfa, etc.). Essas fontes podem resultar em faltas, sendo que uma falta pode vir a
--produzir um erro. Um exemplo de erro que pode ocorrer é a inversão de um bit
--de um dado em uma linha de comunicação. Modifique o circuito do Projeto 1
--incluindo uma porta XOR para emular a injeção de erros de mudança de bit, a
--qual deve ser acionada por meio de um push-button (BT0), conforme ilustrado no
--diagrama de blocos a seguir.


library IEEE;
use IEEE.std_logic_1164.all;


entity mux_demux_push is
port (i_SEL  :  in std_logic;
      i_SW0  :  in std_logic;
      i_SW1  :  in std_logic;
      i_BUT  :  in std_logic;
      o_LED0 :  out std_logic;
      o_LED1 :  out std_logic);
end mux_demux_push;

architecture arch_1 of mux_demux_push is
begin
	
    	process(i_SEL,i_SW0,i_SW1,i_BUT)
        begin
        o_LED0 <=((((not i_SEL and i_SW0) or (i_SW1 and i_SEL)) xor i_BUT) and not   		i_SEL); 
        o_LED1 <= ((((not i_SEL and i_SW0) or (i_SW1 and i_SEL)) xor i_BUT) and 	        i_SEL);
        
	end process;
end arch_1;

