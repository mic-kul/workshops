Rails.application.routes.draw do
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'

  resources :users, only: [:show]

  devise_for :users
end
