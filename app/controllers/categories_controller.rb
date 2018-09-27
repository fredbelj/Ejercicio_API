class CategoriesController < ApplicationController
    def index
        @category = Category.all
        
        render json:@category, status: :ok
      end
      
      # ********modelo show  (para consultar un artista especifico (id)*********
      def show
          @artists = Artist.find(params[:id])
          puts @artists
          render json:@artists, status: :ok
        end
      
      # ********modelo create*********
      def create
          @category = Category.create(params.permit(:id, :category))
      
          render json:@category, status: :created
      end


end
