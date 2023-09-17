Rails.application.routes.draw do
  get 'hangouts/index'
  devise_for :users
  
  resources :messages, only: [:create]

  root 'hangouts#index'
end
