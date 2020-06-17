require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



john = CarOwner.new("John")
rita = CarOwner.new("Rita")
mike = CarOwner.new("Mike")
serg = CarOwner.new("Serg")

dan = Mechanic.new("Dan", "supercar")
phil = Mechanic.new("Phil", "rally")
rui = Mechanic.new("Rui", "classic")
harry = Mechanic.new("Harry", "fatman")

ford = Car.new("Ford", "escort", "rally", john)
merc = Car.new("Mercedes", "somth","fatman", rita)
jag = Car.new("Jaguar", "x-type","classic", mike)
porshe = Car.new("Porshe", "gt3","supercar", serg)
toyota = Car.new("Toyota", "smth", "rally", john)
bmw = Car.new("BMW", "somth","fatman", mike)
aston = Car.new("Aston", "dbs","classic", mike)
pagani = Car.new("Pagani", "zonda","supercar", serg)
citroen = Car.new("Citroen", "ds", "rally", john)
tesla = Car.new("Tesla", "somth","fatman", rita)
ferrari = Car.new("Ferrari", "class","classic", mike)
lambo = Car.new("Lambo", "aventador","supercar", mike)

binding.pry
