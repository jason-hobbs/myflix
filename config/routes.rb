Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  get 'register' => 'users#new'
  get 'sign_in' => 'sessions#new'
  get 'sign_out' => 'sessions#destroy'
  get 'home' => 'videos#index'
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  root "pages#front"
  resources :videos, only: [:show, :index] do
    collection do
      post :search, to: "videos#search"
    end
  end
end
