class Mechanic

@@all = []

  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def services
    Car.all.select {|car| car.classification == self.specialty}
  end

  def owners
    services.map {|car|car.owner}
  end

  def owners_names
    owners.map {|owners| owners.name}
  end



end
