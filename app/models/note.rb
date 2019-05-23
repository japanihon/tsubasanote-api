class Note < ApplicationRecord
  has_many :note_labels
  has_many :labels, through: :note_labels
  has_many_attached :images
end
