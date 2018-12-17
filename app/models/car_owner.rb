class CarOwner

  attr_reader :name, :mechanic
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end



  def cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    cars.map {|car| car.mechanic}.uniq
  end

  def self.avg_cars
     Car.all.length.to_f/CarOwner.all.length
  end




end
