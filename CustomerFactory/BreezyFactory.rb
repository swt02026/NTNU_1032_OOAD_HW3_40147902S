require_relative 'CustomerFactory'

class BreezyFactory

	include CustomerFactory

	private
	module VideoAmount
		UPPER = 2
		LOWER = 1	
	end

	private
	module TotalNight
		UPPER = 2
		LOWER = 1	
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
