class SessionsController < ApplicationController
	def new
		if current_user
  			redirect_to home_path 
  		end
	end
	def create
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to home_path, notice: 'Logged in!'
		else
			render :new
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: 'Logged out!'
	end
end
