require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

james = CarOwner.new("james")
steve = CarOwner.new("steve")
dave = CarOwner.new("dave")

bronco = Car.new("ford","bronco", "vintage", james)
f150 = Car.new("ford", "f150", "new", james)
lambo = Car.new("lambo", "lambo", "new", steve)

frank = Mechanic.new("frank", "new")
eric = Mechanic.new("eric","vintage")

binding.pry
