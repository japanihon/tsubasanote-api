class AddColunmToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mail, :string
    add_column :users, :password_digest, :string
    add_column :users, :remember_token, :string
  end
end

