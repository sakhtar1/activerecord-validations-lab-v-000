class Post < ActiveRecord::Base
  validates :title, presence: true, inclusion: { in: %w("Won't Believe", "Secret", "Top [number]", "Guess),
   message: "%{value} is not a valid size" }
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
   message: "%{value} is not a valid category" }
end
