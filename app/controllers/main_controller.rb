class MainController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id]) # if user in session, add the user object
    end
  end
end
