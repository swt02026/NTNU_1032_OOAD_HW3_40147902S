require_relative 'Transaction'

class Transactions
	
	attr_reader :transactions

	def initialize

		@transactions = Array.new
	end

	def addTransaction(videos,customer)

		@transactions.push(Transaction.new(videos,customer))
	end

	def setTransactionInvalid customer
		
		a=@transactions.select(&:isValid?)
		.select { |e|

			e.customer.name == customer.name
		}.map(&:setInvalid)
	end

	def getSumOfMoney
		
		transactions.inject(0){|sum,e|
			sum = sum + e.getSumOfMoney
		}
	end

	def to_s

		@transactions.each_with_index.inject("\n") { |sum, (i,j)|  

			output = %{
#{"-"*50}
#{j+1}.
Customer:
#{i.customer}

Video:
#{i.videos*"\n"}
#{"-"*50}
			}
			sum = sum + output
		}
	end

end

