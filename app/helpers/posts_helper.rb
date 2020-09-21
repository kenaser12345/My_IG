module PostsHelper
  def liked_by_user?(post_id)
    Like.where(post_id: post_id, account_id: current_account.id).any?
  end
end