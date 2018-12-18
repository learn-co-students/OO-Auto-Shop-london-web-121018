class Car

  @@all = []

  attr_reader :make, :model, :classification, :carowner

  def initialize(make, model, classification, carowner)
    @make = make
    @model = model
    @classification = classification
    @carowner = carowner
    @@all << self
  end

  def self.all
   @@all
  end

  def self.classifications
    Car.all.map {|car| car.classification}.uniq
  end

  def find_experts
    experts = []
    Mechanic.all.each do |mechanic|
      if mechanic.specialty == self.classification
        experts << mechanic.name
      end
    end
    experts
  end

end
