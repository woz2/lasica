class AddUserNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :text, :limit => 64
  end
end
