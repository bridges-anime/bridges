Rails.application.routes.draw do
  get '/watch/:id', to: 'watch#show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  root to: 'home#index'
end
