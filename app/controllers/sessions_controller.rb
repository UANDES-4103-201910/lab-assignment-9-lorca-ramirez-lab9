class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
	end

	def destroy
		#complete this method
		User.find(session[:user_id]).destroy      
	    session[:user_id] = nil         
	    redirect_to '/' 
	end
end
