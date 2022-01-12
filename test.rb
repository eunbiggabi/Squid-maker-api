class User
  def initialize(name, age)
    @name = name
    @age = age
  end

  attr_accessor :name, :age

  def over_13?
    age > 13
  end
end