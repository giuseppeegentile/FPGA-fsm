library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity project_reti_logiche is
    Port (
        i_clk : in STD_LOGIC;
	    i_rst : in std_logic;
        i_start : in std_logic;
        i_data : in std_logic_vector(7 downto 0);
        o_address : out std_logic_vector(15 downto 0);
        o_done : out std_logic;
        o_en : out std_logic;
        o_we : out std_logic;
        o_data : out std_logic_vector(7 downto 0)
        );
        
end project_reti_logiche;


architecture arch of project_reti_logiche is
type fsm_state is (
        IDLING,
        READ_NUMBER_BYTE,
        READ_BYTE,
        READ_S3,
        READ_S1,
        READ_S2,
        READ_S0,
        RESET,
        SAVE_BYTE,
        DONE
    );
    signal cur_state, next_state: fsm_state;
    signal counter : std_logic_vector(15 downto 0);
    signal num_bytes :  std_logic_vector(7 downto 0);
    --signal current_address : std_logic_vector(7 downto 0); --indirizzo lettura da memoria
    signal temp_byte_to_read : std_logic_vector(7 downto 0);
    signal temp_byte_to_write : std_logic_vector(7 downto 0);
    signal counter_bit : integer  range 0 to 8 := 8;

begin
    process(i_clk, i_rst)
    begin
        if  i_clk'event and i_clk='0' then 
            if(i_rst = '1') then
                cur_state <= RESET;
        else 
    
            case cur_state is
            
                when RESET =>
                    o_en <= '0';
                    o_we <= '0';
                    o_data <= "00000000";
                    o_done <= '0';
                    cur_state <= RESET;
                    --current_address <= "00000000";
                    o_address <= "0000000000000000";           
                    counter <= "0000000000000000";
                    cur_state <= IDLING;        
                
                when IDLING =>   
                    IF i_start = '1' THEN
                        o_en <= '1';
                        cur_state <= READ_NUMBER_BYTE;
                    END IF;       
                
                when READ_NUMBER_BYTE =>
                    num_bytes <= i_data;
                    o_address <= "0000000000000001"; --serve davvero?
                    if counter < num_bytes then
                        cur_state <= READ_BYTE;
                    else
                        counter <= counter + "1";
                        cur_state <= DONE;
                    end if;
                    
                when SAVE_BYTE =>
                    o_we <= '1';
                    o_address <=  "0000001111101000" + counter;
                    o_data <= temp_byte_to_write;
                    cur_state <= READ_BYTE;
                    --current_address <= current_address + "1";
                    o_we <= '0'; --deve poter continuare a leggere da memoria dopo aver scritto
                    if (counter = num_bytes) then --se ho finito di leggere 
                        o_done <= '1';
                    end if;
                    
                     
               when READ_BYTE =>
                   o_address <= counter;
                   counter <= counter + "1";
                   temp_byte_to_read <= i_data;
                   cur_state <= READ_S0;
                   counter_bit <= 0;
               
              when READ_S0 =>
                  if (counter_bit = 8) then  --cambiato da 7 a 8
                      cur_state <= SAVE_BYTE;
                  else
                      if (temp_byte_to_read(counter_bit) = '0') then
                           temp_byte_to_write(counter_bit) <= '0';
                           counter_bit <= counter_bit + 1; 
                           temp_byte_to_write(counter_bit) <= '0';
                           counter_bit <= counter_bit + 1; 
                           cur_state <= READ_S0;
                       else 
                           temp_byte_to_write(counter_bit) <= '1';
                           counter_bit <= counter_bit + 1; 
                           temp_byte_to_write(counter_bit) <= '1';
                           counter_bit <= counter_bit + 1; 
                           cur_state <= READ_S2;
                       end if;
                   end if;
    
               when READ_S1 =>
                   if (counter_bit = 8) then
                       cur_state <= SAVE_BYTE;
                   else
                       if (temp_byte_to_read(counter_bit) = '0') then
                           temp_byte_to_write(counter_bit) <= '1';
                           counter_bit <= counter_bit + 1; 
                           temp_byte_to_write(counter_bit) <= '1';
                           counter_bit <= counter_bit + 1; 
                           cur_state <= READ_S0;
                       else 
                           temp_byte_to_write(counter_bit) <= '0';
                           counter_bit <= counter_bit + 1; 
                           temp_byte_to_write(counter_bit) <= '0';
                           counter_bit <= counter_bit + 1; 
                           cur_state <= READ_S2;
                        end if;
                    end if;
    
    
               when READ_S2 =>
                   if (counter_bit = 8) then
                       cur_state <= SAVE_BYTE;
                   else
                       if (temp_byte_to_read(counter_bit) = '0') then
                           temp_byte_to_write(counter_bit) <= '1';
                           counter_bit <= counter_bit + 1; 
                           temp_byte_to_write(counter_bit) <= '0';
                           counter_bit <= counter_bit + 1; 
                           cur_state <= READ_S1;
                       else 
                           temp_byte_to_write(counter_bit) <= '0';
                           counter_bit <= counter_bit + 1; 
                           temp_byte_to_write(counter_bit) <= '1';
                           counter_bit <= counter_bit + 1; 
                           cur_state <= READ_S3;
                        end if;
                    end if;
                    
                    
               when READ_S3 =>
                    if (counter_bit = 8) then
                        cur_state <= SAVE_BYTE;
                    else
                        if (temp_byte_to_read(counter_bit) = '0') then
                            temp_byte_to_write(counter_bit) <= '0';
                            counter_bit <= counter_bit + 1; 
                            temp_byte_to_write(counter_bit) <= '1';
                            counter_bit <= counter_bit + 1; 
                            cur_state <= READ_S1;
                        else 
                            temp_byte_to_write(counter_bit) <= '1';
                            counter_bit <= counter_bit + 1; 
                            temp_byte_to_write(counter_bit) <= '0';
                            counter_bit <= counter_bit + 1; 
                            cur_state <= READ_S3;
                         end if;
                     end if;
                     
                when DONE =>
                    o_done<= '1';
                    if (i_start = '1') then
                        cur_state <= DONE;
                    else
                        cur_state <= READ_NUMBER_BYTE;
                    end if;
                    
                when others =>                     
                    counter <= "0000000000000001";    --aggiunto caso when  others 
               
                end case;
            end if;
        end if;
    end process;
end architecture;
            
                