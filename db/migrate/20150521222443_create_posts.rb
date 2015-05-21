class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user, index: true
      t.references :topic, index: true

      t.timestamps
    end
    add_foreign_key :posts, :users
    add_foreign_key :posts, :topics
  end
end
