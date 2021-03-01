Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'episodes/index'
      post 'episodes/create'
      get '/show/:id', to: 'episodes#show'
      delete '/destroy/:id', to: 'episodes#destroy'
    end
  end
  get '/watch/:id', to: 'watch#show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  root to: 'home#index'
end
