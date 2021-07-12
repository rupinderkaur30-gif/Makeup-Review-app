class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :details
      t.text :description
      t.float :price
      t.string :image
      t.string :category
      t.integer :brand_id

      t.timestamps
    end
  end
end
