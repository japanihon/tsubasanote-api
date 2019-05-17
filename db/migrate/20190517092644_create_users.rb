class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, comment: 'ユーザー名'
      t.integer :user_type, default: 0
      t.boolean :delete_flg, default: false, null: false
      t.datetime :deleted_at
      t.index :user_type

      t.timestamps
    end
  end
end
