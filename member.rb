class Member
	attr_accessor :name, :surname, :loan_history

	def initialize (name, surname)
		@name = name
		@surname = surname
		@loan_history = []
	end

	def borrowing_books(book)
		@start_loan_date = Date.today
		@end_loan_date = @start_loan_date + 30
		@loan_history << @surname + " " + @name + " / " + "Item ISBN: " + book.isbn + " / " + "End of loan date : " + @end_loan_date.to_s
		book.available = false

	end

	def start_loan_date
		@start_loan_date
	end






end


