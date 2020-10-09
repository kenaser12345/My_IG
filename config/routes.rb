Rails.application.routes.draw do
  devise_for :accounts

  root "public#index"

  get "/dashboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile
  get "post/like/:post_id" => "likes#save_like", as: :like_post
  post "follow/account" => "accounts#follow_account", as: :follow_account

  resources :accounts, only: [:index]
  resources :posts, only: [:show, :new, :create]
  resources :likes do
    collection do
      post :like
      post :dislike
    end
  end
  resources :comments, only: [:create, :destroy]

end
