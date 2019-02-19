class Note < ApplicationRecord
  has_many :user_labels
  has_many :labels, through: :user_labels
end
