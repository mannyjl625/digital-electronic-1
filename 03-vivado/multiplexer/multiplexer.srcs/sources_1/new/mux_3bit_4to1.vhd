library ieee;
  use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 4-bit binary comparator
------------------------------------------------------------

entity mux_3bit_4to1 is
  port (
    d_i           : in    std_logic_vector(2 downto 0); --! Input data D[2:0]
    c_i           : in    std_logic_vector(2 downto 0); --! Input data C[2:0]
    b_i           : in    std_logic_vector(2 downto 0); --! Input data B[2:0]
    a_i           : in    std_logic_vector(2 downto 0); --! Input data A[2:0]
    sel           : in    std_logic_vector(1 downto 0); --! Input data sel[1:0]
    output        : out   std_logic_vector(2 downto 0)                     --! Output
    );
end entity mux_3bit_4to1;

------------------------------------------------------------
-- Architecture body for 4-bit binary comparator
------------------------------------------------------------

architecture behavioral of mux_3bit_4to1 is

begin

with sel select
    output <= a_i when "00",  -- If addr_i = "000" then y_o = a_i
              b_i when "01",
              c_i when "10",
              d_i when others ; -- All other combinations

end architecture behavioral;