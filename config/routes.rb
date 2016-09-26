Rails.application.routes.draw do
  root to: 'homes#show', via: :get

  resource :session, only: [:new, :create, :destroy]
  resource :dashboard, only: [:show]

  resources :users, only: [:new, :create, :show]
  resources :shouts, only: [:create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
