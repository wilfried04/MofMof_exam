class Room < ApplicationRecord
  has_many :stations, inverse_of: :room, :dependent => :destroy
  accepts_nested_attributes_for :stations, allow_destroy: false, limit: 3
end
