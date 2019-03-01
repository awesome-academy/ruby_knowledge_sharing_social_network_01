class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :post_type
      t.text :content
      t.integer :group_id
      t.string :title
      t.integer :visibility

      t.timestamps
    end
    add_index :posts, :post_type
    add_index :posts, :visibility
  end
end
