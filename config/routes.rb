Rails.application.routes.draw do
  root to: 'homes#show', via: :get

  resource :session, only: [:new, :create, :destroy]
  resource :dashboard, only: [:show]

  resources :users, only: [:new, :create, :show] do
    post 'follow' => 'following_relationships#create'
  end
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
