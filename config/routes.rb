Rails.application.routes.draw do
  devise_for :accounts

  root "public#index"

  get "/dashboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile
  get "post/like/:post_id" => "likes#save_like", as: :like_post
  post "follow/account" => "account#follow_account", as: :follow_account

  resource :accounts, only: [:index]
  resource :posts, only: [:show, :new, :create]
  resource :likes do
    collection do
      post :like
      post :dislike
    end
  end
end
