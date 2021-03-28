class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}" # can use self.human_years in ruby 2.7
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

snowball = GoodDog.new("Snowball", 4)
puts snowball.public_disclosure
# snowball.human_years    # private ~ throws error

class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new
puts fido.a_public_method
# puts fido.a_protected_method    # no cigar pal ~ error
