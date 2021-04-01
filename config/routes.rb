Rails.application.routes.draw do

  resources :users
  resources :sessions

  resources :events 

  put 'event/:id/invitation', to: 'events#invitation', as: 'invitation'


  # Session Routes
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  
  root "events#index"

end
