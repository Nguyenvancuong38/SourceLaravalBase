class HomeController < ApplicationController
  before_action :require_user, except: :index

  def index
    if current_user
      @user = User.find(session[:user_id])
    end
  end
end
