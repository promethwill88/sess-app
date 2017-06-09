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

	# def edit
	# 	@track = set_track
	# end

	# def update
		# respond_to do |f|
		# 	if @track.update{track_params_update}
		# 		f.json { render :show, status: :ok, location: @track}
		# 	else
		# 		f.json { render json:}
	# end

	# PRIVATE
	private

	def track_params
		params.require(:track).permit(:artist, :title, :url, :notes)
	end

	# def track_params_update
 #      params.require(:track).permit(:artist, :title, :url, :notes, tracks_attributes: [:id,  :_destroy])
 #    end

end
