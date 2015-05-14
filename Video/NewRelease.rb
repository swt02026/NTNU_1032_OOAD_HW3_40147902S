require_relative 'Video'

class NewRelease

	include Video
	
	def initialize(name)
		super name
		@price = PriceDegree::NEWRELEASE 
	end
end