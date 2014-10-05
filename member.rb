class Member
	attr_accessor :name, :surname, :loan_history

	def initialize (name, surname)
		@name = name
		@surname = surname
		@loan_history = []
	end
end


