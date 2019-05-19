class User < ApplicationRecord
  include RemoveSpaces
  include BlankToNil
  include ImageConvert

  has_one_attached :icon

  IMAGE_SIZE_LIST = {
    icon: { normal: {resize: '50x50'}}
  }

  def attached_image
    [:icon]
  end

  def process_image_convert
    icon.variant(resize: '100x100').processed
  end
end