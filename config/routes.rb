# frozen_string_literal: true

Rails.application.routes.draw do
  resources :teams
  resources :users
  get "up" => "rails/health#show", as: :rails_health_check

  root 'dashboard#index'
end
