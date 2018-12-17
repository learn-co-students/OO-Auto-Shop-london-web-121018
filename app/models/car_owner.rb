class CarOwner
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def car_classifications
    cars.map {|car| car.classification}.uniq
  end

  def mechanics
    suitable_mechanics = []
    car_classifications.each do |classification|
      Mechanic.all.each do |mechanic|
        if classification == mechanic.specialty
          suitable_mechanics << mechanic.name
        end
      end
    end
    suitable_mechanics
  end

  def self.average_num_of_cars
    Car.all.length.to_f/self.all.length
  end
end
