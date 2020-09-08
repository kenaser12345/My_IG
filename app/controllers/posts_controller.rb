class PostsController < ApplicationController

  def show
  end

  def create
    @post = Post.new(post_params)
  end

  def new
    @post = Post.new
  end

  private
  def post_params
    params.require(:post).permit(:image,
                                :image_cache
                                )
  end
end
