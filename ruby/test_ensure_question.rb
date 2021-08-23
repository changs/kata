require 'minitest/autorun'
require_relative 'ensure_question'

class TestEnsureQuestion < MiniTest::Test
  def test_valid
    assert_equal(ensure_question(''), '?', 'Expected: "?"')
    assert_equal(ensure_question('Yes'), 'Yes?', 'Expected: "?"')
    assert_equal(ensure_question('No?'), 'No?', 'Expected: "?"')
  end
end
