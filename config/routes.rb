Rails.application.routes.draw do
  root "pages#home"

  resources :users, only: [:index, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :products, as: 'products'
end
