require 'minitest/autorun'
require_relative 'help_the_bookseller'

class TestHelpTheBookseller < MiniTest::Test
  def test_valid
    b = ['ABAR 200', 'CDXE 500', 'BKWR 250', 'BTSQ 890', 'DRTY 600']
    c = ['A', 'B']
    res = '(A : 200) - (B : 1140)'
    assert_equal(stockList(b, c), res)
  end
end
