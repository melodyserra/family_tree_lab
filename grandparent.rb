class Grandparent
	attr_accessor :name, :age, :gender
	@@family = []
	@@grandchildren = 0
		def initialize (name, age, gender)
			@name = name
			@age = age
			@gender = gender
			@@family << self
			@@grandchildren +=1
		end
	def self.family
		@@family
	end
	def self.grandchildren
		@@grandchildren
	end
	def self.showFamily
		fam_arr = []
		@@family.each do |person|
			my_hash = {
				name: person.name,
				age: person.age,
				relation: person.class.name #how do I find out what class something is?
			}
			# Add my_hash to the fam_arr
			fam_arr << my_hash
		end
		p fam_arr
	end
end

