class CreateLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :labels do |t|
      t.string :name
      t.string :description
      t.string :color

      t.timestamps
    end
  end
end
