module ApplicationCable
  class Channel < ActionCable::Channel::Base

  class ChatChannel < ApplicationCable::Channel
    # Called when the consumer has successfully
  # become a subscriber to this channel.
    def subscribed
    end
  end
 

  class AppearanceChannel < ApplicationCable::Channel
  end
  end
end
