class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    @posts = Article.all
  end

  def show
  end

  private

  def set_post
    @post = Article.find(params[:id])
  end
end
