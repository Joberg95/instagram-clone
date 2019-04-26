class PostsController < ApplicationController
  def create
  @post = Post.create(post_params)
  end

  def index
  end

  def new
    @post = Post.new
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end
end
