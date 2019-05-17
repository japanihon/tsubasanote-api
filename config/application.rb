require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Tsubasanote
  class Application < Rails::Application

    config.active_record.default_timezone = :local
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    config.i18n.available_locales = %i[ja]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.active_record.time_zone_aware_types = %i[datetime time]
    config.action_view.field_error_proc = proc { |html_tag, _instance| html_tag }

    config.generators do |g|
    g.stylesheets false
    g.javascripts false
    g.helper false
    g.test_framework false
    end
  end
end
