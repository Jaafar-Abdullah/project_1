class ChatChannel < ApplicationCable::Channel
    # Called when the consumer has successfully
  # become a subscriber to this channel.
  def subscribed
    @message = Message.find_by(id: params[:id])
    stream_from @message
  end
end