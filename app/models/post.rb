class Post < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  validates :content, length: { maximum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
   message: "%{value} is not a valid size" }
end
