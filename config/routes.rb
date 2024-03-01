Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"

  resources :books do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:destroy]
  # member do
  #   get :decline
  #   get :accept
  # end

  get "up" => "rails/health#show", as: :rails_health_check

  get "dashboard", to: 'pages#dashboard', as: :dashboard
end
