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
	end




end


	#I want the date of today to be dispayed along with the item isbn
	#I want also the expring date to be displayed

# today =  Date.today 
# next_month = today + 30
# #require "date"