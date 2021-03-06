require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DeportesApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.hosts << "c2f57047ec5d432eb18ac1582c86445f.vfs.cloud9.us-east-2.amazonaws.com"
    config.assets.initialize_on_precompile = false
    config.hosts << "f06f5862a5914992a5cc07ef448aee95.vfs.cloud9.us-east-2.amazonaws.com"
    config.hosts << "needpeople.herokuapp.com"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :options]
      end
    end
  end
end
