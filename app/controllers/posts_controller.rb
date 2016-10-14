class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
# GET /posts
  def index
    @posts = Post.all
  end
# GET /posts/:id
  def show
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
    @post = Post.new
  end
# GET /posts/:id/edit
  def edit
  end
# PUT /posts/:id
  def update
    if @post.update post_params
      redirect_to @post
    else
      render :edit
    end
  end
# DELETE /posts/:id
  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :user_id, :tag_ids)
  end
end
