class Car
@@all = []
  attr_reader :make, :model
  attr_accessor :carOwner,:mechanic ,:classification

  def initialize(make, model, classification,carOwner,mechanic)
    @make = make
    @model = model
    @classification = classification
    @carOwner,@mechanic = carOwner,mechanic
    @@all << self
  end

  def self.all
    @@all
  end

    def self.classifications
      # Get a list of all car classifications
      Car.all.map{ |car| car.classification  }.uniq
    end

    def self.mechanics
  # - Get a list of mechanics that have an expertise that matches the car classification
      self.classifications.map{|classification| classification.mechanics == specialty.mechanics}
    end
end
