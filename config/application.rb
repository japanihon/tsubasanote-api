require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Tsubasanote
  class Application < Rails::Application
    config.generators do |g|
    g.stylesheets false
    g.javascripts false
    g.helper false
    g.test_framework false
    end
  end
end

config.generators do |g|
  g.test_framework :rspec,
    fixtures: true,
    view_specs: false,
    helper_specs: false,
    routing_specs: false,
    controller_specs: true,
    request_specs: false
  g.fixture_replacement :factory_bot, dir: "spec/factories"
end