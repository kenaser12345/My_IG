Rails.application.routes.draw do
  devise_for :accounts

  root "public#index"

  get "/dashboard" => "accounts#index"
  resource :accounts, only: [:index]

end
