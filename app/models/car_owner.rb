class CarOwner
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_by_owner
    Car.all.select {|car| car.owner == self}
  end

  def mechanic_by_owner
    cars_by_owner.map {|car| car.qualified_mechanic}
  end

  def self.average_cars
    cars_count = 0
    self.all.each {|owner| cars_count += owner.cars_by_owner.length}
    cars_count.to_f / self.all.length
  end

end
