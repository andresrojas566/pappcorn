class WelcomeController < ApplicationController
  def index
  		@users  = User.all
  		 
  end
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

def destroy
   session[:user_id] = nil
  #  redirect_to root_url, notice: 'Logged out!' 
  end  
end
