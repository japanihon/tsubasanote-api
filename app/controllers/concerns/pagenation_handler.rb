#frozen_string_literal: true

module PagenationHandler
  extend ActiveSupport::Concern

  private

  def set_page
    @page = (params[:page] || 1).to_i
  end

  def page_data_is_exist?(active_record)
    raise ActiveRecord::RcordNotFound if @page > 1 && active_record.blank?
  end
end