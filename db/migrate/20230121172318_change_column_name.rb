class ChangeColumnName < ActiveRecord::Migration[7.0]
  def up
    change_column :users, :name, :string, default: ""
  end
  
  def down
    change_column :users, :name, :string, default: nil
  end
end
