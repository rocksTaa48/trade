class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.belongs_to :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
