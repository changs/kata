require 'minitest/autorun'
require_relative 'deodorant_evaporator'

class TestEnsureQuestion < MiniTest::Test
  def test_valid
    assert_equal(evaporator(10, 10, 10), 22)
  end
end
