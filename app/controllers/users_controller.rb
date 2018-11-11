class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @messages = Message.where(sender_id: current_user.id, receiver_id: params[:id]).or(Message.where(sender_id: params[:id],receiver_id:current_user.id))
    @message = Message.new
  end

  def group_message
    @user = User.find_by(id: current_user.id)
    # @messages = Message. 

  end

  
end
