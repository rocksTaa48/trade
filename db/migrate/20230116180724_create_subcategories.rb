class CreateSubcategories < ActiveRecord::Migration[7.0]
  def change
    create_table :subcategories do |t|
      t.string :title, null: false
      t.string :body
      t.string :img_url

      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
