module EquipmentHelper
  def warranty_to_expire?(equipment)
    equipment.warranty_exp.present? && equipment.warranty_exp < 1.month.from_now && equipment.warranty_exp >= Date.today
  end

  def days_to_expire(equipment)
    (equipment.warranty_exp - Date.today).to_i
  end
end
