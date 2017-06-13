class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		@user = current_user
		@event = Event.new(event_params)
		if @event.save
			@user.events << @event
			redirect_to @user
		end
	end

	def show
		@event = Event.find_by_id(params[:id])
	end

	# def edit
	# 	@event = Event.find_by_id(params[:id])
	# end

	# def update
	# 	@event = Event.find_by_id(params[:id])
	# 	@event.update_attributes(event_params)
	# 	redirect_to event_path(@event)
	# end

	# def destroy
	# 	@event = Event.find_by_id(params[:id])
	# 	@event.destroy
	# 	redirect_to user_path(@event.user_id)
	# end

	# PRIVATE
	private

	def event_params
		params.require(:event).permit(:date, :time, :address, :host)
	end


end
