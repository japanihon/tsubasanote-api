class AddColumnsToLabels < ActiveRecord::Migration[5.2]
  def change
    add_column :labels, :description, :string
    add_column :labels, :color, :string
  end
end
