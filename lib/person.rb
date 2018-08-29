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
	end

	def hygiene=(hygiene)
		if hygiene > 10
			@hygiene = 10
			# binding.pry
		elsif hygiene < 0
			@hygiene = 0
		else #don't modify input if 10 > hygiene > 0
			@hygiene = hygiene
		end
	end

	def happy?
		if @happiness > 7
			return true
		else
			return false
		end
	end

	def clean?
		if @hygiene > 7
			return true
		else
			return false
		end
	end

	def get_paid(salary_amount)
		@bank_account += salary_amount
		return "all about the benjamins"
	end

	def take_bath
		@hygiene += 4
		self.hygiene=(@hygiene)
		#what is self. purpose? why can't we call another method within a class directly?
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		@happiness += 2
		self.happiness=(@happiness)
		@hygiene -= 3
		self.hygiene=(@hygiene)
		return "♪ another one bites the dust ♫"
	end

	def call_friend(person)
		@happiness += 3
		self.happiness=(@happiness)
		person.happiness +=3
		return "Hi #{person.name}! It's #{@name}. How are you?"
	end

	def start_conversation(person, topic)
		case topic
		when "politics"
			@happiness -=2
			self.happiness=(@happiness)
			person.happiness -=2
			return "blah blah partisan blah lobbyist"
		when "weather"
			@happiness +=1
			self.happiness=(@happiness)
			person.happiness +=1
			return "blah blah sun blah rain"
		else
			return "blah blah blah blah blah"
		end
	end

end
