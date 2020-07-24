Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new]
  resources :points, only: [:index, :show]
end