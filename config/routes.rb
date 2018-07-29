Rails.application.routes.draw do
  root to: 'home#index'

  resources :computers
  resources :users
end
