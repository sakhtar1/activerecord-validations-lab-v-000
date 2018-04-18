
class MyValidator < ActiveModel::Validator
  def validate(record)
    unless record.title "Won't Believe", "Secret", "Top [number]", "Guess"
      record.errors[:title] << 'Choose names!'
    end
  end
end
