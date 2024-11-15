class CreateGoals < ActiveRecord::Migration[8.0]
  def change
    create_table :goals do |t|
      t.references :user, foreign_key: true
      t.string :title, null:false
      t.string :unit
      t.integer :level_1_value
      t.integer :level_2_value
      t.integer :level_3_value
      t.timestamps
    end
  end
end
