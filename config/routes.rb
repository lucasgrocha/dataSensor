require 'sidekiq/web'

Rails.application.routes.draw do
  get 'main/dashboard'
  devise_for :users
  mount Sidekiq::Web => '/sidekiq'
end
