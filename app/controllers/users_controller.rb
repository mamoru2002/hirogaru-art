class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]
  before_action :ensure_correct_user, only: [:edit, :update]

  def show
    # @userは set_user で取得済み
  end

  def edit
    # @userは set_user で取得済み
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'プロフィールを更新しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'ユーザーが見つかりません'
  end

  def user_params
    params.require(:user).permit(:username, :bio, :website, :twitter, :instagram, :facebook, :profile_image)
  end

  def ensure_correct_user
    redirect_to users_path, alert: '他のユーザーの情報は編集できません' unless current_user == @user
  end


end