class LikesController < ApplicationController

  def save_like
    @like = Like.new(post_id: params[:post_id], acount_id: current_account.id)
    
    respond_to do |format|
      format.json{
        if @like.save
          {success}
        else
          {fail}
        end
      }
    end
  end
end
