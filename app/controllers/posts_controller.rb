class PostsController < ApplicationController

  def index
    @id = current_user.id
  end

  def new
  end

  def create
  end
end
