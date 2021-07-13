class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :animal_type,:breed,:age,:description,:gender,:url,:secondary,:image,:status,:rehome
end
