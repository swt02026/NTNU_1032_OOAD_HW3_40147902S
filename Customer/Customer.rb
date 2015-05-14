
module Customer
	
	attr_reader :rentVideoAmount, :name 
	attr_accessor :rentTotalNight
	attr_writer  :store,:renting

	def initialize(name)
		@name = name
		@renting = false
	end

	def Renting?
		@renting
	end

	def rentVideoFrom(store)
		@store = store
		@renting = true
		@store.rentalVideo(self)
	end

	def returnVideo
		#return video
		@store.returnVideo(self)
		@renting = false
	end

	def to_s

		"name:#{
			@name
		}\tRenting:#{
			@renting
		}\nRentVideoAmount:#{
			@rentVideoAmount
		}\tRentTotalNight:#{
			@rentTotalNight
		}\n"

	end
end