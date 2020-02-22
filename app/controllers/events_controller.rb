class EventsController < ApplicationController
    
    def index
        @events=Event.all.order('created_at desc')
        respond_to do |format|
            format.html  # index.html.erb
            format.json  { render :json => @events }
        end
    end

    def show
        @event=Event.find(params[:id])
    end

    def new
        @event=Event.new()
    end
    
    def create
        event = current_user.events.create(event_params)
        redirect_to event
    end
    
    def edit
        @event=Event.find(params[:id])
    end
    
    def update
        event = Event.find(params["id"])
        event.update(event_params)
        redirect_to event
    end
    
    def destroy
        Event.find(params["id"]).destroy
        redirect_to "/events"
    end
    
    private
    
    def event_params
        params.require(:event).permit(:user_id, :availble_places, :sport_id, :tipo)
    end

end
