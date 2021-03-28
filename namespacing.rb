module Mammal 
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')
kitty.say_name('kitty')

# preferred way like this
value = Mammal.some_out_of_place_method(4)
# OR! like this, bleh gross
value = Mammal::some_out_of_place_method(4)