class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@post), notice: "Comment posted 👌"
    else
      redirect_to post_path(@post), notice: "Comment can't blank"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    redirect_to posts_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

  def find_comment
    @comment = Comment.find(params[:comments_id])
  end
end
