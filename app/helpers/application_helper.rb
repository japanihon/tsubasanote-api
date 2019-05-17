module ApplicationHelper

  def single_error(name, errors)
    return "" if errors.nil?
    errors = errors.map { |e| name + e }
    render inline: "<p class='error'>#{errors.join('<br>')}</p>" if errors.present?
  end
end
