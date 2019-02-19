class Label < ApplicationRecord
    has_many :note_labels
    has_many :notes, through: :note_labels
end
