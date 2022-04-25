class EventAttendancesController < ApplicationController
  before_action :authenticate_user!

  def new
    @event_attendance = EventAttendance.new
  end

  def create
    @event_attendance = current_user.event_attendances.build(event_attendance_params)

    if @event_attendance.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_attendance_params
    params.require(:event_attendance).permit(:attended_event_id, :attendee_id)
  end
end
