class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end
end

class CoolStuff
  def self.this_is_a_class_method
  end
end

jimbo = GoodDog.new('Jimbo', '50cm', '15kg')
puts jimbo.info
p jimbo

jimbo.change_info('Leonard', '40cm', '12kg')
puts jimbo.info
puts jimbo.what_is_self

# 'self' is more or less 'this' in JS

# 1. self, inside of an instance method, references the instance (object) that called the method - the calling object. Therefore, self.weight= is the same as sparky.weight=, in our example.

# 2. self, outside of an instance method, references the class and can be used to define class methods. Therefore if we were to define a name class method, def self.name=(n) is the same as def GoodDog.name=(n).