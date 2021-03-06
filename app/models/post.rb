# encoding: UTF-8
# app/models/post.rb
class Post < ActiveRecord::Base
  belongs_to :author, class_name: 'User',foreign_key: :user_id
  has_and_belongs_to_many :tags
  belongs_to :user

  validates :title, :content, presence: true
  before_validation :set_content_form_title

  def set_content_form_title
    self.content = title if content.blank?
  end

  # validate :title_must_start_with_x
  #
  # def title_must_start_with_x
  #   unless title.to_s.start_with? 'X'
  #     errors.add(:title, '必須是「X」開頭')
  #   end
  # end
end
