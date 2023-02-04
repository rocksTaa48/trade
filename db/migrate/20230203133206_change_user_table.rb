class ChangeUserTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :admin
    remove_column :users, :seller
    add_column :users, :role, :integer, default: 0, null: false
  end
end
