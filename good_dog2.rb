# class GoodDog
#   def initialize
#     puts "This obj was initialized!"
#   end
# end

# sparky = GoodDog.new

class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.get_name

fido = GoodDog.new("Fido")
puts fido.speak