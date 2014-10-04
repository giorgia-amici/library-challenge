class Library
	attr_accessor :inventory, :location

	def initialize
		@inventory = []
	end


#size() can count the items in the library

	def numer_of_books
		@inventory.size
	end		



end





