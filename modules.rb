module Swimmable
  def swim
    "I'm swimming. *splish splash sploosh*"
  end
end

module Walkable
  def walk
    "I'm walking. *pitter patter*"
  end
end

module Climbable
  def clim
    "I'm climbing. *bulging biceps and lats*"
  end
end

class Animal 
  include Walkable

  def speak
    "I'm an animal, and I speak the truth you don't want to here..."
  end
end

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
# puts lumpy.swim     # causes an error, camels can't swim!

puts "---Animal method lookup---"
puts Animal.ancestors

baby_yoda = Animal.new
puts baby_yoda.speak
puts baby_yoda.walk
# baby_yoda.swim    # walking is for peasents, baby yoda floats bawd ~ error

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors

# when to use inheritance vs modules 

# You can only subclass (class inheritance) from one class. You can mix in as many modules (interface inheritance) as you'd like.
# If there's an "is-a" relationship, class inheritance is usually the correct choice. If there's a "has-a" relationship, interface inheritance is generally a better choice. For example, a dog "is an" animal and it "has an" ability to swim.
# You cannot instantiate modules (i.e., no object can be created from a module). Modules are used only for namespacing and grouping common methods together.