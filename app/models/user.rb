class User < ApplicationRecord
  include RemoveSpaces
  include BlankToNil
  # include ImageConvert

  has_one_attached :icon
  has_secure_password validations: true

  validates :mail, presence: true, uniqueness: true

  IMAGE_SIZE_LIST = {
    icon: { normal: {resize: '50x50'}}
  }

  # def attached_image
  #   [:icon]
  # end

  def process_image_convert
    icon.variant(resize: '100x100').processed
  end

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA256.hexdigest(token.to_s)
  end
end