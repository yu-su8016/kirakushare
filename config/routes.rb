Rails.application.routes.draw do
  get 'scene/index'
  
  root "scene#index"
end
