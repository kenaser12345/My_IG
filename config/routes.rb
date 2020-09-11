Rails.application.routes.draw do
  devise_for :accounts

  root "public#index"

  get "/dashboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile

  resource :accounts, only: [:index]
  resource :posts, only: [:show, :new, :create]
end
