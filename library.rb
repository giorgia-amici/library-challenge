class Library

	attr_accessor :inventory, :location, :library_members

	def initialize
		@inventory = []
		@library_members = []
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
		book.available ? add_book_to_member_loan_history(book, member) : 'not here'
		#&& remove_book_from_library(book)
	end




		









	# def number_of_books
	# 	@inventory.size
	# end

	# def return?(book)
	# 	puts book.end_loan_date
	# end

	# def borrower(book)
	# 	position = @inventory.index(book)
	# 	puts @inventory[position].borrower.surname
	# end

	# def mantainance_needed
	# 	@mantainance_needed_items = []
	# 	@inventory.each do |book|
	# 		@mantainance_needed_items << book if book.is_broken == true
	# 	end
	# 	@mantainance_needed_items
	# end


 end





