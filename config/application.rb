require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
# require "active_record/railtie"
# require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GetHelpToRetrain
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults '6.0'
    Rails.autoloaders.main.ignore("#{Rails.root}/app/admin")

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.exceptions_app = routes

    config.i18n.default_locale = :'en-GB'

    # Explicitly load middleware classes
    Dir.glob(Rails.root.join('app', 'middleware', '*.rb')) { |f| require f }
    config.admin_mode = ENV['ADMIN_MODE'] == 'true'
    config.middleware.insert_before Rails::Rack::Logger, StatusReport
    config.google_analytics_tracking_id = ENV['GOOGLE_ANALYTICS_TRACKING_ID']
    config.git_commit = ENV['GIT_SHA']
    config.sentry_dsn = ENV['SENTRY_DSN']
    config.environment_name = ENV['ENVIRONMENT_NAME'] || 'development'
    config.host_name = Socket.gethostname
    config.contentful_api_key = ENV['CONTENTFUL_API_KEY']
    config.contentful_preview_api_key = ENV['CONTENTFUL_PREVIEW_API_KEY']
    config.contentful_space = ENV['CONTENTFUL_SPACE']
  end
end
