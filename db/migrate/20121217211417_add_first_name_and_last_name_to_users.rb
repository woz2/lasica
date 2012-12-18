class AddFirstNameAndLastNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, :limit => 64
    add_column :users, :middle_name, :string, :limit => 64
    add_column :users, :last_name, :string, :limit => 64
  end
end
