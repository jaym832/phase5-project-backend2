class PetsController < ApplicationController
    # skip_before_action :authorize, only: :create
    def create
        # byebug
        if Pet.where(id:params[:id]).exists?
            favorite=Favorite.create(pet_id:params[:id],user_id:@current_user.id,status:'null')
            # byebug
        else pet= Pet.create(petParams)
        
        if pet.rehome
        rehome=Rehoming.create(pet_id:pet.id,user_id:@current_user.id,status:'null')
        else
        favorite=Favorite.create(pet_id:pet.id,user_id:@current_user.id,status:'null')
        end
        # byebug
     end
    end

    def findPet
        # byebug
        pets=Pet.where(breed:params[:breed],gender:params[:gender])
        # byebug
        render json:pets

    end

    def index
        pets=Pet.all

        render json:pets
    end

   

    private
    def petParams
        params.permit(:name,:animal_type,:breed,:secondary,:age,:gender,:image,:url,:status,:description,:favorite,:rehome)
    end
end
