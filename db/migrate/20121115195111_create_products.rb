class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :manufacturer
      t.string :category
      t.text :description
      t.text :details
      t.float :price

      t.timestamps
    end
  end
end
