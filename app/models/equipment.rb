class Equipment < ApplicationRecord
  belongs_to :equip_type
  validates :equip_type_id, presence: true
end
