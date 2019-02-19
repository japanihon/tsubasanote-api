class CreateNoteLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :note_labels do |t|
      t.integer :note_id
      t.integer :label_id

      t.timestamps
    end
  end
end
