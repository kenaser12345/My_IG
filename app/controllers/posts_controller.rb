class PostsController < ApplicationController
  before_action :authenticate_account!
  def show
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = current_account.posts.build(post_params)

    if @post.save!
      redirect_to dashboard_path, flash: { success: "Post was created successfully!!"}
    else
      redirect_to new_path, flash: { danger: "Post was created fail !!"}
    end
  end



  private
  def post_params
    params.require(:post).permit(:image,
                                :image_cache,
                                :description
                                )
  end
end
