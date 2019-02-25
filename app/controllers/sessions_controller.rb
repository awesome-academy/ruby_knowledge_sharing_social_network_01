class SessionsController < ApplicationController
  before_action :check_logged_in, only: %i(new)

  def new
    render layout: false
  end

  def create
    user = User.find_by email: params[:session][:email].downcase

    if user&.authenticate params[:session][:password]
      login_advance user
    else
      flash.now[:danger] = t ".wrong"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  private

  def check_logged_in
    return unless logged_in?
    flash[:danger] = t ".already_logged_in"
    redirect_to root_url
  end

  def login_advance user
    log_in user

    if params[:session][:remember_me] == Settings.its_true
      remember user
    else
      forget user
    end
    flash[:success] = t ".success_login"
    redirect_back_or user
  end
end
