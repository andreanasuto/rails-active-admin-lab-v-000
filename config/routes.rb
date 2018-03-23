Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, :songs
  
  get '/artists/new', to: 'artists#show'
  
  root to: 'artists#index'
end
