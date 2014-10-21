class Library

	attr_accessor :inventory, :location, :library_members, :to_fix

	def initialize
		@inventory = []
		@library_members = []
		@to_fix = []
	end

	def add_member(member)
		@library_members << member
	end

	def add_book_inventory(book)
		@inventory << book
		book.available = true
	end

	def standard_length_of_loan(book)
		@start_loan_date = Date.today
		book.end_loan_date = @start_loan_date + 30
	end

	def add_book_to_member_loan_history(book, member)
		standard_length_of_loan(book)
		member.loan_history << book
	end

	def remove_book_from_library(book)
		position = @inventory.index(book)
		@inventory[position].available = false
	end

	def borrow(book, member)
		if book.available 
			add_book_to_member_loan_history(book, member) && remove_book_from_library(book) 
		end
	end

	def number_of_books
		@inventory.size
	end

		
	def return?(book)
		p book.end_loan_date
	end

	def maintenance
		@inventory.each do |book|
			 if !book.broken? @to_fix << book
			 end
		@to_fix
		end
	end


 end





