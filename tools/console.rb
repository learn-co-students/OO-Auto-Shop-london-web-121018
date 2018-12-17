require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

# Test Data

o1 = CarOwner.new("Harry")
o2 = CarOwner.new("Jack")
o3 = CarOwner.new("Sam")

m1 = Mechanic.new("Tom", "antique")
m2 = Mechanic.new("Mark", "beamer")
m3 = Mechanic.new("Keith", "exotic")
m4 = Mechanic.new("Steve", "beamer")

c1 = Car.new(o1, "Aston Martin", "DB4", "antique")
c2 = Car.new(o1, "Toyata", "S89", "beamer")
c3 = Car.new(o3, "Mustang", "High-top", "beamer")
c4 = Car.new(o1, "Ferrari", "Vantage", "exotic")
c5 = Car.new(o2, "Mercedes", "Classic", "antique")

binding.pry
p 'eof'
