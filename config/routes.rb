Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'

  resources :groups, only: [:index, :new, :create] do
    resources :payments, only: [:index, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
