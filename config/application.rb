require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OnSchool
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.

    config.time_zone = 'UTC'
    config.exceptions_app = self.routes
    config.active_record.belongs_to_required_by_default = true

    config.generators do |g|
      g.helper      false
      g.javascripts false
      g.stylesheets false
      g.decorator   false

      g.template_engine :slim
      g.fixture_replacement :factory_bot, dir: "spec/factories"

      g.test_framework :rspec,
                       fixtures: true,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: false,
                       request_specs: false
    end
  end
end
