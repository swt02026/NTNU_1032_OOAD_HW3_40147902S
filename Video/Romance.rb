require_relative "Video"

class Romance
	
	include Video	

	def initialize(name)
		super name
		@price = PriceDegree::ROMANCE 
	end
end