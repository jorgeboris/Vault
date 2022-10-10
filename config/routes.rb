Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'bienvenida', to: 'home#index'

  get 'supervisors', to: 'supervisors#index'
  get 'supervisors/new', to: 'supervisors#new'
  get 'supervisors/:id', to: 'supervisors#show'
  get 'supervisors/:id/edit', to: 'supervisors#edit'
  patch 'supervisors/:id', to: 'supervisors#update', as: :supervisor
  post 'supervisors', to: 'supervisors#create'
  delete 'supervisors/:id', to: 'supervisors#destroy'

  root to: 'home#index'
end
