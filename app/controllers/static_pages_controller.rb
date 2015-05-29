class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:display]

  def display
    @posts = Post.where(user_id: current_user).order("created_at DESC").paginate(page: params[:page])
  end
end
