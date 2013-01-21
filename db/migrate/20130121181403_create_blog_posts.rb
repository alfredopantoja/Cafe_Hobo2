class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :body
      t.string :image_url
      t.integer :user_id

      t.timestamps
    end
    add_index :blog_posts, :user_id
  end
end
