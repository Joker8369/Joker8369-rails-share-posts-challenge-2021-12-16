class ChangePostsUsersToComments < ActiveRecord::Migration[6.1]
  def change
    rename_table :posts_users, :comments
  end
end
