class GroupsController < ApplicationController
  def show
  end

  def index
    # @messages = Message.all
    @groups = Group.all

  end

  def edit
  end

  def new
    @messages = Message.all
    @message = Message.new 
  end

  def create 
    message = Message.new(message_params)
    message.sender_id = current_user.id
    message.save
    redirect_to request.referer
    # raise
  end

  private
  def message_params
    params.require(:message).permit(:user_id,:body)
  end 
end
