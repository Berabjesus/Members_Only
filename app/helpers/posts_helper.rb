module PostsHelper
  def user_status_member_name(post)
    user_signed_in? ? post.user.name : 'Anonymous'
  end

  def show_time(post)
    distance_of_time_in_words(Time.now, post.created_at)
  end
end
