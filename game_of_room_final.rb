
#CREATION OF THE GAME
# REFACTORED VERSION OF THE GAME + ONE SECOND OBJECT > > GEMS in the POCKET


class Game

    def initialize(player)
        @world = []
        @player = player
        end

    def create_world (rooms)
        @world = rooms 
    end

    def start
        room = @world.sample
        p room.description
        p "There is an exit @ " + room.exit
        text = gets.chomp
        case text
        when room.exit
             room = @world.sample
             return start 
        when "GET THE APPLE" 
              get_apple
        when "GET THE GEM" 
             get_gem
        else game_over
        end        
    end  

    def get_apple
        @player.bag += 1
        p "You got the red apple!"
        p "You have #{@player.bag} apples in your bag"
        room = @world.sample
        return start 
    end

     def get_gem
        @player.pocket += 1
        p "You got the shiny gem!"
        p "You have #{@player.pocket} gem in your pocket"
        room = @world.sample
        return start 
    end

    def game_over
        puts "You should read better the instruction. You're dead.
        \n* * * * * * * * * GAME OVER * * * * * * * * *"
    end

end

# CREATE THE ROOMS OF YOUR WORLD
class Room
attr_accessor :description, :exit

    def initialize (exit, description) 
        @exit = exit
        @description = description
    end
end

class User
    attr_accessor :bag, :pocket
       
    def initialize 
        @bag = 0
        @pocket = 0
    end

     def call_name
        p "What's your name, bro?"
        user_name = gets.chomp.upcase  
        p "Let's start the game, " + user_name
    end

end

class Item
attr_accessor :item

    def add_items(item)
        @bag << item
    end

    def add_items(item)
        @pocket << item
    end

end

player = User.new
player.call_name
your_game = Game.new(player)

cinema = Room.new("N", "You are in a dark room. You're at the cinema.")
norway = Room.new("S", "You are in a cold place. You're in Norway.")
castle = Room.new("W", "You are a king. You are in a castle and there is a shiny gem. Do you want to GET THE GEM?")
gallery = Room.new("E", "You are in the dark. You are in a gallery.")
disco = Room.new("N", "You are dancing. You are in a club.")
market = Room.new("N", "You are in a market. There's a red apple on the floor. Do you want to GET THE APPLE?")

world=[cinema, norway, castle, gallery, disco, market]

your_game.create_world(world)
your_game.start
