class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      self.specialty == car.classification
    end
  end

  def owners
    cars.map {|car| car.owner}
  end

  def owner_names
    owners.map {|owner| owner.name}
  end


end
