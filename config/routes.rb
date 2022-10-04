Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "bienvenida", to: "home#index"

  get 'supervisors/new', to: 'supervisors#new'
  post 'supervisors', to: 'supervisors#create'
end
