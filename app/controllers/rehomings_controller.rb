class RehomingsController < ApplicationController
    def index
        render json: @current_user.rehomings
        # render json: Favorite.all
    end

    def destroy
        pet= Pet.find_by(id:params[:id])
        
        pet.destroy

        head :no_content

    end
end
