class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?



  protected
  

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :country,:sport,  :email, :remember_me]) 
  	devise_parameter_sanitizer.permit(:sign_in, keys:[:password,  :email, :remember_me]) 
  	devise_parameter_sanitizer.permit(:account_update , keys: [:name, :age,:country, :sport,  :email, :remember_me] ) 
  	#devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name, :age, :sport, :password,  :email, :remember_me)}

  end


end
