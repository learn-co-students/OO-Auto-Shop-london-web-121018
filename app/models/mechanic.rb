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

  def cars_served
    Car.all.select {|car| car.classification == self.specialty}
  end

  def owners_by_mechanic
    cars_served.map {|car| car.owner}
  end

  def owners_name_by_mechanic
    owners_by_mechanic.map {|owner| owner.name}.uniq
  end


end
