# class GoodDog
#   def initialize
#     puts "This obj was initialized!"
#   end
# end

# sparky = GoodDog.new

class GoodDog
  # acts similarly to a getter and setter
  attr_accessor :name, :height, :weight
  
  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  # def get_name
  #   @name
  # end

  # def set_name=(name)
  #   @name = name
  # end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

sparky = GoodDog.new('Sparky', '30cm', '5kg')
puts sparky.info

sparky.change_info('Jimbo', '60cm', '20kg')
puts sparky.info

# sparky = GoodDog.new("Sparky")
# puts sparky.speak
# puts sparky.name
# sparky.name = "Jimbo"
# puts sparky.name