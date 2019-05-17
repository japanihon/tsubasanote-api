module BlankToNil
  extend ActiveSupport::Concern
  included do
    before_save :blank_to_nil
  end

  def blank_to_nil
    attributes.each do |name, value|
      self[:"#{name}"] = nil if !value.is_a?(FalseClass) && value.blank?
    end
  end
end