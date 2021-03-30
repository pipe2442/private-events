Rails.application.routes.draw do
  resources :users
  resources :events
  resources :sessions

  # Session Routes
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  
  root "events#index"

end
