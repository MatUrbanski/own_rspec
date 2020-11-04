require './describe'

class OwnRSpec
  def self.describe(class_name, &block)
    new(class_name).instance_eval(&block)
  end

  def initialize(class_name)
    @class_name = class_name
  end

  def describe(description, &block)
    Describe.new(description).instance_eval(&block)
  end
end
