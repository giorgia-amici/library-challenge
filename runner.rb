require './book.rb'
require './member.rb'
require './library.rb'
require './artisan.rb'
require "date"



def get_instances
	@sherlock = Book.new
	@sherlock.title = 'Sherlock Holmes'
	@sherlock.author = 'Conan Doyle'
	@sherlock.isbn = '567892309'
	@don_quixote = Book.new
	@don_quixote.title = 'Don Quixote'
	@don_quixote.author = 'M. D. Cervantes'
	@don_quixote.isbn = '569072390'
	@ucl_library = Library.new 
	@giorgia = Member.new('Giorgia', 'Amici')
	@artisan_needed = Artisan.new
end




get_instances


