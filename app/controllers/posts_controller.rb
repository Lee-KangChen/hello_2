class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all
  end
  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def edit
  end
end
