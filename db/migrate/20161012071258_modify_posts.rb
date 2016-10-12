# db/migrate/20161012071258_modify_posts.rb
class ModifyPosts < ActiveRecord::Migration
  def change
    add_column :posts, :view_count, :integer
  end
end
