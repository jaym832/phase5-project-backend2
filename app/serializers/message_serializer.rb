class MessageSerializer < ActiveModel::Serializer
  attributes :id ,:body
  belongs_to :conversation
  belongs_to :user
end
