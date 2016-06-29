# make a bike model that can be  different types, 
#has different number of wheels.
#shoudl be able to find its position and be able to ride and park.
#make rider who can ride the bike => who`s riding each bike?
#the bike can take a different number of seats.

class Bike
	attr_reader :position, :name, :nr_seats
	def initialize(wheels, name, nr_seats)
		@wheels = wheels
		@position = 0
		@name = name
		@nr_seats = nr_seats
	end

	def ride
		@position += 1
		puts "Current position: " + position.to_s
	end

	def rider
		Rider.new(name)
	end

	def seats
		Seats.new(nr_seats)
	end
end

class Rider
	attr_reader :name
	def initialize(name)
		@name = name
	end
end

class Seats
	attr_reader :nr_seats
	def initialize(nr_seats)
		@nr_seats = nr_seats
	end
end



# bike1 = Bike.new(2, 'John')
# bike1.ride
# bike1.ride
# bike1.ride
# p bike1.rider.name

tricycle = Bike.new(3, "Ted", 2)
puts tricycle.rider.name #ted
puts tricycle.seats.nr_seats #2




