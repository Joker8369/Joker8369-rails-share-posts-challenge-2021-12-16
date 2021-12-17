class PostsController < ApplicationController
  before_action :find, only: %i[edit show update destroy]
  def index
    @posts = Post.all
    @user = current_user
  end

  def edit
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @user = current_user
  end

  def update
    @post.update(post_params)
    redirect_to posts_path
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :url, :user_id)
  end

  def find
    @post = Post.find(params[:id])
  end
end
