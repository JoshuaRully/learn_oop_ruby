# class GoodDog
#   def initialize
#     puts "This obj was initialized!"
#   end
# end

# sparky = GoodDog.new

class GoodDog
  # acts similarly to a getter and setter
  attr_accessor :name

  # def get_name
  #   @name
  # end

  # def set_name=(name)
  #   @name = name
  # end

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Jimbo"
puts sparky.name