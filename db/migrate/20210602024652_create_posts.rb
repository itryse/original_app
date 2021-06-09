class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|

      t.string  :title
      t.string  :target_time
      t.integer :genre_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end