class Message < ApplicationRecord
    validates :description, presence: true, length: { minimum: 2, maximum: 140 }
    #validates :user_id, presence: true
    default_scope -> { order(updated_at: :desc)}
    
    has_many :user_messages
    has_many :users, through: :user_messages

    
    
end