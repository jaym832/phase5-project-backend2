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


    def update
        pet=Pet.find_by(id:params[:id])
        # byebug
        pet.update!(rehomeParams)
    end



    private 

    def rehomeParams
        params.permit(:name,:animal_type,:breed,:secondary,:age,:gender,:image,:url,:description)

    end
end
