class SportsController < ApplicationController
    
    def index
        @sports = Sport.all.order("name desc")
    end
    
    def show
        @sport=Sport.find(params[:id])
    end
    
    def new
        @sport=Sport.new()
    end
    
    def create
        sport = Sport.create(sport_params)
        redirect_to sport
    end
    
    def edit
        @sport=Sport.find(params[:id])
    end
    
    def update
        sport = Sport.find(params["id"])
        sport.update(sport_params)
        redirect_to sport
    end
    
    def destroy
        Sport.find(params["id"]).destroy
        redirect_to "/sports"
    end
    
    private
    
    def sport_params
        params.require(:sport).permit(:name, :numberOfPlayers)
    end
    
end