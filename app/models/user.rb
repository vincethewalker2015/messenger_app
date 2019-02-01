class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    
    has_many :user_messages
    has_many :messages, through: :user_messages, dependent: :destroy
   
end