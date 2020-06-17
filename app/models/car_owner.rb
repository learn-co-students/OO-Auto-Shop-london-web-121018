class CarOwner

  attr_reader :name, :all

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    allcarlist = Car.all
    mycars = []
    allcarlist.each do |car|
      if car.owner == self
        mycars << car
      end
    end
    mycars
  end

  def mechanics
    mechanics = Mechanic.all
    carlist = self.cars
    mechaniclist = []
    mechanics.each do |mechanic|
      services = mechanic.services
      carlist.each do |car|
        if services.include?(car)
        mechaniclist << mechanic
        end
      end
    end
    mechaniclist
  end

  def self.averageamount
    totalowners = self.all.count
    totalcars = Car.all.count
    totalcars.to_f/totalowners
  end

end
