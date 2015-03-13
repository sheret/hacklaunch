class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :author
      t.string :category
      t.integer :view_count

      t.timestamps null: false
    end
  end
end
