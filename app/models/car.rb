class Car

  @@all = []

  attr_reader :make, :model, :owner, :classification

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
    self.all.map {|car| car.classification }.uniq
  end

  def mechanics
     Mechanic.all.select {|mechanics| mechanics.specialty == self.classification}
  end



end
