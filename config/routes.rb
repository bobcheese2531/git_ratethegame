Rails.application.routes.draw do
  devise_for :users
  resources :games
  resources :users, only: [:show]
  
  root "games#index"
end
