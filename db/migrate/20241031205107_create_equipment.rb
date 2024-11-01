class CreateEquipment < ActiveRecord::Migration[7.2]
  def change
    create_table :equipment do |t|
      t.string :serial1
      t.string :serial2
      t.string :mac1
      t.string :tech_id
      t.references :equip_type, null: false, foreign_key: true
      t.date :warranty_exp

      t.timestamps
    end
  end
end
