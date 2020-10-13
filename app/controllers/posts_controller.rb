class PostsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_params, only:[:show]
  
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

  def show
    @comment = Comment.new
  end

  private
  def set_params
    @post = Post.find(params[:id]) if params[:id].present?
  end

  def post_params
    params.require(:post).permit(:image,
                                :image_cache,
                                :description
                                )
  end
end
