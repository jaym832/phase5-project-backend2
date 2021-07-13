class RehomingSerializer < ActiveModel::Serializer
  attributes :id  
  has_one :user
  belongs_to :pet

end
