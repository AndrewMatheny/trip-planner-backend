class Trip < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :stops
end
