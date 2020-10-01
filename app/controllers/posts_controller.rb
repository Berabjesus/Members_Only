class PostsController < ApplicationController

  def index
    if user_signed_in?
      @id = current_user.id
    else
      @id = 'Not singned in'
    end
  end

  def new
  end

  def create
  end
end
