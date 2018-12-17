class Car

  attr_reader :make, :model, :classification, :owner

  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.car_classifications
    car_class = []
    self.all.each {|car| car_class << car.classification}
    car_class.uniq
  end

  def qualified_mechanic
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end

end
