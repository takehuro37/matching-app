Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: :index
  resources :users, only: [:show, :new]

  root to: "posts#index"
end
