class AddColumnsToLabels < ActiveRecord::Migration[5.2]
  def change
    add_column :labels, :fg_color, :string
    add_column :labels, :bg_color, :string
  end
end
