require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tim = CarOwner.new('tim')
todd = CarOwner.new('todd')
jeff = CarOwner.new('jeff')
benz = Car.new('benz','model5', 'big', tim)
lambo = Car.new('benz','model5', 'med', todd)
ford = Car.new('benz','model5', 'small', jeff)
truck = Car.new('benz','model5', 'med', tim)
hatchback = Car.new('tesla','model7', 'med', jeff)
ford = Car.new('benz','model5', 'small', todd)

robby = Mechanic.new('rob','big')
timmy = Mechanic.new('timmy','med')
toddy = Mechanic.new('todd','small')


binding.pry

puts 'Fast and Furious'
