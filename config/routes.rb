Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  get '/artists/new', to: 'artists#show', id: "new"
  get '/artists/edit', to: 'artists#show'

  get '/songs/new', to: 'songs#show'
  get '/songs/edit', to: 'songs#show'

  root to: 'artists#index'
end
