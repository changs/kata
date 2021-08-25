require 'minitest/autorun'
require_relative 'are_they_the_same'

class TestAreTheyTheSame < MiniTest::Test
  def test_valid
    assert_equal(comp([121, 144, 19, 161, 19, 144, 19, 11],
                      [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]),
                 true)
  end
end
