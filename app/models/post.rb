class Post < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  validates :content, length: { maximum: 250 }
  validates :summary, length: { maximum: 250 }
end
