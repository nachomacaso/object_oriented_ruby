class Vehicle
  def initialize
    @speed = 0
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
  def initialize
    super # example of super
    @gas = 10
  end
  
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
bike.ring_bell
bike.accelerate
bike.show_speed

car = Car.new
car.honk_horn
car.turn("south")
car.show_direction

p car