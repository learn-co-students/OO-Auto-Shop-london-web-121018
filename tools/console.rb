require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

carowner1 = CarOwner.new("Alice")
carowner2 = CarOwner.new("Christina")
carowner3 = CarOwner.new("Tania")
carowner4 = CarOwner.new('Ellie')

car1 = Car.new("Nissan", "Juke", "exotic", carowner3)
car2 = Car.new("BMW", "X1", "antique", carowner1)
car3 = Car.new("Mercedes", "A Class", "antique", carowner1)
car4 = Car.new("Ford", "Fiesta", "clunker", carowner2)
car5 = Car.new("Toyota", "Prius", "exotic", carowner3)
car6 = Car.new("Seat", "Alhambra", "clunker", carowner4)

mechanic1 = Mechanic.new("Ben", "antique")
mechanic2 = Mechanic.new("Hannah", "exotic")
mechanic3 = Mechanic.new("Jake", "clunker")
mechanic4 = Mechanic.new("Joe", "antique")

binding.pry
