class CommentController < ApplicationController
  def comment
    @comment = Comment.new
    @comments = Comment.all
    @comments = Comment.limit(10).offset(0)
  end
  def comment_params
    params.require(:comment).permit(:id,:title,:name,:email,:comments,:day)
  end
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comments_path
    else
      comment
      render "comment"
    end
  end
end
