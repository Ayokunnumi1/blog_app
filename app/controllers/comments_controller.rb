class CommentsController < ApplicationController
  before_action :set_user_and_post

  def new
    @comment = Comment.new
  end

  def create
    @comment = @post.comments.build(comment_params)
    if @comment.save
      flash[:success] = 'Comment saved successfully'
      redirect_to user_post_path(@post, @user)
    else
      flash.now[:error] = 'Post not saved, try again later'
      render :new
    end
  end

  private

  def set_user_and_post
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id)
  end
end
