
#CREATION OF THE ROOMS

class Game

	def initialize
		@world = []
	end

	def create_world (rooms)
		@world = rooms 
	end

	def set_movements
		chomp
		while @exit

	end	

	def start
		room = @world.sample
	    p room.description
	

		#while se la direzione scelta coincide con quella suggerita > 
		#room = @world.sample
		#p room.description
		# il resto "You don't listen to me :( GAME OVER"

	end	
end

class Room
attr_accessor :description, :exit

	def initialize (exit, description) 
		@exit = exit
		@description = description
	end

end

your_game = Game.new

cinema = Room.new("N", "You are in a dirty room. There is a door to the North.")
norway = Room.new("S", "You are in a cold place. There is a door to the South.")
island = Room.new("W", "You are in the water. There is a way out to the West.")
gallery = Room.new("E", "You are in the dark. There is a way to the East.")
disco = Room.new("N", "You are dancing. There is a door to the North.")

world=[cinema, norway, island, gallery, disco]

your_game.create_world(world)
your_game.start

