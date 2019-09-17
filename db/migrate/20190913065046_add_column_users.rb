class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phonenumber, :string, null: false
    add_index :users, :phonenumber, unique: true
  end
end
