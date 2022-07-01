require_relative "lib/notification_engine/version"

Gem::Specification.new do |spec|
  spec.name        = "notification_engine"
  spec.version     = NotificationEngine::VERSION
  spec.authors     = ["ghulamjilani"]
  spec.email       = ["ghulamjilanideveloper@gmail.com"]
  spec.summary     = "Mountable Notification Engine gem for Rails"
  spec.description = "See Summary."
  spec.license     = "MIT"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end
  spec.test_files = Dir["spec/**/*"]

  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'jquery-ui-rails'
	spec.add_dependency 'tzinfo-data'
  spec.add_dependency 'cancancan'
  spec.add_dependency 'rolify'
  spec.add_dependency 'acts_as_paranoid'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'ffaker'
	spec.add_development_dependency 'rspec-rails'
  spec.add_dependency 'rails', '>= 7.0.3'
end
