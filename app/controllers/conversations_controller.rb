class ConversationsController < ApplicationController

    def index
        conversation= Conversation.where(sender_id:@current_user.id )
        .or(Conversation.where(recipient_id:@current_user.id))
        # byebug
     render json: conversation
      end

    def create

        # byebug
        petObj=(params[:pet])
        # byebug

        # pet=Pet.find_by(id:params[:id])
        pet=Pet.find_by(id:petObj[:id])
        
        recipientId=Integer(pet.users.ids.join(','))
        
        
        if Conversation.where(sender_id:@current_user.id, recipient_id:recipientId).exists? 
            
             @conversation = Conversation.find_by(sender_id:@current_user.id, recipient_id:recipientId)
             @message=Message.create!(body:params[:body],conversation_id:@conversation.id,user_id:@current_user.id)
            #  byebug
         else
            @conversation=Conversation.create!(sender_id:@current_user.id,recipient_id:recipientId)
            @message=Message.create!(body:params[:body],conversation_id:@conversation.id,user_id:@current_user.id)
            # byebug

         end
                
    end


    def destroy
        conversation=Conversation.find_by(id:params[:id])
        # byebug
        conversation.destroy
    end


end
