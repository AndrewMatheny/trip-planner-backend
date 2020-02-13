class User < ApplicationRecord
    has_many :trips
    validates :username, uniqueness: true
    validates :username, presence: true
end
