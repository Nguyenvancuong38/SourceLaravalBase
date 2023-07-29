class HomeController < ApplicationController
  def index
    if current_user
      @user = User.find(session[:user_id])
    else
      redirect_to login_path
    end
  end
end
