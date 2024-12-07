source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.2"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
# Railsのアセットパイプラインを提供するライブラリ
# CSSやJavaScript、画像などの静的ファイルを以下のように管理
# ファイルを圧縮してサイズを小さくする
# 開発と本番環境で異なる方法でアセットを提供する（例: キャッシュバスティング）
# ファイル間の依存関係を解決する（例: JavaScriptで他のモジュールを読み込む）
gem "sprockets-rails"
# Use postgresql as the database for Active Record
# pgはPostgreSQLデータベースへの接続を可能にするドライバ
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
# Webサーバーor本番ではアプリケーションサーバに使われることが多い
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
# WebpackやViteなどのビルドツールを使わずにJavaScriptモジュールを管理
# ブラウザ上で直接JavaScriptモジュールをインポートできる
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
# 通常のマルチページアプリケーションに近い形式でSPAのようなUXを提供
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

gem "devise"
gem "mini_magick"
gem "whenever", require: false
gem "zeitwerk", "< 2.7"
ruby "3.1.6"
