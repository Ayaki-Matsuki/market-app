Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :users, only: [:edit, :update]
  resources :cart_products, only: [:index]
  resources :products, only: [:index] do
    resources :cart_products, only: [:new, :create, :destroy, :update, :edit]
  end
end
