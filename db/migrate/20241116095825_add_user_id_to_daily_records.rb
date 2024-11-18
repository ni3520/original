class AddUserIdToDailyRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :daily_records, :user_id, :integer, null: false
    add_index :daily_records, :user_id
    add_foreign_key :daily_records, :users
  end
end
