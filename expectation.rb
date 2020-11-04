class Expectation
  def initialize(value)
    @value = value
  end

  def to(expression)
    expression.call(@value)
  end
end
