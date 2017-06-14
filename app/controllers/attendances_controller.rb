class AttendancesController < ApplicationController

	def create
		@user = current_user
		@event = Event.find_by_id(params[:event_id])
		@attendance = Attendance.new(attendance_params)
		p attendance_params
		@attendance.user = @user
		@attendance.event = @event
		if @attendance.save
			redirect_to @user
		else
			p @attendance.errors.full_messages
			redirect_to root_path
		end
	end

	# PRIVATE
	private

	def attendance_params
		params.permit(:event_id)
	end

end
