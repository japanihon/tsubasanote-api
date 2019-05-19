class User < ApplicationRecord
  has_one_attached :icon

  after_update :process_image_convert

  def process_image_convert
    icon.variant(resize: '100x100').processed
  end
end
