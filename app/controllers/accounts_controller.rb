class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:show, :profile]

  def index
    @posts = Post.active
  end

  def profile
    @posts = @account.posts.active
  end

  def show
  end

  private

  def set_account
    @account = Account.find_by(username: params[:username])
  end
end
