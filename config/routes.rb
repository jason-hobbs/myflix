Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  get 'home' => 'videos#index'
  root "videos#index"
  resources :videos, only: [:show, :index] do
    collection do
      post :search, to: "videos#search"
    end
  end
end
