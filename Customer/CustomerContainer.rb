require_relative 'Breezy'
require_relative 'Hoarder'
require_relative 'Regular'

class CustomerContainer

	attr_reader :customers

	NAMES = ('a'..'j').to_a

	def initialize()

		@customers = Array.new(10) { |i| 
			
			case i%3
			when 1
			 	Hoarder.new NAMES[i]
			when 2
				Regular.new NAMES[i]
			else
				Breezy.new NAMES[i]
			end
		}
		
	end

	def add(customer)

		@customers.push(customer)
	end

	def getFreeCustomersWithRandom
		
		@customers.reject(&:Renting?)
		.sample Random.rand(1..10)
	end

end
