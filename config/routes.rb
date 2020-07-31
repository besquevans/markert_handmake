Rails.application.routes.draw do
  root "products#index"

  resources :users, only: [:index, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :products
end
