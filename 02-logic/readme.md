# Lab 2: Petr Kaplan

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![K-maps](https://github.com/mannyjl625/digital-electronic-1/blob/main/02-logic/kmapa1.png)

   Less than:

   ![K-maps](https://github.com/mannyjl625/digital-electronic-1/blob/main/02-logic/kmapa2.png)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](https://github.com/mannyjl625/digital-electronic-1/blob/main/02-logic/minimalizac.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx??**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0011";       -- ID = xxxx34
        s_a <= "0100";        -- ID = xxxx34
        wait for 100 ns;
        
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination A = 4, B = 3 FAILED" severity error;
        
		--second test case
		s_b <= "0000";
        s_a <= "0000";
        wait for 100 ns;
        
        assert ((s_B_greater_A = '0') and 
        		(s_B_equals_A  = '0') and 
                (s_B_less_A    = '1')) 
        report "Input combination A = 0, B= 0 FAILED" severity error;
        
         -- third test case
        s_b <= "0101";
        s_a <= "1000";
        wait for 100 ns;
        
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination A = 8, B = 5 FAILED" severity error;
        
         -- 4th test case
        s_b <= "1111";
        s_a <= "1111";
        wait for 100 ns;
        
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination A = 15, B = 15 FAILED" severity error;
        
        -- 5th test case
        s_b <= "1111";
        s_a <= "0111";
        wait for 100 ns;
        
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination A = 7, B = 15 FAILED" severity error;
        
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/uJ5L
