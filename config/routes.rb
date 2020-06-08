Rails.application.routes.draw do
  devise_for :users
  
  root "scene#index"
  resources :users do
  end
  resources :scenes do
  end
end
