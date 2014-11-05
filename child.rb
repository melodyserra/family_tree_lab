require_relative 'grandparent'
require_relative 'parent'

class Child < Parent

	@@fav_colors = [:blue, :red, :yellow, :orange, :green]

	def initialize(name, age, gender)
		super(name, age, gender)
		@fav_color = @@fav_colors.sample
    	@@children += 1
    	@@grandchildren += 1
		@@family << self
	end

	def self.colors
    	@@fav_colors
  	end

  	def grow_up
    	@age += 1
  	end

  	def talk(text)
    	if @age >= 2
      		puts "#{text} + #{color}"
    	elsif @age < 2
      		puts "Wahhh!"
    	end
  	end
end





