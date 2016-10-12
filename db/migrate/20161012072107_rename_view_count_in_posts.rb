# db/migrate/20161012072107_rename_view_count_in_posts.rb
class RenameViewCountInPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :view_count, :views
  end
end
