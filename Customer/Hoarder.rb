require_relative 'Customer'
require_relative '../CustomerFactory/HoarderFactory'

class Hoarder
	
	include Customer

	def initialize name
		super name 
		@factory = HoarderFactory.new
		reset
	end

	def reset

		@rentVideoAmount = @factory.genRentVideoAmount
		@rentTotalNight = @factory.genRentTotalNight
	end
end