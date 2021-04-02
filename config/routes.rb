Rails.application.routes.draw do
  get 'attendances/new'
  get 'attendances/create'
  get 'attendance/new'
  get 'attendance/create'
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/create'
  # Session Routes
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root "events#index"
  # resources :events do
  #   resource :attendance 
  # end
  resources :users
  resources :sessions
  resources :events
end
