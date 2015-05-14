require_relative 'Customer/CustomerContainer'
require_relative 'VideoStore'


class World
	
	attr_reader :customers

	def initialize

		@store = VideoStore.new
		@customers = CustomerContainer.new
	end

	def forwardADay
		@customers.customers.select(&:Renting?)
		.map { |e|  
			e.rentTotalNight = e.rentTotalNight - 1
		}

		@customers.customers.select(&:Renting?)
		.select { |e|  

			e.rentTotalNight == 0

		}.map! { |e|  

			e.returnVideo
		}

		@freeCustomers = @customers.getFreeCustomersWithRandom

		@freeCustomers.map{|e|
			e.rentVideoFrom(@store)
		}
	end

	def getReport
		@store.getReport
	end
end
world = World.new()

35.times {  
	world.forwardADay
}

print world.getReport

#p world.customers.customers
