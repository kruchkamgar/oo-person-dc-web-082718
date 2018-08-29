# your code goes here# code here!
require 'pry'

class Person
	attr_accessor :bank_account
	attr_reader :name, :happiness, :hygiene

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(happiness)
		
		if happiness > 10
			@happiness = 10
			# binding.pry
		elsif happiness < 0
			@happiness = 0
		else #don't modify input if 10 > happiness > 0
			@happiness = happiness
		end
			

		# if (happiness <= 10 && happiness >= 0)
		
		# 	@happiness = happiness
		# # else 
		# # 	puts "enter a # b/n 0 and 10"
		# end

	end


	def hygiene=(hygiene)
		@hygiene = hygiene
	end

end
