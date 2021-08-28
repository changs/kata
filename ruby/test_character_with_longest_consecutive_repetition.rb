require 'minitest/autorun'
require_relative 'character_with_longest_consecutive_repetition'

class TestCharacterWithLongestConsecutiveRepetition < MiniTest::Test
  def test_valid
    assert_equal(longest_repetition("aaaabb"), ['a', 4])
    assert_equal(longest_repetition("bbbaaabaaaa"), ['a', 4])
    assert_equal(longest_repetition("cbdeuuu900"), ['u', 3])
    assert_equal(longest_repetition("abbbbb"), ['b', 5])
    assert_equal(longest_repetition("aabb"), ['a', 2])
    assert_equal(longest_repetition("ba"), ['b', 1])
    assert_equal(longest_repetition(""), ['', 0])
    assert_equal(longest_repetition("aaabbcccddd"), ['a', 3])
  end
end
