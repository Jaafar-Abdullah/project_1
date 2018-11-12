class MessagesController < ApplicationController
  def show
  end
  
  def index
    @users = User.all
  end
  
  def edit
  end
  
  def new
    # @messages = Message.all
    @message = Message.new 
  end

  def create 
    message = Message.new(message_params)
    message.sender_id = current_user.id
    message.save
    if message.save
      ActionCable.server.broadcast 'messages',
      message: message.body,
      user: message.user.user_name
      head :ok
    end
    # redirect_to request.referer
    # raise
  end

  private
  def message_params
    params.require(:message).permit(:user_id,:receiver_id,:group_id,:body)
  end 
end
