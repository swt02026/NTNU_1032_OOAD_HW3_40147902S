require_relative 'Video'

class Drama
	
	include Video

	def initialize(name)
		super name
		@price = PriceDegree::DRAMA
	end
end
