class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:display]

  def display
    if params[:tag]
      @posts = Post.where(user_id: current_user).tagged_with(params[:tag]).order("created_at DESC").paginate(page: params[:page])
    else
      @posts = Post.where(user_id: current_user).order("created_at DESC").paginate(page: params[:page])
    end
  end

  def like_list
    if params[:tag]
      @posts = Post.where(user_id: current_user).tagged_with(params[:tag]).order("created_at DESC").paginate(page: params[:page])
    else
      @posts = Post.where(user_id: current_user).order("created_at DESC").paginate(page: params[:page])
    end
  end
end
