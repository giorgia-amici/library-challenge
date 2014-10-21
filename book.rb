class Book
	attr_accessor :title, :author, :isbn, :end_loan_date, :borrower, :broken, :available

	def initialize
		self.broken?
	end

	def broken?
		@broken = false
	end

end





