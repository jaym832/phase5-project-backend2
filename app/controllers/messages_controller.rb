class MessagesController < ApplicationController

    def create
        
        message=Message.create!(body:params[:body],conversation_id:params[:id],user_id:@current_user.id)
        render json:message
    end

    def index
        messages=Message.all
        render json: messages
    end





    # before_action do
    #     @conversation = Conversation.find(params[:conversation_id])
    #   end
      
    #   def index
    #     @messages = @conversation.messages
    #     @message = @conversation.messages.new
    #   end
    #   def new
    #     @message = @conversation.messages.new
    #   end
    #   def create
    #     @message = @conversation.messages.new(message_params)
    #     if @message.save
    #       redirect_to conversation_messages_path(@conversation)
    #     end
    #   end
    #   private
    #   def message_params
    #     params.require(:message).permit(:body, :user_id)
    #   end

end
