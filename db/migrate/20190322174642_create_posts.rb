class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :meme
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end