Rails.application.routes.draw do
  devise_for :users	
  resources :user_stocks, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :friendships, only: [:create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get 'my_stocks', to: 'users#my_stocks'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friends', to: 'users#search'
end
