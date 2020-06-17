class Mechanic
  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map {|mechanic| mechanic.classification}.uniq
  end

  def car_services
    Car.all.select {|car| car.classification == self.specialty}
  end

  def car_owners
    customers = []
    car_services.each do |car|
      Car.all.each do |vehicle|
        if car.classification == vehicle.classification
          customers << car.owner
        end
      end
    end
    customers.uniq
  end

  def customers
    car_owners.map {|owner| owner.name}
  end


end
