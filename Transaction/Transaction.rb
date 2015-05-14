
class Transaction

	attr_reader :customer
	attr_reader :videos

	def initialize(videos,customer)

		@videos = videos
		@customer = customer
		@valid = true
	end

	def setInvalid

		@valid = false
		@videos.map{|e|
			e.rented = false
		}
	end

	def isValid?
		@valid
	end

	def getSumOfMoney

		@videos.inject(0) { |sum, video|
			sum = sum + video.price * @customer.rentTotalNight
		}
	end
end

