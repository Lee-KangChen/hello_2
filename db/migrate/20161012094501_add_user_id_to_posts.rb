# db/migrate/20161012094501_add_user_id_to_posts.rb
class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :user, index: true, foreign_key: true
  end
end
