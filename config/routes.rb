Rails.application.routes.draw do
  resources :memberships
  root :to => 'rooms#index'

  resources :messages
  resources :rooms
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
