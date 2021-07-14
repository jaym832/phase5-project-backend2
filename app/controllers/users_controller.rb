class UsersController < ApplicationController
     # skip_before_action :verify_authenticity_token
     skip_before_action :authorize, only: [:create]



     def create
         user=User.create!(userParams)
         session[:user_id]=user.id
         render json: user, status: :created
         
     end
 
 
     def show
         
         render json: @current_user
     end


     def update
        user=User.find_by(id:params[:id])
        # byebug
       if user
        user.update!(userParams)
        # byebug
        render json: user
       else
        render json: {error: "not found"}, status: :not_found
       end
        


     end
 
     private 
     def userParams
         defaults={role: 'client'}
         params.permit(:username,:password,:role,:email,:f_name,:l_name,:zipcode).reverse_merge(defaults)
 
     end
end
