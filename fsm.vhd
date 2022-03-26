entity fsm is
    port(clock, reset, e: in bit;
        u: out bit_vector(1 downto 0));
end entity;

architecture arch of fsm is
type S is (S0,S1,S2,S3);
signal cur_state, next_state: S;
begin
    process(clock, reset)
    begin
        if(reset = '1') then
            cur_state <= A;
        elsif clock'event and clock='1' then
            cur_state <= next_state;
        end if;
    end process;

    process(cur_state, e)
    begin
        case cur_state is
            when S0 =>
                if(e = '0')
                then
                    next_state <= S0;
                    u <= '00';
                else
                    next_state <= S1;
                    u <= '11';
                end if;
            when S1 =>
                if(e = '0')
                then
                    next_state <= S3;
                    u <= '10';
                else
                    next_state <= S2;
                    u <= '01';
                end if;
            when S2 =>
                if(e = '0')
                then
                    next_state <= S3;
                    u <= '01';
                else
                    next_state <= S2;
                    u <= '10';
                end if;
            when S3 =>
                if(e = '0')
                then
                    next_state <= S0;
                    u <= '11';
                else
                    next_state <= S1;
                    u <= '00';
                end if;
        end case;
    end process;
end architecture;
            
                