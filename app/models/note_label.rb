class NoteLabel < ApplicationRecord
  belongs_to :note
  belongs_to :label
end
