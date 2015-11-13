class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:display]

  def welcome
  end

  def display
    if params[:tag]
      if params[:name] == "like"
        @posts = Post.tagged_with(params[:tag]).order("created_at DESC").paginate(page: params[:page])
      else
        @posts = Post.where(user_id: current_user).tagged_with(params[:tag]).order("created_at DESC").paginate(page: params[:page])
      end
    else
      if params[:name] == "like"
        @posts = Post.order("created_at DESC").paginate(page: params[:page])
      else
        @posts = Post.where(user_id: current_user).order("created_at DESC").paginate(page: params[:page])
      end
    end
  end

end
