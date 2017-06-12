class TracksController < ApplicationController

	def index
		@tracks = Track.all
	end

	def new
		@track = Track.new
	end

	def create
		@track = current_user.tracks.new(track_params)
		if @track.save
			redirect_to track_path(@track) 
			
			### To Do: redirect to users#show ###
			
		end
	end
 
	def show
		@track = Track.find_by_id(params[:id])
	end

	def edit
		@track = Track.find_by_id(params[:id])
	end

	def update
		@track = Track.find_by_id(params[:id])
		@track.update_attributes(track_params)
		redirect_to track_path(@track)
	end

	def destroy
		@track = Track.find_by_id(params[:id])
		@track.destroy
		redirect_to root_path

		### To Do: redirect to users#show ###

	end


	# PRIVATE
	private

	def track_params
		params.require(:track).permit(:artist, :title, :url, :notes)
	end


	# def track_params_update
 #      params.require(:track).permit(:artist, :title, :url, :notes, tracks_attributes: [:id,  :_destroy])
 #    end

end
