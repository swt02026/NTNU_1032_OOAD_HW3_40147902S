require_relative 'CustomerFactory'

class RegularFactory
	
	include CustomerFactory

	private
	module VideoAmount
		UPPER = 3
		LOWER = 1	
	end

	private
	module TotalNight
		UPPER = 5
		LOWER = 3	
	end

	public 
	def genRentVideoAmount
		CustomerFactory::genRentVideoAmount(VideoAmount::LOWER, VideoAmount::UPPER)
	end

	public 
	def genRentTotalNight
		CustomerFactory::genRentTotalNight(TotalNight::LOWER, TotalNight::UPPER )
	end
end