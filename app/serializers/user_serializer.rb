class UserSerializer < ActiveModel::Serializer
  attributes :id ,:username,:zipcode,:password_digest,:email,:f_name,:l_name,:role
end
