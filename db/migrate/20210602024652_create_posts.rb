class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|

      t.string :title
      t.integer :today_weight
      t.text :today_comment
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
