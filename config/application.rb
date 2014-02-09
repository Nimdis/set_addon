require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module SetAddon
  class Application < Rails::Application
    config.time_zone = 'Novosibirsk'
    config.i18n.default_locale = :ru
    I18n.enforce_available_locales = false
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.assets.version = '1.0'
  end
end
