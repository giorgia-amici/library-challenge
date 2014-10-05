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

	def borrow(book, member)
		if book.available == true
			member.loan_history << book
			@start_loan_date = Date.today
			book.end_loan_date = @start_loan_date + 30
			member.loan_history << book.end_loan_date
			book.available = false
			position = @inventory.index(book)
			@inventory[position].available = false
		else
			puts 'I am sorry, the item requested is currently not available '
		end
	end

	# def available(book)
	# 	@inventory.each do |book| 
	# 	puts 'Is available ' if book.available = true
	# 	end
	# end

	def number_of_books
		@inventory.size
	end

	def return?(book)
		puts book.end_loan_date
	end

	# def borrower(book)
	# 	when_is_back(book)
	# 	position = @inventory.index(book)
	# 	puts @inventory[position].borrower
	# end

	def mantainance_needed
		@mantainance_needed_items = []
		@inventory.each do |book|
			@mantainance_needed_items << book if book.is_broken == true
		end
		@mantainance_needed_items
	end


 end





