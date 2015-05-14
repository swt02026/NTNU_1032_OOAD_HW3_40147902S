module CustomerFactory

	def self.genRentVideoAmount(lower,upper)
		Random.rand(lower..upper)
	end

	def self.genRentTotalNight(lower,upper)
		Random.rand(lower..upper)
	end
end