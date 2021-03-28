module Towing
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :colour
  attr_reader :model, :year
  @@num_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@num_of_vehicles} vehicles"
  end

  def initialize(year, model, colour)
    @year = year
    @model = model
    @colour = colour
    @current_speed = 0
    @@num_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You accelerate to #{number} kph."
  end

  def brake(number)
    @current_speed -= number
    puts "You deccelerate by #{number} kph."
  end

  def current_speed
    puts "You're speed is #{@current_speed} kph."
  end

  def shut_down
    @current_speed = 0
    puts "Parking..."
  end

  def self.gas_mileage(litres, km)
    puts "#{km / litres}km per litre of gas." 
  end

  def spray_paint(colour)
    self.colour = colour
    puts "Your car is now #{self.colour}! Sick m'dude..."
  end

  def to_s
    "I'm a #{colour} #{year} #{model}. Oh yeah I can talk because why not..."
  end

  def age
    "The age of this car is #{calc_age}"
  end

  private

  def calc_age
    Time.now.year - self.year
  end
end



class MyCar < Vehicle
  WHEELS = 4

  def to_s
    "My car is a #{self.colour}, #{self.year}, #{self.model}!"
  end
end

class MyTruck < Vehicle
  WHEELS = 6

  include Towing

  def to_s
    "My truck  is a #{self.colour}, #{self.year}, #{self.model}!"
  end
end

tercel = MyCar.new(1995, 'Tercel', 'cyan')
puts tercel.colour
puts tercel.year
puts tercel.model
tercel.spray_paint('red')
puts tercel.colour
tercel.speed_up(300)
tercel.brake(250)
tercel.current_speed
tercel.brake(0)
tercel.shut_down
puts 'wowie'
puts tercel
puts tercel.age
MyCar.gas_mileage(50, 800)


puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

class Student
  attr_accessor :name
  attr_writer :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)

class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def say_hi
    hi
  end

  private

  def hi
    puts "Hi there #{self.name}!"
  end
end

bob = Person.new("Bob")
bob.say_hi
bob.hi