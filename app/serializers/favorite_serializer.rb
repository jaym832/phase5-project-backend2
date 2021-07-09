class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  belongs_to :pet
end
