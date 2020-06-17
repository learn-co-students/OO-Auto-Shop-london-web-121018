class CarOwner

  @@all = []

  attr_reader :carowner, :mechanic, :specialty
  attr_accessor :owner_name, :make, :model, :classification

  def initialize(owner_name)
    @owner_name = owner_name
    @@all << self
  end

  def self.all
    @@all
  end

  def buy_a_car(make, model, classification)
    Car.new(make, model, classification, self)
  end

  def cars
    car_owners = []
    Car.all.select do |car|
      if car.carowner == self
        car_owners << car
      end
  end
  car_owners
  end

  def mechanics
    mechanics = []
    Mechanic.all.each do |mechanic|
    cars.each do |car|
      if car.classification == mechanic.specialty
        mechanics << mechanic
      end
    end
  end
  mechanics.uniq
end

def self.average_num_of_cars_owned
  Car.all.length.to_f / CarOwner.all.length
end

end
