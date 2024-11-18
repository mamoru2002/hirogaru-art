Rails.application.routes.draw do
  # deviseのユーザー認証関連
  devise_for :users

  # ホーム画面の設定
  root "home#index"

  # ユーザー関連（プロフィール、一覧など）
  resources :users, only: [:index, :show, :edit, :update]

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
