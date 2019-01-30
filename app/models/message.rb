class Message < ApplicationRecord
    validates :description, presence: true, length: { minimum: 2, maximum: 140 }
    validates :user_id, presence: true
    
    belongs_to :user
    
    
end