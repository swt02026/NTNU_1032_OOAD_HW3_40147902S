require_relative 'Customer'
require_relative '../CustomerFactory/BreezyFactory'

class Breezy
	
	include Customer
	
	def initialize name
		super name 
		@factory = BreezyFactory.new
		reset
	end
	
	def reset
		@rentVideoAmount = @factory.genRentVideoAmount
		@rentTotalNight = @factory.genRentTotalNight
	end

end