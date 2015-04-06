require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ImMoreLegendThanYou
  class Application < Rails::Application
    config.generators do |g|
      g.helper         false
      g.stylesheets     false
      g.javascripts     false
      g.helper_specs    false
    end

    config.active_record.raise_in_transactional_callbacks = true
    config.autoload_paths << Rails.root.join('lib')
  end
end
