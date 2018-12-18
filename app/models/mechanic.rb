class Mechanic

  @@all = []

  attr_accessor :name, :specialty
  attr_reader :car , :classification, :carowner, :owner_name

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select {|car| car.classification == self.specialty }
end

def car_owners
  cars.map {|car| car.carowner}.uniq
end

def car_owner_names
  car_owners.map {|car_owner| car_owner.owner_name}.uniq
end

end
