require_relative 'Customer'
require_relative '../CustomerFactory/RegularFactory'

class Regular
	
	include Customer

	def initialize name
		super name 
		@factory = RegularFactory.new
		reset
	end
	
	def reset
		@rentVideoAmount = @factory.genRentVideoAmount
		@rentTotalNight = @factory.genRentTotalNight
	end
end