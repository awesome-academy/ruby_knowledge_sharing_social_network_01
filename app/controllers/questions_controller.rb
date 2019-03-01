class QuestionsController < ApplicationController
  before_action :logged_in_user

  def new
    @question = Post.new
  end

  def create
    @question = current_user.posts.build question_params
    @question.question!

    if @question.save
      tagging
      flash[:success] = t ".create_question_success"
      redirect_to home_path
    else
      flash.now[:danger] = t ".create_question_fail"
      render :new
    end
  end

  private

  def question_params
    params.require(:post).permit :title, :content
  end

  def tag_params
    params[:post][:tag]
  end

  def tagging
    tag_params.split(",").each do |t|
      @tag = Tag.new
      @tag.name = t

      if @tag.save
        @used_tag = @question.used_tags.build
        @used_tag.tag_id = @tag.id
        @used_tag.save
      else
        flash.now[:danger] = t(".create_tag_fail") + @tag.name
      end
    end
  end
end
