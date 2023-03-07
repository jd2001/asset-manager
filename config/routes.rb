Rails.application.routes.draw do
  root "business_assets#index"
  
  resources :business_assets
  resources :host_types
  resources :info_types
  resources :priorities

  get 'home', to: 'settings#home'

  # get '/host_types/new', to: 'settings#new_host_type'
  # get '/info_types/new', to: 'settings#new_info_type'
  # get '/priorities/new', to: 'settings#new_priority'

  # get '/host_types/create', to: 'settings#create_host_type'
  # get '/info_types/create', to: 'settings#create_info_type'
  # get '/priorities/create', to: 'settings#create_priority'

  # get '/host_types/edit', to: 'settings#edit_host_type'
  # get '/info_types/edit', to: 'settings#edit_info_type'
  # get '/priorities/edit', to: 'settings#edit_priority' 

  devise_for :users
end
