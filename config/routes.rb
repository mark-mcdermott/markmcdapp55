Rails.application.routes.draw do
  resources :posts
  resources :users
  resources :models

  root   'home#index'
  get    '/help',           to: 'help#index'
  get    '/signup',         to: 'users#new'
  get    '/login',          to: 'sessions#new'
  post   '/login',          to: 'sessions#create'
  get    'sessions/new'
  delete '/logout',         to: 'sessions#destroy'
  
  
end
