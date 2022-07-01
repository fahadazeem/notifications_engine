# frozen_string_literal: true

NotificationEngine::Engine.routes.draw do
  resources :notifications do
    collection do
      delete 'destroy_multiple'
    end
  end
  root to: 'notifications#index'
end
