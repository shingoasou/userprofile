Rails.application.routes.draw do
  root to: 'sessions#new'
  get 'signup',  to: 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end