Rails.application.routes.draw do
  devise_for :users
  root 'scenes#index'
  resources :users, only: [:edit, :update]
  resources :scenes do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  
end
