class SessionsController < ApplicationController

	def new
		@user = User.new
	end

	def create
		user_params = params.require(:user).permit(:email, :password)
		# this confirms email/pw is correct
		@user = User.confirm(user_params)
		if @user
			login(@user)
			flash[:success] = "Welcome to Sess"
			redirect_to @user
		else
			flash[:error] = "Incorrect email and/or password, please try again."
			redirect_to login_path
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "Logged Out"
		redirect_to root_path
	end

end
