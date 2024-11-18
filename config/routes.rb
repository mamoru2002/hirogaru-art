Rails.application.routes.draw do
  # deviseのユーザー認証関連
  devise_for :users

  # ホーム画面を投稿一覧に設定
  root "posts#index"

  # ユーザー関連（プロフィール、一覧など）
  resources :users, only: [:index, :show, :edit, :update]

  # PWA関連
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # 投稿関連
  resources :posts
end