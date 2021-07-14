class User < ApplicationRecord
    has_secure_password
    has_many :favorites
    has_many :pets, through: :favorites
    
    has_many :rehomings
    has_many :pets,through: :rehomings


    validates :email, :role , presence: true
    validates :username, presence: true

    validates :username,:email, uniqueness: true 
end
