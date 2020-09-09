class Station < ApplicationRecord
  belongs_to :room, inverse_of: :stations
  validates_presence_of :room
end
