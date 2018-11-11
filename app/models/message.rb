class Message < ApplicationRecord
    belongs_to :user
    belongs_to :sender, class_name: "User",foreign_key: "sender_id"
    belongs_to :receiver, class_name: "User",foreign_key: "receiver_id" , optional: true  
    belongs_to :group, optional: true
end
