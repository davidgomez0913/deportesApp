class EventsUsersController < ApplicationController
    
    def index
        @event_users = EventUser.all
    end
    
    def create
        @event_user = EventUser.new(event_id: @event.id, user_id: current_user.id)
        if @event_user.save
            redirect_to @event
        end
    end
    
    
end