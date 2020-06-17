require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("Jorge")
owner2 = CarOwner.new("Miguel")
owner3= CarOwner.new("Pablo")


mec1 = Mechanic.new("mec1","antique")
mec2 = Mechanic.new("mec2","exotic")
mec3 = Mechanic.new("mech3","clunker")

# make, model, classification,carOwner,mechanic
car1= Car.new("Peugeot","305","antique",owner2,mec3)
car2 = Car.new("Citroen","x5","exotic",owner1,mec3)
car3= Car.new("Jaguar","X2","clunker",owner3,mec1)
car4 = Car.new("BMW","Jump","antique",owner2,mec3)
car5 = Car.new("Mercedes","clasS","exotic",owner1,mec2)
car6 = Car.new("LL","dos","exotic",owner1,mec3)
car7 = Car.new("mar","telio","troubadour",owner2,mec2)


binding.pry
