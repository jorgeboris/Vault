Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'bienvenida', to: 'home#index'

  get 'enterprises', to: 'enterprises#index'
  get 'enterprises/new', to: 'enterprises#new'
  get 'enterprises/:id', to: 'enterprises#show'
  get 'enterprises/:id/edit', to: 'enterprises#edit'
  patch 'enterprises/:id', to: 'enterprises#update', as: :enterprise
  post 'enterprises', to: 'enterprises#create'
  delete 'enterprises/:id', to: 'enterprises#destroy'

  get 'supervisors', to: 'supervisors#index'
  get 'supervisors/new', to: 'supervisors#new', as: :new_supervisors
  get 'supervisors/:id', to: 'supervisors#show'
  get 'supervisors/:id/edit', to: 'supervisors#edit'
  patch 'supervisors/:id', to: 'supervisors#update', as: :supervisor
  post 'supervisors', to: 'supervisors#create'
  delete 'supervisors/:id', to: 'supervisors#destroy'

  root to: 'home#index'
end
