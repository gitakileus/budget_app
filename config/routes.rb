Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'

  # resources :payments, path: 'groups/payments'

  resources :groups, only: [:index, :show, :new, :create] do
    resources :payments, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
