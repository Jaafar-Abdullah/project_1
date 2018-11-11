class GroupsController < ApplicationController
  def show
    @group = Group.find_by(id: params[:id])

  end

  def index
    # @messages = Message.all
   u1 = user.find_by(id: current_user.id)
    @groups = u1.groups

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
