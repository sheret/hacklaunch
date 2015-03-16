class PostsController < ApplicationController
	def new
	  @post = Post.new
	end

	def create
	  @post = Post.new(post_params)

	  if @post.save
	    redirect_to '/posts'
	  else
	    render 'new' #this isn't working, registering empty posts to the database

	  end
	end


	def index
	  @posts = Post.all
	end

	def edit
	  @post = Post.find(params[:id])

	end

	def update
	end
	
	def post_params
	    params.require(:post).permit(:title, :content)
	end


	 def show
	  	@post = Post.find(params[:id]) #models will always be capitalized; Post is the model, find is the method, and params[:id] is the route
	  	#need an instance variable in order to pass it to the view --> @post is the instance variable

	  	@post.increment!(:view_count) #method to add another view count, this is the entry point into views so need to put it under this action
	 end

end
