require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bill = CarOwner.new("Bill")
ben = CarOwner.new("Ben")
tom = CarOwner.new("Bob")


c1 = Car.new("ford", "mustang", "antique", bill)
c2 = Car.new("bmw", "320d", "clunker", bill)
c2 = Car.new("bmw", "550d", "clunker", ben)
c2 = Car.new("Ferrari", "F40", "exotic", bill)
c2 = Car.new("Nissan", "micra", "clunker", tom)

mike = Mechanic.new("Mike", "antique")
mick = Mechanic.new("Mick", "exotic")
marissa = Mechanic.new("Marissa", "clunker")

binding.pry
