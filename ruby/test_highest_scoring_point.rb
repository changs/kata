require 'minitest/autorun'
require_relative 'highest_scoring_point'

class TestHighestScoringPoint < MiniTest::Test
  def test_valid
    assert_equal(high('man i need a taxi up to ubud'), 'taxi')
    assert_equal(high('what time are we climbing up the volcano'), 'volcano')
    assert_equal(high('take me to semynak'), 'semynak')
    assert_equal(high('aa b'), 'aa')
    assert_equal(high('b aa'), 'b')
    assert_equal(high('bb d'), 'bb')
    assert_equal(high('d bb'), 'd')
    assert_equal(high('aaa b'), 'aaa')
  end
end
