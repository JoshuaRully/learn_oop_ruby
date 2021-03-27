class MyCar
  attr_accessor :colour 
  attr_reader :year, :model

  def initialize(y, m, c)
    @year = y
    @model = m
    @colour = c
    @current_speed = 0
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

  def spray_paint(colour)
    self.colour = colour
    puts "Your car is now #{self.colour}! Sick m'dude..."
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