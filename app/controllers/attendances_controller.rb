class AttendancesController < ApplicationController
  before_action :authorize, only: %i[new edit update]

  def new
    @events = Event.all
<<<<<<< HEAD
=======
    # @event = Event.find(params[:id])
>>>>>>> testing
    @attendance = Attendance.new
  end

  def create
    @events = Event.all
<<<<<<< HEAD
=======
    # @event = Event.find(params[:id])
>>>>>>> testing
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:event_id, :attendee_id)
  end
end
