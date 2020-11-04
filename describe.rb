require './example'
require 'colorize'

class Describe
  def initialize(description)
    @description = description
  end

  def it(description, &block)
    result = Example.new(description).instance_eval(&block)
    result ? print('.'.colorize(:green)) : print('F'.colorize(:red))
  end
end
