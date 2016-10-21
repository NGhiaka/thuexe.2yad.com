class SessionController < ApplicationController
  def new
  end

  def create
	user = User.where(:uname => params[:session][:uname].downcase).first
	if user && user.authenticate(params[:session][:password])
		# Log the user in and redirect to the user's show page.
		log_in user
		redirect_to user

	else
	# Create an error message.
		flash.now[:danger] = 'Invalid username/password combination'
		render 'new'
	end
  end

  def destroy
  end
end
