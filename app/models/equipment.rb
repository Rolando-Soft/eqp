class Equipment < ApplicationRecord
  belongs_to :equip_type
  validates :serial1, presence: true
end
