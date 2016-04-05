class Vehicle

  def initialize(*vehicle)
    @year = 2000
  end

  def what_am_i?
    "#{self}"
    # Este método va a ser utilizado por varias clases y deberá regresar 
    # el nombre de la clase desde la cual se corrió.
    # ej.
    # bocho = Car.new
    # bocho.what_am_i? => Car
  end

  def number_of_wheels
  end
  
  def color
  end

  def number_of_gears
  end

  def age!
    @year = rand(9)
  end

  def age
    @year
  end

end

class Bicycle < Vehicle
  def to_s
    "Bicycle"
  end
end#class Bicyle

class Motorized < Bicycle

  def initialize
  end

  def has_motor
  end

  def tank_size
  end

  def refuel
  end

end#class Motorized

class Motorbike < Motorized
  def to_s
    "Motorbike"
  end
end#class Motorbike

class Car < Motorized
  def to_s
    "Car"
  end
end#class car

class Skateboard < Bicycle
  def to_s
    "Skateboard"
  end
end#class Skateboard

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end