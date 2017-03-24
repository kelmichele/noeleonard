class StaticPagesController < ApplicationController
	def trucker_accidents
	end

	def about
	end

	def auto_accidents
	end

	def contact
	end

	def espanol
	end

	def home
	end

	def motorcycle_accidents
	end

	def page
		@array = [1,2,3,4,5]

		@students = ["Mike", "Tim", "Monique"]

		@nested_students = [
		  ["Mike", "Grade 10", "A average"],
		  ["Tim", "Grade 10", "C average"],
		  ["Monique", "Grade 11", "B Average"]
		]
	end

	def personal_injury
	end

	def resources
	end

end
