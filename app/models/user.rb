class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Active Storage: プロフィール画像
  has_one_attached :profile_image

  # バリデーション: プロフィール情報
  validates :bio, length: { maximum: 1000 }, allow_blank: true
  validates :website, :twitter, :instagram, :facebook,
    format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), allow_blank: true }
end
