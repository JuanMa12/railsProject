class SessionsController < ApplicationController
  include SessionsHelper

  def index
    if logged_in?
      redirect_to user_profile_path(current_user.id)
    end
  end

  def create
    user  = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      log_in user
      flash[:success] = "Welcome #{user.name}"
      redirect_to user_index_path
    else
      flash[:danger] = 'Email and password Incorrect!'
      redirect_to sessions_index_path
    end
  end

  def destroy
    log_out
    flash[:success] = 'Good Bay!'
    redirect_to home_index_url
  end

end
