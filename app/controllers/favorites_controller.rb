class FavoritesController < ApplicationController
    # skip_before_action :authorize, only: :create
def index
    render json: @current_user.favorites
    # render json: Favorite.all
end

def destroy
    # byebug
    pet=Favorite.find_by(id:params[:id])
    pet.destroy
    
    head :no_content
end

end
