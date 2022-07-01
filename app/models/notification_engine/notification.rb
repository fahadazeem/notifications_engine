# frozen_string_literal: true

module NotificationEngine
  class Notification < ApplicationRecord
    acts_as_paranoid
    belongs_to :user, class_name: NotificationEngine.user_class.to_s

    enum importance: {
      error: 0,
      warning: 1,
      info: 2
    }
  end
end
