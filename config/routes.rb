Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  root to: "sessions#home"

  resources :users

  resources :items do
    resources :reservations do
      resource :dialogs, shallow: true
    end
  end




end
