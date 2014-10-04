class Library
	attr_accessor :inventory, :location

	def initialize
		@inventory = []
	end

	def number_of_books
		@inventory.size
	end		

	def add_book_inventory(book)
		@inventory << book
		book.available = true
	end

	def available_books
		@available_books = []
		@inventory.each do |book| 
			@available_books << book if book.available == true
		end
		@available_books
		"We have #{@available_books.size} available books" 
	end

	def mantainance_needed
		@mantainance_needed_items = []
		@inventory.each do |book|
			@mantainance_needed_items << book if book.is_broken == true
		end
		@mantainance_needed_items
	end

end





