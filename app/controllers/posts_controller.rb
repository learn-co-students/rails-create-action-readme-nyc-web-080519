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

  # add create method here

  def create
    @newpost = Post.new
    @newpost.title = params[:title]
    @newpost.description = params[:description]
    @newpost.save
    redirect_to post_path(@newpost)
  end  # ends Create controller action
end
