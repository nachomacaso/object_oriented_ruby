class Vehicle
 def initialize(vehicle_hash)
   @fuel = vehicle_hash[:fuel]
   @make = vehicle_hash[:make]
   @model = vehicle_hash[:model]
   @speed = vehicle_hash[:speed]
   @type = vehicle_hash[:type]
   @weight = vehicle_hash[:weight]
   @direction = 'north'
 end

 def brake
   @speed = 0
 end

 def accelerate
   @speed += 10
 end

 def turn(new_direction)
   @direction = new_direction
 end
 
 def show_speed
   puts @speed
 end

 def show_direction
   puts @direction
 end
end

class Car < Vehicle
 def initialize(vehicle_hash)
   super(vehicle_hash)
   @gas = 10
 end

 def honk_horn
   puts "Beeeeeeep!"
 end
end

class Bike < Vehicle
 def initialize(vehicle_hash)
   super(vehicle_hash)
 end

 def ring_bell
   puts "Ring ring!"
 end
end

bike = Bike.new({speed: 10, type: "Schwinn", weight: "20lbs"})
bike.ring_bell
bike.accelerate
bike.show_speed

car = Car.new({fuel: "diesel", make: "honda", model: "civic"})
car.honk_horn
car.turn("South")
car.show_direction