class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  validates :title, presence: true
  validates :content, length: { maximum: 2000 }  # 文字数制限
  validate :image_presence

  private

  def image_presence
    errors.add(:image, "画像を添付してください") unless image.attached?
  end
end