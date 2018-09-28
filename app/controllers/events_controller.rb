class EventsController < ApplicationController
def index
        artist = Artist.find(params[:artist_id])
        render json: artist.events, status: :ok
end
# ********modelo show para consultar todos los eventos*********
def todos
    @events = Event.all
    render json: @events, status: :ok
end

# ********modelo index  (para consultar por categoria*********
def category
    @category = Event.where(category:params[:category]).or (Event.wherails re(category:params[:other]))
    
    render json:@category, status: :ok
  end


# ********modelo show para consultar evento especifico (id)*********
def show
    # @artists = Artist.find(params[:id])
    events = Event.find(params[:id])
    
    render json:events, status: :ok
end

      # ********modelo create*********
def create
    event = Event.create(params.permit(:artist_id, :event_name, :description, :date, :time, :avg_rating, :category, :latitude, :longitude))

    render json: event, status: :created  
end  
#********modelo update********
def update
    @events = Event.find(params[:id])
    @events.update(event_params)

    render json:@events, status: :upgrated
end
# ********modelo destroy********
def destroy
    @artist = Artist.find(params[:artist_id])
    @event = @artist.events.find(params[:id])
    @event.destroy

    render json:@event, status: :destoyed
end 
private
def event_params
   params.permit(:event_name, :description, :date, :time, :avg_rating, :category, :latitude, :longitude)
end
end
