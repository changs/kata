require 'minitest/autorun'
require './calc'

describe Calc do
  before { @calc = Calc.new }
  it 'can add to itself' do
    @calc.one.plus.two.must_equal 3
  end
  it 'can substract from itself' do
    @calc.five.minus.six.must_equal -1
  end
  it 'can multiplay' do
    @calc.seven.times.two.must_equal 14
  end
  it 'can be divided' do
    @calc.nine.divided_by.three.must_equal 3
  end
end
