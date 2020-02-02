require 'sidekiq/web'

Rails.application.routes.draw do
  get 'data', to: 'data#index'
  get 'main/dashboard'
  root to: 'main#dashboard'
  devise_for :users
  mount Sidekiq::Web => '/sidekiq'
end
