class EventAttendancesController < ApplicationController
  before_action :authenticate_user!

  def new
    @event_attendance = EventAttendance.new
  end

  def create
    @event_attendance = current_user.event_attendances.new(event_attendance_params)

    if @event_attendance.save
      redirect_to event_path(@event_attendance.attended_event_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_attendance_params
    params.require(:event_attendance).permit(:attended_event_id, :attendee_id)
  end
end
