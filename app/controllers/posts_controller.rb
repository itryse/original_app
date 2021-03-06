class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update]
  before_action :search_post, only: [:index, :search]
  impressionist :actions=> [:show]
  before_action :go_to_index, only: :edit

  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    post = Post.find(params[:id])
    impressionist(@post, nil, unique: [:session_hash])
    @comment = Comment.new
    @like = Like.new
    @comments = @post.comments.includes(:user)
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def search
    @searches = @q.result
  end

  private

  def post_params
    params.require(:post).permit(:title, :target_time, :genre_id, :image).merge(user_id: current_user.id)
  end

  def search_post
    @q = Post.ransack(params[:q])
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def go_to_index
    @post = Post.find(params[:id])
    if current_user != @post.user
      redirect_to controller: :posts, action: :index
    end
  end

end