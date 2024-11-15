class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show, :index]
  before_action :ensure_correct_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def show
    # @userは before_action :set_user で設定済み
  end

  def edit
    # @userは before_action :set_user で設定済み
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
  end

  def user_params
    params.require(:user).permit(:username, :bio, :website, 
                                :twitter, :instagram, :facebook, :avatar)
  end

  def ensure_correct_user
    unless @user == current_user
      redirect_to users_path, alert: '他のユーザーの情報は編集できません'
    end
  end
end
