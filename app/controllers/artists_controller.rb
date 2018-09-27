class ArtistsController < ApplicationController

# ********modelo index  (para consultar todos los artistas*********
def index
  @artists = Artist.all
  puts @artists
  render json:@artists, status: :ok
end

# ********modelo show  (para consultar un artista especifico (id)*********
def show
    @artists = Artist.find(params[:id])
    puts @artists
    render json:@artists, status: :ok
  end

# ********modelo create*********
def create
    @artist = Artist.create(params.permit(:id, :name, :phone))

    render json:@artist, status: :created
end
# ********modelo update********
def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)

    render json:@artist, status: :upgrated
end
# ********modelo destroy********
def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    render json:@artist, status: :destoyed
end  
  private
def artist_params
   params.permit(:id, :name, :phone)
end
end
