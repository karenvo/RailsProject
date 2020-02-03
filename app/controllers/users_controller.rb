class UsersController < ApplicationController
  helper_method :logged_in?
  helper_method :current_user

  def new
    @user = User.find_by(id: session[:user_id])
    if @user.logged_in?
      redirect_to root_path
    else
      @user = User.new
    end
  end

  def create
    if @user && @user.authenticate(params[:password])
      sessions[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to '/sessions/welcome'
    end
  end

end
