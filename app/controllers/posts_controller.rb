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
# GET /posts/:id/edit
  def edit
    @post = Post.find(params[:id])
  end
# PUT /posts/:id
  def update
    @post = Post.find(params[:id])
    if @post.update post_params
      redirect_to @post
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
