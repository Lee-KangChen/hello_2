# app/models/post.rb
class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validate do
    unless title.to_s.start_with? 'X'
      errors.add(:title, 'must start with "X"')
    end
  end
end
