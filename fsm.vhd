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
        WRITEBIT1_S0,
        WRITEBIT2_S0,
        WRITEBIT3_S0,
        WRITEBIT4_S0,
        WRITEBIT1_S1,
        WRITEBIT2_S1,
        WRITEBIT3_S1,
        WRITEBIT4_S1,
        WRITEBIT1_S2,
        WRITEBIT2_S2,
        WRITEBIT3_S2,
        WRITEBIT4_S2,
        WRITEBIT1_S3,
        WRITEBIT2_S3,
        WRITEBIT3_S3,
        WRITEBIT4_S3,
        MULTIPLY,
        RESET,
        DONE
    );
    SIGNAL cur_state : fsm_state;
    SIGNAL counter_read : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL counter_write : STD_LOGIC_VECTOR(15 DOWNTO 0);
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
                        counter_write <= "0000000000000000";
                        counter_read <= "0000000000000000";
                        counter_bit_read <= 0;
                        counter_bit_write <= 0;
                        cur_state <= IDLING;

                    WHEN IDLING =>
                        IF i_start = '1' THEN
                            o_en <= '1';
                            cur_state <= READ_NUMBER_BYTE;
                        END IF;

                    WHEN READ_NUMBER_BYTE =>
                        o_we <= '0';
                        o_en <= '1';
                        o_address <= counter_read;
                        counter_read <= counter_read+1;
                        num_bytes <= i_data;
                        counter_bit_read <= 0;
                        counter_bit_write <= 0;
                        o_address <= "0000000000000001";
                        cur_state <= MULTIPLY;
                        
                   WHEN MULTIPLY =>
                        num_bytes <= num_bytes(6 DOWNTO 0) & '0';
                        cur_state <= READ_BYTE; 
                        
                    WHEN READ_BYTE =>
                        o_we <= '0';
                        counter_bit_write <= 0;         --dovr� scrivere da capo
                        counter_bit_read <= 0;
                        o_address <= counter_read;      --leggo la cella successiva
                        counter_read <= counter_read+1;

                        temp_byte_to_read <= i_data;
                        cur_state <= READ_S0;
                        
                    WHEN READ_S0 =>
                            IF (counter_bit_write = 8) THEN
                                counter_bit_write <= 0;
                                o_address <= "0000001111101000" + counter_write;
                                o_we <= '1';
                                o_en <= '1';
                                o_data <= temp_byte_to_write;
                                counter_write <= counter_write + 1;
                                temp_byte_to_write <= "00000000";
                                IF (counter_bit_read = 8) THEN
                                    cur_state <= READ_BYTE;
                                END IF;
                                IF (counter_write = num_bytes) THEN --se ho finito di leggere. il counter tiene conto di quanto scrivo, non di quanto leggo, quindi x2
                                    cur_state <= DONE;            
                                END IF;                    
                            ELSE
                                IF (temp_byte_to_read(counter_bit_read) = '0') THEN
                                    cur_state <= WRITEBIT1_S0; 
                                ELSE 
                                    cur_state <= WRITEBIT3_S0;
                                END IF;
                            END IF;

                        WHEN WRITEBIT1_S0 =>
                            temp_byte_to_write(counter_bit_write) <= '0';
                            counter_bit_write <= counter_bit_write + 1;
                            cur_state <= WRITEBIT2_S0;

                        WHEN WRITEBIT2_S0 =>
                            temp_byte_to_write(counter_bit_write) <= '0';
                            counter_bit_write <= counter_bit_write + 1;
                            counter_bit_read <= counter_bit_read + 1;
                            cur_state <= READ_S0;

                        WHEN WRITEBIT3_S0 =>
                            temp_byte_to_write(counter_bit_write) <= '1';
                            counter_bit_write <= counter_bit_write + 1;
                            cur_state <= WRITEBIT4_S0;

                        WHEN WRITEBIT4_S0 =>
                            temp_byte_to_write(counter_bit_write) <= '1';
                            counter_bit_write <= counter_bit_write + 1;
                            counter_bit_read <= counter_bit_read + 1;
                            cur_state <= READ_S2;
    
                        WHEN READ_S1 =>
                            IF (counter_bit_write = 8) THEN
                                counter_bit_write <= 0;
                                o_address <= "0000001111101000" + counter_write;
                                o_we <= '1';
                                o_en <= '1';
                                o_data <= temp_byte_to_write;
                                counter_write <= counter_write + 1;
                                temp_byte_to_write <= "00000000";
                                IF (counter_bit_read = 8) THEN
                                    counter_bit_read <= 0;
                                    cur_state <= READ_BYTE;
                                END IF;
                                IF (counter_write = num_bytes) THEN --se ho finito di leggere. il counter tiene conto di quanto scrivo, non di quanto leggo, quindi x2
                                    cur_state <= DONE;            
                                END IF;                                
                            ELSE
                                IF (temp_byte_to_read(counter_bit_read) = '0') THEN
                                    cur_state <= WRITEBIT1_S1;
                                ELSE
                                    cur_state <= WRITEBIT3_S1;
                                    
                                END IF;
                            END IF;

                        WHEN WRITEBIT1_S1 =>
                            temp_byte_to_write(counter_bit_write) <= '1';
                            counter_bit_write <= counter_bit_write + 1;
                            cur_state <= WRITEBIT2_S1;

                        WHEN WRITEBIT2_S1 =>
                            temp_byte_to_write(counter_bit_write) <= '1';
                            counter_bit_write <= counter_bit_write + 1;
                            counter_bit_read <= counter_bit_read + 1;
                            cur_state <= READ_S0;

                        WHEN WRITEBIT3_S1 =>
                            temp_byte_to_write(counter_bit_write) <= '0';
                            counter_bit_write <= counter_bit_write + 1;
                            cur_state <= WRITEBIT4_S1;

                        WHEN WRITEBIT4_S1 =>
                            temp_byte_to_write(counter_bit_write) <= '0';
                            counter_bit_write <= counter_bit_write + 1;
                            counter_bit_read <= counter_bit_read + 1;
                            cur_state <= READ_S2;
    
                        WHEN READ_S2 =>
                            IF (counter_bit_write = 8) THEN
                                counter_bit_write <= 0;
                                o_address <= "0000001111101000" + counter_write;
                                o_we <= '1';
                                o_en <= '1';
                                o_data <= temp_byte_to_write;
                                counter_write <= counter_write + 1;
                                temp_byte_to_write <= "00000000";
                                IF (counter_bit_read = 8) THEN
                                    counter_bit_read <= 0;
                                    cur_state <= READ_BYTE;
                                END IF;
                                IF (counter_write = num_bytes) THEN --se ho finito di leggere. il counter tiene conto di quanto scrivo, non di quanto leggo, quindi x2
                                    cur_state <= DONE;            
                                END IF;                                
                            ELSE
                                IF (temp_byte_to_read(counter_bit_read) = '0') THEN
                                    cur_state <= WRITEBIT1_S2;
                                ELSE 
                                    cur_state <= WRITEBIT3_S2;
                                    
                                END IF;
                            END IF;

                        WHEN WRITEBIT1_S2 =>
                            temp_byte_to_write(counter_bit_write) <= '0';
                            counter_bit_write <= counter_bit_write + 1;
                            cur_state <= WRITEBIT2_S2;

                        WHEN WRITEBIT2_S2 =>
                            temp_byte_to_write(counter_bit_write) <= '1';
                            counter_bit_write <= counter_bit_write + 1;
                            counter_bit_read <= counter_bit_read + 1;
                            cur_state <= READ_S1;

                        WHEN WRITEBIT3_S2 =>
                            temp_byte_to_write(counter_bit_write) <= '1';
                            counter_bit_write <= counter_bit_write + 1;
                            cur_state <= WRITEBIT4_S2;

                        WHEN WRITEBIT4_S2 =>
                            temp_byte_to_write(counter_bit_write) <= '0';
                            counter_bit_write <= counter_bit_write + 1;
                            counter_bit_read <= counter_bit_read + 1;
                            cur_state <= READ_S3;
    
                        WHEN READ_S3 =>
                            IF (counter_bit_write = 8) THEN
                                counter_bit_write <= 0;
                                o_address <= "0000001111101000" + counter_write;
                                o_we <= '1';
                                o_en <= '1';
                                o_data <= temp_byte_to_write;
                                counter_write <= counter_write + 1;
                                temp_byte_to_write <= "00000000";
                                IF (counter_bit_read = 8) THEN
                                    counter_bit_read <= 0;
                                    cur_state <= READ_BYTE;
                                END IF;
                                IF (counter_write = num_bytes) THEN --se ho finito di leggere. il counter tiene conto di quanto scrivo, non di quanto leggo, quindi x2
                                    cur_state <= DONE;            
                                END IF;                                
                            ELSE
                                IF (temp_byte_to_read(counter_bit_read) = '0') THEN
                                    cur_state <= WRITEBIT1_S3;
                                ELSE 
                                    cur_state <= WRITEBIT3_S3;
                                    
                                END IF;
                            END IF;

                        WHEN WRITEBIT1_S3 =>
                            temp_byte_to_write(counter_bit_write) <= '1';
                            counter_bit_write <= counter_bit_write + 1;
                            cur_state <= WRITEBIT2_S3;

                        WHEN WRITEBIT2_S3 =>
                            temp_byte_to_write(counter_bit_write) <= '0';
                            counter_bit_write <= counter_bit_write + 1;
                            counter_bit_read <= counter_bit_read + 1;
                            cur_state <= READ_S1;

                        WHEN WRITEBIT3_S3 =>
                            temp_byte_to_write(counter_bit_write) <= '0';
                            counter_bit_write <= counter_bit_write + 1;
                            cur_state <= WRITEBIT4_S3;

                        WHEN WRITEBIT4_S3 =>
                            temp_byte_to_write(counter_bit_write) <= '1';
                            counter_bit_write <= counter_bit_write + 1;
                            counter_bit_read <= counter_bit_read + 1;
                            cur_state <= READ_S3;


                    WHEN DONE =>
                        o_done <= '1';
                        cur_state <= RESET;

                    WHEN OTHERS =>
                        counter_write <= "0000000000000001";

                END CASE;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE;