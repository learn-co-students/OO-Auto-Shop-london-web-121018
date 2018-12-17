class CarOwner

@@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def cars_owned
    Car.all.select {|cars| cars.owner == self}
  end

  def classifications
    cars_owned.map {|car| car.classification}
  end

  def mechanics
    cars.map {|car| car.mechanics}
  end


  def self.average_cars_owned
    x = Car.all.count.to_f/CarOwner.all.count
    x.round(2)
  end
end
