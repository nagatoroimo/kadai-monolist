Rails.application.routes.draw do
  root to: "toppages#index"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  
  get "sigunup", to: "users#new"
  resources :users, only: [:show, :new, :create]
  
  resources :items, only: [:new]
end
