class User
  def initialize(name)
    @name = name
  end

  def first_name
    @name.to_s.split(' ').first
  end
end
