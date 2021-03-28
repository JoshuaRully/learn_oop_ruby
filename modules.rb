module Swimmable
  def swim
    "I'm swimming *splish splash sploosh*"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Camel < Mammal
end

class Dog < Mammal
  include Swimmable
end

snowball = Dog.new
dorothy = Fish.new
lumpy = Camel.new

puts snowball.swim
puts dorothy.swim
puts lumpy.swim