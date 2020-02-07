class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :is_packed
  has_one :trip
end
