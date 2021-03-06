class Pet < ApplicationRecord
    has_many :favorites, :dependent => :destroy
    has_many :users, through: :favorites

    has_many :rehomings, :dependent => :destroy
    has_many :users, through: :rehomings
end
