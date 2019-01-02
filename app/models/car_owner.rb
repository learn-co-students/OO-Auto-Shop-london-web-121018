class CarOwner
@@all = []
  attr_reader :name

      def initialize(name)
        @name = name
        @@all << self
      end


      def self.all
        @@all
      end
      def cars
      # - Get a list of all the cars that a specific owner has
      Car.all.select{|car| car.carOwner == self}
      end
      def mechanics
      # - Get a list of all the mechanics that a specific owner goes to
        cars.map{|car| car.mechanic}
      end

      def self.average_car_owned
        # - Get the average amount of cars owned for all owners
        Car.all.count/CarOwner.all.count
      end


end
