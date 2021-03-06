require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Inventory
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Add
    config.i18n.default_locale = 'pt-BR'
    config.time_zone = 'Brasilia'
    config.encoding = 'utf-8'

    config.generators do |g|
      g.assets                  false
      g.helper                  false
      # g.test_framework          nil
    end 

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
