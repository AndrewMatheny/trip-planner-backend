class StopSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :date, :notes
  has_one :trip
end
