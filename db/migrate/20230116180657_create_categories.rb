class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.string :body
      t.string :img_url

      t.timestamps
    end
  end
end
