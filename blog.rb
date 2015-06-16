

require 'date'

# CREATION OF A BLOG
class Blog
attr_accessor :container

	def initialize
		@container = []
		@position = 1
	end

	def publish_front_page
		@container = @container.sort_by {|post| post.date} #order posts by date
    	@container.reverse! #inverted order !
    	posts_to_print = @container.slice(@position,@position + 1)
		posts_to_print.each {|post| post.show_post}	# publish the post!
	end
 end 

# CREATION OF A POST
class Post 	
attr_accessor :date
attr_accessor :title

	def initialize (title, text, date)
	@title = title
	@text = text
	@date = date
	end

	def show_post
	puts @title, "**************", @text, "-------------", @date
	end
end

class SponsoredPost < Post

	def initialize (title, text, date)
	@title = "********** "+ title +" *************"	
	@text = text
	@date = date
	end
end

my_first_blog = Blog.new 

first_post = Post.new("1 - Let's start!", "My very first post for the blog", Date.new(2015,2,3))
second_post = SponsoredPost.new("2 - Last one", "My second challenge", Date.new(2014,2,3))
third_post = Post.new("3 - One more", "My third challenge", Date.new(2013,2,3))
fourth_post = Post.new("4 - One more", "My third challenge", Date.new(2009,2,3))
fifth_post = Post.new("5 - One more", "My third challenge", Date.new(2007,2,3))

my_first_blog.container << first_post
my_first_blog.container << second_post
my_first_blog.container << third_post
my_first_blog.container << fourth_post
my_first_blog.container << fifth_post

my_first_blog.publish_front_page
