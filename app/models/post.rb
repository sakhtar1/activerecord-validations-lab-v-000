class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
   message: "%{value} is not a valid category" }
  validates_with validate

  def validate(record)
    unless record.title "Won't Believe", "Secret", "Top [number]", "Guess"
      record.errors[:title] << 'Choose names!'
    end
  end
end


