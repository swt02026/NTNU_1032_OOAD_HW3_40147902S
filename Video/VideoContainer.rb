require_relative "NewRelease"
require_relative "Romance"
require_relative "Horror"
require_relative "Drama"
require_relative "Comedy"

class VideoContainer
	
	attr_reader :videos

	NAMES = (1..20).to_a

	def initialize()

		@videos = Array.new(20) { |i| 
			
			case i%5
			when 1
			 	Comedy.new NAMES[i]
			when 2
				Romance.new NAMES[i]
			when 3
				Drama.new NAMES[i]
			when 4
				NewRelease.new NAMES[i]	
			else
				Horror.new NAMES[i]
			end

		}.shuffle
		
	end

	def add(video)
		@videos.push(video)
	end

	def getFreeVideosWithRandom amount
		
		v= @videos.reject(&:Rented?).sample(amount)
		v.map{|e|
			
			e.rented = true
		}
		v

	end

	def getFreeVideosAmount

		@videos.count{|video|

			!video.Rented?
		}
	end

end

