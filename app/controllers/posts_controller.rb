class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post, notice: '投稿が作成されました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    unless @post.user == current_user
      redirect_to posts_path, alert: '他のユーザーの投稿は編集できません'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: '投稿が更新されました'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @post.user == current_user
      @post.destroy
      redirect_to posts_path, notice: '投稿が削除されました'
    else
      redirect_to posts_path, alert: '他のユーザーの投稿は削除できません'
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :image, :portfolio)
  end
end