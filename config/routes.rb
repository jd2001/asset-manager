Rails.application.routes.draw do
  get 'companies/index'
  get 'companies/edit'
  root "business_assets#index"
  
  resources :business_assets

  devise_for :users
end
