class Car

  attr_reader :make, :model, :classification, :allcars, :owner

  @@allcars = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@allcars << self

  end

  def self.all
    @@allcars
  end


end
