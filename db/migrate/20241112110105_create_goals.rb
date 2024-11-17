class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.references :user, foreign_key: true
      t.string :title, null:false
      t.string :level_1_value
      t.string :level_2_value
      t.string :level_3_value
      t.timestamps
    end
  end
end
