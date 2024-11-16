class CreateDailyRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :daily_records do |t|
      t.references :goal,null: false, foreign_key: true
      t.integer :level_achieved
      t.string :memo
      t.date :record_date, null: false

      t.timestamps
    end
  end
end
