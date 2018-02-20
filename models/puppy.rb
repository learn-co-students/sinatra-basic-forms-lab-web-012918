class Puppy

  attr_accessor :name, :breed, :age

  PUPPIES = []

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

  def self.puppies
    PUPPIES
  end

end
