class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.title :title
      t.content :content

      t.timestamps
    end
  end
end
