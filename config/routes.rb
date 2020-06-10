Rails.application.routes.draw do
  devise_for :users
  root 'scenes#index'
  resources :users, only: [:edit, :update]
  resources :scenes, only: [:index, :new, :create, :edit, :update]
end
