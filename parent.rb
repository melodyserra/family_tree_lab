require_relative 'grandparent'

@@children = 0

class Parent < Grandparent
		def initialize(name, age, gender)
		super(name, age, gender)
		@@family << self
		end
	def self.children
		@@children
	end
end
