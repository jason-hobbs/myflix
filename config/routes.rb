Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  get 'home' => 'videos#index'
  resources :videos, only: [:show, :index]
end
