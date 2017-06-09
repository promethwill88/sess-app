class TracksController < ApplicationController

	def index
		@tracks = Track.all
	end

	def new
		@track = Track.new
	end

	def create
		@track = Track.create(track_params)
		redirect_to tracks_path
	end

	def show
		@track = Track.find_by_id(params[:id])
	end

	# PRIVATE
	private

	def track_params
		params.require(:track).permit(:artist, :title, :url, :notes)
	end

end
