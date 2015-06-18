

require 'terminfo'
p TermInfo.screen_size


class Slide

attr_accessor :content

	def initialize (content)
		@content = content
	end

	def show
		p @content
	end
end

class Keynote

def p @content

#	next line
#	previuos line
	
end

end

Slide.new ("Prepare for the next big thing")
Slide.new ("The iTerminal")
Slide.new ("Is here")

