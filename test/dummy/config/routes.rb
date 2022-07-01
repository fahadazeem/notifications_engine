Rails.application.routes.draw do
  mount NotificationEngine::Engine => "/notification_engine"
end
