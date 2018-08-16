class IndexController < ApplicationController
  def index
    p "aiueo"
    @comments = Comment.all
  end
end
