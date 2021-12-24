Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'

  resources :groups, only: [:index, :show, :new, :create] do
    resources :payments, only: [:new, :create]
  end
end
