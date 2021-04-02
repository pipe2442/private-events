class EventsController < ApplicationController
    before_action :authorize, only: [:new, :edit, :update]
    def index
        @events = Event.all
    end
  
    def show
        @users = User.all
        @event = Event.find(params[:id])
    end
  
    def new 
        @event = current_user.events.build
    end
  
    def create     
        @event = current_user.events.build(event_params)
        if @event.save
          redirect_to root_path
        else
          render :new
        end
    end

      
    private
        def event_params
            params.require(:event).permit(:title, :description, :date, :place)
        end
end
