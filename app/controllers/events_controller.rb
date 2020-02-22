class EventsController < ApplicationController
    
    def index
        @events=Event.all.order('created_at desc')
    end

    def new
        @event=Event.new
    end

end
