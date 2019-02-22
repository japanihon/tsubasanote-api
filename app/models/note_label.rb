class NoteLabel < ApplicationRecord
  belongs_to :note
  belongs_to :label

  validates :note_id, uniqueness: { scope: :label_id }
end
