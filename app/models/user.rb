# app/models/user.rb
class User < ActiveRecord::Base
  # has_many :posts
  has_many :writings, class_name: 'Post'
  has_secure_password
end
