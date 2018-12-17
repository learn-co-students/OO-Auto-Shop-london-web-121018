class Mechanic

  attr_reader :name, :specialty, :allmechanics

  @@allmechanics = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@allmechanics << self
  end

  def self.all
    @@allmechanics
  end

  def services
    carlist = []
    allcars = Car.all
    allcars.each do |car|
      if car.classification == self.specialty
        carlist << car
      end
    end
    carlist
  end

  def carowners
    carowners = []
    owners = CarOwner.all
    mechanics = owners.each do |owner|
      owner.mechanics.each do |mechanic|
        if mechanic == self
          carowners << owner
        end
      end
    end
    carowners
  end

  end
