class GroupsController < ApplicationController
  def show
    @group = Group.find_by(id: params[:id])
    # @messages = Message.where(group_id: params[:id]).and(Group.find_by(id: params[:id]))
    @new_message = Message.new 

    @group_messages = @group.messages.where.not(group_id: 0)

  end
  
  def index
    # @messages = Message.all
    u1 = User.find_by(id: current_user.id)
    @groups = u1.groups
    
  end
  
  def edit
  end
  
  def new
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
    params.require(:message).permit(:user_id,:group_id,:body)
  end 
end
