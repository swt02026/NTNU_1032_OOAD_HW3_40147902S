require_relative '../PriceDegree'

module Video

	attr_reader :name 
	attr_reader :price 
	attr_writer :rented

	def initialize(name)
		@name = name
		@rented = false
	end

	def Rented?
		@rented
	end

	def to_s
		"Name:#{
			@name
		}\tPrice:#{
			@price
		}\tRented:#{
			@rented
		}\n"
	end
end
