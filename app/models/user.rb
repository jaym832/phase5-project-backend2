class User < ApplicationRecord
    has_secure_password
    has_many :favorites
    has_many :pets, through: :favorites
    
    has_many :rehomings
    has_many :pets,through: :rehomings

    # has_many :conversations
    # has_many :messages, through: :conversations

    validates :email, :role , presence: true
    validates :password, presence: true, length:{minimum: 5}
    validates :username, presence: true

    validates :username,:email, uniqueness: true 
end
