class AttendancesController < ApplicationController


  def new
    @event = Event.find(params[:id])
    @attendance = @event.Attendances.build
  end

  def create
    @event = Event.find(params[:id])
    @attendance = @event.Attendances.build(attendance_params)
  end

  private
    def attendance_params
        params.require(:attendance).permit(:email)
    end
end
