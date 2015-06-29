class User
	attr_accessor :age, :name

	def initialize(age, name)
		@age = age
		@name = name
	end

	def to_s
		puts "#{@name}, #{@age}"
	end
end

u1 = User.new(13, "tim")
u2 = User.new(15, "tim")
u3 = User.new(13, "bob")
users = [u1, u2, u3]
# This will first sort the name in ascending order and then the age
users.sort_by { |user| [user.name, user.age] }