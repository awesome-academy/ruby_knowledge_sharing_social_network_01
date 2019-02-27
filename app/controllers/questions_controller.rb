class QuestionsController < ApplicationController
  def new
    @question = Post.new
  end
end
