class CommentController < ApplicationController
  def comment
    @comments = Comment.all
    @comment = Comment.new
  end
  def comment_params
    params.require(:comment).permit(:id,:title,:name,:email,:comments,:day)
  end
  def create
    @comments = Comment.new(comment_params)
    if @comments.save
      redirect_to comments_path
    else
      render action: :comment
    end
  end
end
