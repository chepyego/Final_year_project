Rails.application.routes.draw do

  get "/dasgboard" =>'dasgboard#index', as: :dasgboard
  # get 'dasgboard/properties'
  # get 'dasgboard/reports'

  resources :properties
  devise_for :accounts
  root to: 'page#main'
  post 'property/upload' => 'properties#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
