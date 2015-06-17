
class Tool

	def sign_in 
		puts "Please insert your user name."
		@temp_user = gets.chomp
		puts "Please insert your password."
		@temp_password = gets.chomp
	end

	def check(users)
		users.each do |i| 
			if @temp_user == i.user && @temp_password == i.password
				puts "Write your text."
				text = gets.chomp
				text_length = text.split.length
				puts "You're a happy person."
				puts "Your text is #{text_length} words."
				break
			else
				puts "ERROR 404"
				break
			end
		end 
	end	

	def print
		
	end

end

class User
attr_accessor :user, :password

	def initialize(user, password)
		@user = user
		@password = password
	end
end

alex = User.new("Alexandra", "secret")
ramon = User.new("Ramon", "super")
garcia = User.new("Garcia", "hidden")
users = [alex, ramon, garcia]

machine = Tool.new
machine.sign_in
machine.check(users)

