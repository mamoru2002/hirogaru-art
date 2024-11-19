namespace :guest_user do
  desc "リセット: 簡単ログインユーザーの投稿やデータを削除"
  task reset: :environment do
    guest_user = User.find_by(email: 'guest@example.com')
    if guest_user
      # ゲストユーザーの関連データを削除
      guest_user.posts.destroy_all
      guest_user.update(bio: "", username: "ゲストユーザー", updated_at: Time.current)
      puts "ゲストユーザーのデータをリセットしました。"
    else
      puts "ゲストユーザーが見つかりませんでした。"
    end
  end
end