class LikesController < ApplicationController
  def save_like
    @like = Like.new(post_id: params[:post_id], account_id: current_account.id)
    @post_id = params[:post_id]
    existing_like = Like.where(post_id: params[:post_id], account_id: current_account.id)
    respond_to do |format|
      format.js{
        if existing_like.any?
          existing_like.first.destroy
          @success = false
        elsif @like.save
          @success = true
        else
          @success = false
        end

        render "posts/like.js.erb"
      }
    end
  end

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
