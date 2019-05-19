module ImageConvert
  extend ActiveSupport::Concern

  include do
    after_update :process_image_convert
  end

  def attached_images
    []
  end

  def process_image_convert
    options = {}
    options = self.class::IMAGE_SIZE_LIST if self.class.const_defined? (:IMAGE_SIZE_LIST)
    attached_images.each do |attach_image|
      options[attach_image].each do |_k, v|
        send(attach_image).variant(v).processed
      end
    end
  end
end