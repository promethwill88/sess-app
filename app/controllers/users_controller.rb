class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		login(@user)
		redirect_to @user
	end

	def show
	   	@user = User.find_by_id(params[:id])
	   	if current_user != @user
	   		redirect_to root_path, notice: "Access Denied"
	   	end
	   	@tracks = @user.tracks
	   	@events = @user.events
	   	@attendances = @user.attendances
	   	
	end

	# PRIVATE
	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

end
