class AttendancesController < ApplicationController

	def create
		@user = current_user
		@event = Event.find_by_id(params[:id])
		@attendance = Attendance.new(attendance_params)
		if @attendance.save
			@attendance.user_id << @user.id
			@attendance.event_id << @event
			redirect_to @user
		end
	end

	# PRIVATE
	private

	def attendance_params
		params.require(:attendance).permit(:user_id, :event_id)
	end

end
