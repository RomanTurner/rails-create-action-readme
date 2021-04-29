class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

 
 
  def create
    ##1. Create a new post instance
    @post = Post.new 
    ##2. Pass in the parmeters from the form
    @post.title = params[:title]
    @post.description = params[:description]
    ##3. Save to the record
    @post.save 
    ##4. Redirect to different page. Either show, new, index 
    redirect_to post_path(@post)
    end
  end
  
  # add create method here
end
