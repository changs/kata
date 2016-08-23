class Calc
  def initialize(value = nil, operation = nil)
    @value = value
    @operation = operation
  end

  { plus: '+', minus: '-', times: '*', divided_by: '/' }.each do |name, operation|
    define_method(name) do
      Calc.new(@value, operation.to_sym)
    end
  end

  %i(zero one two three four five six seven eight nine).each_with_index do |name, value|
    define_method(name) do
      @operation ? @value.public_send(@operation, value) : Calc.new(value)
    end
  end
end
