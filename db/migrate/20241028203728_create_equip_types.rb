class CreateEquipTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :equip_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
