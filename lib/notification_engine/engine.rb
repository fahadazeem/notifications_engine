# frozen_string_literal: true

require 'jquery-ui-rails'

module NotificationEngine
  class Engine < ::Rails::Engine
    isolate_namespace NotificationEngine

    config.generators do |g|
      g.test_framework      :rspec, fixture: false
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
      g.assets false
      g.helper false
    end

    config.autoload_paths << "#{Dir.pwd}/app/concerns"
    config.autoload_paths << "#{Dir.pwd}/app/assets"
  end
end
