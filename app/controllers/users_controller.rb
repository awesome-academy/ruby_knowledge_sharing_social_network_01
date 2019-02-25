class UsersController < ApplicationController
  before_action :search_user, only: %i(show)

  def show; end

  def new
    @user = User.new
    @user.build_profile
    render layout: false
  end

  def create
    @user = User.create user_params
    if @user.save
      log_in @user
      redirect_to @user
    else
      flash.now[:danger] = t ".fail"
      render :new, layout: false
    end
  end

  private

  def user_params
    params.require(:user).permit :email, :password, :password_confirmation,
      profile_attributes: [:id, :first_name, :last_name, :birthday]
  end

  def search_user
    @user = User.find_by id: params[:id]

    return if @user
    flash[:danger] = t "user_not_found"
    redirect_to signup_path
  end
end
