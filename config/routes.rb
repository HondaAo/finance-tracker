Rails.application.routes.draw do
  
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users

  root 'welcome#index'

  get 'portfolio', to: 'users#myportfolio'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friend', to: 'users#search'
  resources :friendships, only: [:create, :destroy]
end
