#CREATION OF THE ROOMS

class Game

    def initialize
        @world = []
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
        when "GET THE KEY" 
             p "You got the beautiful golden key!"
             room = @world.sample
             return start
        when "GET THE APPLE" 
              p "You got the red apple!"
             room = @world.sample
             return start 
        when "MAGIC HELP"
             room = @world.sample
             return start    
        else puts "You should read better the instruction. You're dead.\n* * * * * * * * * GAME OVER * * * * * * * * *"
        end        
    end    
end

class Room
attr_accessor :description, :exit

    def initialize (exit, description) 
        @exit = exit
        @description = description
    end

end

class User

bag = []
	def put_in_the_bag
	end
end


class Item
	def initialize(item)
		@item = item
	end
end




your_game = Game.new
cinema = Room.new("N", "You are in a dark room. You're at the cinema.")
norway = Room.new("S", "You are in a cold place. You're in Norway.")
castle = Room.new("W", "You are in a castle. You are a king.")
gallery = Room.new("E", "You are in the dark. You are in a gallery.")
disco = Room.new("N", "You are dancing. You are in a club.")
cave = Room.new("N", "You are in a cave. There's a golden key on the floor. Do you want to GET THE KEY it?")
market = Room.new("N", "You are in a market. There's a red apple on the floor. Do you want to GET THE APPLE it?")

world=[cinema, norway, castle, gallery, disco, cave, market]

your_game.create_world(world)
your_game.start