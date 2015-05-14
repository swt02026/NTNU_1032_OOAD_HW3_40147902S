require_relative "Video"	

class Comedy

	include Video
	
	def initialize(name)
		super name
		@price = PriceDegree::COMEDY 
	end
end