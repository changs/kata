require 'minitest/autorun'
require_relative 'fold_an_array'

class TestFoldAnArray < MiniTest::Test
  def test_valid
    input = [1, 2, 3, 4, 5]
    expected = [6, 6, 3]
    assert_equal(fold_array(input, 1), expected)

    expected = [9, 6]
    assert_equal(fold_array(input, 2), expected)

    expected = [15]
    assert_equal(fold_array(input, 3), expected)

    input = [-9, 9, -8, 8, 66, 23]
    expected = [14, 75, 0]
    assert_equal(fold_array(input, 1), expected)
  end
end
