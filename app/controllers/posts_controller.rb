class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all
  end
  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end
  # POST /posts
  def create
    @post = Post.new post_params

    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def new
  end

  def edit
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
