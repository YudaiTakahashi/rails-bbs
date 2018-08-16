class CommentController < ApplicationController
  def comment
    @comments = Comment.all
    @comment = Comment.new
  end
  def comment_params
    params.require(:comment).permit(:id,:title,:name,:email,:comments,:day)
  end
  def create
    @comment = Comment.new(comment_params)
    @comment.save
  end
end
