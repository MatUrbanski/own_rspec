module Matchers
  def eq(expectation)
    lambda { |value| expectation === value }
  end
end
