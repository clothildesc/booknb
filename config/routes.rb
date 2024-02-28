Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"

  resources :books do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: [:destroy]

  get "up" => "rails/health#show", as: :rails_health_check
end
