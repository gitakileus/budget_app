Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'

  resources :groups, only: [:index, :new, :create]
  resources :payments, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
