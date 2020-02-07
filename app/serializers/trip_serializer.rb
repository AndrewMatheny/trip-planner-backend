class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :image, :category, :date, :notes, :items, :stops
  has_one :user
end
