Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations",
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  root 'scenes#index'
  resources :users, only: [:edit, :update]
  resources :scenes, only: [:index, :new, :create, :edit, :update, :show, :destroy] do
    resources :comments, only: :create
  end
end
