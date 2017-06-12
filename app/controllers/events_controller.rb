class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		@event = current_user.events.new(event_params)
		if @event.save
			redirect_to root_path
		end
	end

	# PRIVATE
	private

	def event_params
		params.require(:event).permit(:date, :time, :address, :host)
	end


end
