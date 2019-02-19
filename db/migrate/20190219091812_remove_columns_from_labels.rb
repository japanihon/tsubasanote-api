class RemoveColumnsFromLabels < ActiveRecord::Migration[5.2]
  def up
    remove_column :labels, :color, :string
  end
  def down
    add_column :labels, :color, :string
  end
end
