require './matchers'
require './expectation'

class Example
  include Matchers

  def initialize(description)
    @description = description
  end

  def expect(value)
    Expectation.new(value)
  end
end
