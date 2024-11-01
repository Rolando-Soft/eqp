module EquipmentHelper
  def warrant_to_expire?(equipment)
    equipment.warranty_exp.present? && equipment.warranty_exp < 1.month.from_now
  end
end
