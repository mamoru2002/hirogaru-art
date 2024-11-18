class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  validates :title, presence: true
  validates :content, length: { maximum: 2000 }  # 文字数制限
  validate :image_presence

  private

  def image_presence
    if portfolio? && !image.attached?
      errors.add(:image, "ポートフォリオの場合は画像を添付してください")
    end
  end
end