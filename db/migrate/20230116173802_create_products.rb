class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.string :img_url
      t.integer :quantity, default: 0
      t.decimal :price, precision: 10, scale: 3, null: false
      t.integer :likes_count, default: 0, null: false
      t.integer :solds_count, default: 0, null: false
      
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :subcategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
