require_relative "Video"

class Horror
	
	include Video
	
	def initialize(name)
		super name
		@price = PriceDegree::HORROR
	end
end