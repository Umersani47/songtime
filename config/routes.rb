Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'song/index'

  get 'home/index'
  root 'home#index'
  resources :home
  resources :song
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
