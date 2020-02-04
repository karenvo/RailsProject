class UsersController < ApplicationController

  def new
    @user = self.current_user
    if self.logged_in?
      redirect_to root_path
    else
      @user = User.new
    end
  end

  def create
    if @user && @user.authenticate(params[:password])
      sessions[:user_id] = @user.id
      redirect_to '/users/new'
    else
      redirect_to '/sessions/welcome'
    end
  end

end
