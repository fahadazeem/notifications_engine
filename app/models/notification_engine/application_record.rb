# frozen_string_literal: true

module NotificationEngine
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
