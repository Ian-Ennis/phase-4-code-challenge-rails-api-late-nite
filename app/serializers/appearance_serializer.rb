class AppearanceSerializer < ActiveModel::Serializer
  attributes :id, :rating
  has_one :episode
  has_one :guest
end
