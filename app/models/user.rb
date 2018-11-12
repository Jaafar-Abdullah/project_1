class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
mount_uploader :user_image, ImageUploader
    has_and_belongs_to_many :groups
  has_many :messages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :join_general_group

  def join_general_group
    group = Group.find_by(group_name: "jj")
    self.groups << group
  end
end
