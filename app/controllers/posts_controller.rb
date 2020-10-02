class PostsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new; end

  def create
    @post = current_user.posts.build(post_params)
    # @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: 'Rumor is successfully created.'
    else
      str = 'Rumor not saved!'
      new_line = '<br/>'
      @post.errors.full_messages.each do |msg|
        str << new_line
        str << msg
      end
      respond_to do |format|
        format.html { redirect_to posts_path, alert: str }
      end
    end
  end

  def post_params
    params.permit(:title, :content)
  end
end
