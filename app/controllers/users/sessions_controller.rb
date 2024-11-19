class Users::SessionsController < Devise::SessionsController
  def guest_login
    user = User.find_or_create_by(email: 'guest@example.com') do |guest|
      guest.password = 'securepassword123'
      guest.username = 'ゲストユーザー'
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  def destroy
    super
  end
end