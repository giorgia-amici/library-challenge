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
	@ucl_library.add_member(@giorgia)
	@pablo = Member.new('Pablo', 'Portabales')
	@ucl_library.add_member(@pablo)
	@sherlock.available = true
	@don_quixote.available = true
	@ucl_library.add_book_inventory(@sherlock)
	@ucl_library.add_book_inventory(@don_quixote)

end


get_instances


# create sherlock
# giorgia
# library checks if sherlock available
# library checks giorgia is a member
# giorgia borrow sherlock
# and we expect:

# library that sherlock not available
# library knows that giorgia has sherlock and when the book will be available
# library knows everything about giorgia, loand history, name,...



