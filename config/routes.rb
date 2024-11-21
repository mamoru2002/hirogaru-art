Rails.application.routes.draw do
  # deviseのユーザー認証関連
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # ゲストログイン
  devise_scope :user do
    post 'guest_login', to: 'users/sessions#guest_login', as: :guest_login
  end

  # ホーム画面を投稿一覧に設定
  root "posts#index"

  # ユーザー関連（プロフィール、一覧など）
  resources :users, only: [:index, :show, :edit, :update]

  # PWA関連
  namespace :pwa do
    get "service-worker" => "rails/pwa#service_worker", as: :service_worker
    get "manifest" => "rails/pwa#manifest", as: :manifest
  end

  # 投稿関連
  resources :posts
end