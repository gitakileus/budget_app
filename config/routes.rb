Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'

  resources :groups, only: [:index, :show, :create] do
    resources :payments, only: [:index, :show, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
