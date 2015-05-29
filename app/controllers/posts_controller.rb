class PostsController < ApplicationController

  before_action :find_post, only: [:like, :dislike, :show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :judge_user, only: [:edit, :update, :destroy]

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag]).order("created_at DESC").paginate(page: params[:page])
    else
      @posts = Post.all.order("created_at DESC").paginate(page: params[:page])
    end
  end

  def show
    @comments = @post.comments.all.order("created_at DESC")
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = "Create successful!"
      redirect_to @post
    else
      flash[:alert] = "Some error!"
      render "new"
    end
  end

  def edit
  end

  def update
    @post.update(post_params)
    if @post.save
      flash[:notice] = "Update successful!"
      redirect_to @post
    else
      flash[:alert] = "Some error!"
      render "edit"
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def like
    @post.liked_by current_user
    redirect_to :back
  end

  def dislike
    @post.disliked_by current_user
    redirect_to :back
  end

  private

    def find_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description, :image, :tag_list)
    end

    def judge_user
      find_post
      if @post.user != current_user
        redirect_to root_path
      end
    end

end
