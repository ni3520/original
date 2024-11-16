class AddUserIdToDailyRecords < ActiveRecord::Migration[8.0]
  def change
    add_column :daily_records, :user_id, :integer
    add_index :daily_records, :user_id
    add_foreign_key :daily_records, :users
  end
end
