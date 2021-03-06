Rails.application.routes.draw do
  devise_for :members, :controllers => { registrations: 'registrations' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "posts#index"

  resources :members, only: [:new, :create, :index]
  resources :posts, only: [:new, :create, :index, :show]
end
