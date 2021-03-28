class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
  def speak
    super + " from Cat class!"
  end
end

snowball = GoodDog.new("Sparkles")
meowsly = Cat.new
puts snowball.speak
puts meowsly.speak   

# super init below
# class Animal
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# class GoodDog < Animal
#   def initialize(color)
#     super
#     @color = color
#   end
# end

# bruno = GoodDog.new("brown")

# more inheritance shenanigans
# class BadDog < Animal
#   def initialize(age, name)
#     super(name)
#     @age = age
#   end
# end

# BadDog.new(2, "bear")        # => #<BadDog:0x007fb40b2beb68 @age=2, @name="bear">

# make sure so use () after super!
# class Animal
#   def initialize
#   end
# end

# class Bear < Animal
#   def initialize(color)
#     super()
#     @color = color
#   end
# end

# bear = Bear.new("black")        # => #<Bear:0x007fb40b1e6718 @color="black">