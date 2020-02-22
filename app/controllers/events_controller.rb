class EventsController < ApplicationController
    
    def index
        @events=Event.all.order('created_at desc')
        respond_to do |format|
            format.html  # index.html.erb
            format.json  { render :json => @events }
        end
    end


    def new
        @event=Event.new
    end


    def show
       @event= Event.find(1) 
    end

end
