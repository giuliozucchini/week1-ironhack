class Program

    def initialize(arr_users)
        @arr_users = arr_users
    end

    def sign_in 
        puts "Please insert your user name."
        temp_user = gets.chomp
        puts "Please insert your password."
        temp_password = gets.chomp
  
        Authenticate.new(@arr_users, temp_user, temp_password).check
    end

end



class Authenticate

    def initialize(arr_users, temp_user, temp_password)
        @arr_users = arr_users
        @temp_user = temp_user
        @temp_password = temp_password
    end

    def check
        @arr_users.each do |i|  ## split counter, text
            if @temp_user == i.user && @temp_password == i.password
                PrintText.new.record_text
                return
            end 
        end 
        puts "ERROR 404"
        return
    end    
end

class PrintText
     def record_text
        puts "Write your text."
        text = gets.chomp
        number_of_words = WordsCounter.new(text).count_words #make a generic function to integrate different operations
        puts "Your text has #{number_of_words} words"
    end
end

class WordsCounter
    def initialize(text)
        @text = text
    end
  
    def count_words
        @text.split(" ").length
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

machine = Program.new(users)
machine.sign_in

