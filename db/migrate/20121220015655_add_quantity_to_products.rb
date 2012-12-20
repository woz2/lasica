class AddQuantityToProducts < ActiveRecord::Migration
  def change
    add_column :products, :quantity, :integer, :limit => 1024
  end
end
