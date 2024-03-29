require_relative 'boot'
require 'csv'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module Eatery
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
    config.time_zone = 'Tokyo'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
    address: 'smtp3.gmoserver.jp',
    domain: 'factoru.jp',
    port: 587,
    user_name: 'factoring@factoru.jp',
    password: '$Az4gmMn',
    authentication: 'plain',
    enable_starttls_auto: true
    }
  end

end
