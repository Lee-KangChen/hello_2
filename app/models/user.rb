# app/models/user.rb
class User < ActiveRecord::Base
  has_many :posts
end
