class ChangeNoteLabelToNotNull < ActiveRecord::Migration[5.2]
  def up
    change_column :note_labels, :note_id, :integer, null: false
    change_column :note_labels, :label_id, :integer, null: false
  end
  def down
    change_column :note_labels, :note_id, :integer, null: true
    change_column :note_labels, :label_id, :integer, null: true
  end
end
