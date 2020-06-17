class Car

  attr_reader :make, :model, :owner, :classification
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

  def self.classifications
    @@all.map do |car|
      car.classification
    end
  end

  def mechanic
    Mechanic.all.find do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
