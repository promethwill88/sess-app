class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		login(@user) # log the user in
		redirect_to @user # go to show after create
	end

	def show
	   	@user = User.find_by_id(params[:id])
	   	if current_user != @user
	   		redirect_to root_path, notice: "Access Denied"
	   	end
	   	@tracks = Track.all #showing all tracks now for all users
	   	# @tracks = set_track
	end

	# PRIVATE
	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

	def set_track
      @track = Track.find(params[:id])
    end

end
