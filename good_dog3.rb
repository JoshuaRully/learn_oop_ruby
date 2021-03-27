class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end

  # overrides default .to_s instance method
  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

  # @@number_of_dogs = 0

  # def initialize
  #   @@number_of_dogs += 1
  # end

  # def self.total_number_of_dogs
  #   @@number_of_dogs
  # end

  def self.what_am_i
    "I'm a GoodDog class!"
  end
end

# puts GoodDog.what_am_i

# puts GoodDog.total_number_of_dogs  

# dog1 = GoodDog.new
# dog2 = GoodDog.new

# puts GoodDog.total_number_of_dogs  

sparky = GoodDog.new("Sparky", 4)
puts sparky.age 

puts sparky
puts sparky.inspect 
p sparky