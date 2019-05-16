class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index

  end
  helper_method :current_user
  def current_user
	#complete this method
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
    user_name = User.find(session[:user_id])
  end
  helper_method :is_user_logged_in?
  def is_user_logged_in?
	#complete this method
  logged_in = false
  if cookies["user_id"] != ""
    logged_in = true
  end
  if self.current_user
    logged_in = true
  end
	if logged_in then true else redirect_to root_path end 
  end
  
end
