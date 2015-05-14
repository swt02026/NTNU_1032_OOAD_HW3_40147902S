require_relative 'Transaction/Transactions'
require_relative 'Video/VideoContainer'

class VideoStore
	attr_reader :videos
	attr_reader :money

	def initialize

		@videos = VideoContainer.new
		@transactions = Transactions.new
	end

	def getReport

		%(
#{"-"*50}
Money:#{@transactions.getSumOfMoney}
Available Video:#{@videos.getFreeVideosAmount}
Transactions:#{@transactions.to_s}
#{"-"*50}
)
	end

	def returnVideo(customer)
		
		@transactions.setTransactionInvalid customer
	end

	def rentalVideo(customer)

		avariable = @videos.getFreeVideosWithRandom(customer.rentVideoAmount)
		if avariable.length == 0
			return
		end
		@transactions.addTransaction(avariable,customer)

	end
end