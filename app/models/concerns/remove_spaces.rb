module RemoveSpaces
  extend ActiveSupport::Concern

  included do
    before_save :remove_spaces
  end

  def remove_spaces
    attributes.each do |name, value|
      self[:"#{name}"] = value.sub(/\A[[:space:]]+/, '').sub(/[[:space:]]+\z/, '') if value.present? && value.is_a?(String)
    end
  end
end