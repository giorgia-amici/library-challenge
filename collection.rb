class Library
	#attr_accessor :library_collection

	def initialize
		@library = []
	end



#call the following method first then add the objects to the list and along with
#size() can count the items in the library
	def get_collection
		@library
	end



	def tot_books
		puts "We have #{@library.get_collection.size} books "
	end



end


#count of how many books are in the library's collection

#first I need to store my collection in a list? or an hash?
#attempt with list(done)
#to do: attemp using an hash that will have 3 symbols :title, :author and :isbn




