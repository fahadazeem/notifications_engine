# frozen_string_literal: true

require 'jquery-ui-rails'
require 'notification_engine/engine'
require 'notification_engine/version'

module NotificationEngine
  mattr_accessor :user_class
  mattr_accessor :application_controller
end
