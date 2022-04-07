LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY project_reti_logiche IS
    PORT (
        i_clk : IN STD_LOGIC;
        i_rst : IN STD_LOGIC;
        i_start : IN STD_LOGIC;
        i_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        o_address : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        o_done : OUT STD_LOGIC;
        o_en : OUT STD_LOGIC;
        o_we : OUT STD_LOGIC;
        o_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );

END project_reti_logiche;
ARCHITECTURE arch OF project_reti_logiche IS
    TYPE fsm_state IS (
        IDLING,
        READ_NUMBER_BYTE,
        READ_BYTE,
        READ_S3,
        READ_S1,
        READ_S2,
        READ_S0,
        RESET,
        DONE
    );
    SIGNAL cur_state: fsm_state;
    SIGNAL counter : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL num_bytes : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL temp_byte_to_read : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL temp_byte_to_write : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL counter_bit_write : INTEGER RANGE 0 TO 8 := 0;
    SIGNAL counter_bit_read : INTEGER RANGE 0 TO 8 := 0;
BEGIN
    PROCESS (i_clk, i_rst)
    BEGIN
        IF i_clk'event AND i_clk = '0' THEN
            IF (i_rst = '1') THEN
                cur_state <= RESET;
            ELSE

                CASE cur_state IS

                    WHEN RESET =>
                        o_en <= '0';
                        o_we <= '0';
                        o_data <= "00000000";
                        o_done <= '0';
                        o_address <= "0000000000000000";
                        counter <= "0000000000000000";
                        counter_bit_read <= 0;
                        counter_bit_write <= 0;
                        num_bytes <= "00000000";
                        cur_state <= IDLING;

                    WHEN IDLING =>
                        IF i_start = '1' THEN
                            o_en <= '1';
                            cur_state <= READ_NUMBER_BYTE;
                        END IF;

                    WHEN READ_NUMBER_BYTE =>
                        o_we <= '0';
                        o_en <= '1';
                        num_bytes <= i_data;
                        cur_state <= READ_BYTE;
                        
                    WHEN READ_BYTE =>
                        o_we <= '0';       
                        counter_bit_read <= 0;
                        o_address <= '0' & counter(15 DOWNTO 1);      --leggo la cella successiva
                        temp_byte_to_read <= i_data;
                        cur_state <= READ_S0;
                        
                    WHEN READ_S0 =>
                            IF (counter_bit_write = 8) THEN
                                counter_bit_write <= 0;
                                o_address <= "0000001111101000" + counter;
                                o_we <= '1';
                                o_en <= '1';
                                o_data <= temp_byte_to_write;
                                counter <= counter + 1;
                                temp_byte_to_write <= "00000000";
                                IF (counter_bit_read = 8) THEN
                                    cur_state <= READ_BYTE;
                                ELSE IF (counter = num_bytes(6 DOWNTO 0) & '0') THEN 
                                    cur_state <= DONE;
                                ELSE
                                    cur_state <= READ_S0;     --se ho letto 4 bit rimango in S0
                                END IF;            
                                END IF;                    
                            ELSE
                                IF (temp_byte_to_read(counter_bit_read) = '0') THEN
                                    temp_byte_to_write(counter_bit_write) <= '0';
                                    counter_bit_write <= counter_bit_write + 1;
                                    temp_byte_to_write(counter_bit_write) <= '0';
                                    counter_bit_write <= counter_bit_write + 1;
                                    counter_bit_read <= counter_bit_read + 1;
                                    cur_state <= READ_S0;
                                ELSE 
                                    temp_byte_to_write(counter_bit_write) <= '1';
                                    counter_bit_write <= counter_bit_write + 1;
                                    temp_byte_to_write(counter_bit_write) <= '1';
                                    counter_bit_write <= counter_bit_write + 1;
                                    counter_bit_read <= counter_bit_read + 1;
                                    cur_state <= READ_S2;
                               
                                END IF;
                            END IF;
    
                        WHEN READ_S1 =>
                            IF (counter_bit_write = 8) THEN
                                counter_bit_write <= 0;
                                o_address <= "0000001111101000" + counter;
                                o_we <= '1';
                                o_en <= '1';
                                o_data <= temp_byte_to_write;
                                counter <= counter + 1;
                                temp_byte_to_write <= "00000000";
                                IF (counter_bit_read = 8) THEN
                                    cur_state <= READ_BYTE;
                                ELSE IF (counter > num_bytes(6 DOWNTO 0) & '0') THEN 
                                    cur_state <= DONE; 
                                ELSE 
                                    cur_state <= READ_S1;
                                END IF;           
                                END IF;                                
                            ELSE
                                IF (temp_byte_to_read(counter_bit_read) = '0') THEN
                                    temp_byte_to_write(counter_bit_write) <= '1';
                                    counter_bit_write <= counter_bit_write + 1;
                                    temp_byte_to_write(counter_bit_write) <= '1';
                                    counter_bit_write <= counter_bit_write + 1;
                                    counter_bit_read <= counter_bit_read + 1;
                                    cur_state <= READ_S0;
                                ELSE
                                    temp_byte_to_write(counter_bit_write) <= '0';
                                    counter_bit_write <= counter_bit_write + 1;
                                    temp_byte_to_write(counter_bit_write) <= '0';
                                    counter_bit_write <= counter_bit_write + 1;
                                    counter_bit_read <= counter_bit_read + 1;
                                    cur_state <= READ_S2;
                                    
                                END IF;
                            END IF;
    
                        WHEN READ_S2 =>
                            IF (counter_bit_write = 8) THEN
                                counter_bit_write <= 0;
                                o_address <= "0000001111101000" + counter;
                                o_we <= '1';
                                o_en <= '1';
                                o_data <= temp_byte_to_write;
                                counter <= counter + 1;
                                temp_byte_to_write <= "00000000";
                                IF (counter_bit_read = 8) THEN
                                    cur_state <= READ_BYTE;
                                ELSE IF (counter > num_bytes(6 DOWNTO 0) & '0') THEN 
                                    cur_state <= DONE;
                                ELSE
                                    cur_state <= READ_S2;
                                END IF;           
                                END IF;                                
                            ELSE
                                IF (temp_byte_to_read(counter_bit_read) = '0') THEN
                                    temp_byte_to_write(counter_bit_write) <= '0';
                                    counter_bit_write <= counter_bit_write + 1;
                                    temp_byte_to_write(counter_bit_write) <= '1';
                                    counter_bit_write <= counter_bit_write + 1;
                                    counter_bit_read <= counter_bit_read + 1;
                                    cur_state <= READ_S1;
                                ELSE 
                                    temp_byte_to_write(counter_bit_write) <= '1';
                                    counter_bit_write <= counter_bit_write + 1;
                                    temp_byte_to_write(counter_bit_write) <= '0';
                                    counter_bit_write <= counter_bit_write + 1;
                                    counter_bit_read <= counter_bit_read + 1;
                                    cur_state <= READ_S3;
                                    
                                END IF;
                            END IF;
    
                        WHEN READ_S3 =>
                            IF (counter_bit_write = 8) THEN
                                counter_bit_write <= 0;
                                o_address <= "0000001111101000" + counter;
                                o_we <= '1';
                                o_en <= '1';
                                o_data <= temp_byte_to_write;
                                counter <= counter + 1;
                                temp_byte_to_write <= "00000000";
                                IF (counter_bit_read = 8) THEN
                                    cur_state <= READ_BYTE;
                                ELSE IF (counter > num_bytes(6 DOWNTO 0) & '0') THEN 
                                    cur_state <= DONE;
                                ELSE
                                    cur_state <= READ_S3;
                                END IF;           
                                END IF;                                
                            ELSE
                                IF (temp_byte_to_read(counter_bit_read) = '0') THEN
                                    temp_byte_to_write(counter_bit_write) <= '1';
                                    counter_bit_write <= counter_bit_write + 1;
                                    temp_byte_to_write(counter_bit_write) <= '0';
                                    counter_bit_write <= counter_bit_write + 1;
                                    counter_bit_read <= counter_bit_read + 1;
                                    cur_state <= READ_S1;
                                ELSE 
                                    temp_byte_to_write(counter_bit_write) <= '0';
                                    counter_bit_write <= counter_bit_write + 1;
                                    temp_byte_to_write(counter_bit_write) <= '1';
                                    counter_bit_write <= counter_bit_write + 1;
                                    counter_bit_read <= counter_bit_read + 1;
                                    cur_state <= READ_S3;
                                    
                                END IF;
                            END IF;


                    WHEN DONE =>
                        o_done <= '1';
                        cur_state <= RESET;

                    WHEN OTHERS =>
                        counter <= "0000000000000001";

                END CASE;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE;