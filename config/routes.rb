Rails.application.routes.draw do
  resources :admins
  root to: 'pages#home'

  resources :clients
  resources :services
  resources :business_types
  resources :towns
  resources :markets

  get '/p/:service_id/:town_id', to: 'pages#show', as: "bulk_service"
  get '/t/:market_id/:town_id', to: 'pages#town', as: "public_town"
  get '/s/:market_id/:service_id', to: 'pages#service', as: "public_service"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end