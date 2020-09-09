class AccountsController < ApplicationController

  def index
    @posts = Post.active
  end

  def show
  end
end
