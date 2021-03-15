# frozen_string_literal: true

Rails.application.routes.draw do
  # index route
  root to: 'home#index'

  # watch routes
  get '/watch/:id', to: 'watch#show'

  # about route
  get '/about', to: 'about#index'

  # user dashboard route
  get '/dashboard', to: 'dashboard#index'

  # authentication
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }

  # api routes
  namespace :api do
    namespace :v1 do
      get 'episodes/index'
      post 'episodes/create'
      get '/show/:id', to: 'episodes#show'
      delete '/destroy/:id', to: 'episodes#destroy'
    end
  end
end
