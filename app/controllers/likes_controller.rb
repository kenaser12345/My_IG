class LikesController < ApplicationController

  def like
    @like = Like.new(post_id: params[:post_id], account_id: current_account.id)
    @post_id = params[:post_id]
    existing_like = Like.where(post_id: params[:post_id], account_id: current_account.id)
    if existing_like.any?
      existing_like.first.destroy
    else
      @like.save
    end
  end
end
