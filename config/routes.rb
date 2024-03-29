Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: "users/registrations"
  }
  root 'scenes#index'
  resources :users, only: [:edit, :update]
  resources :scenes, only: [:index, :new, :create, :edit, :update, :show, :destroy] do
    resources :comments, only: :create
  end
end
