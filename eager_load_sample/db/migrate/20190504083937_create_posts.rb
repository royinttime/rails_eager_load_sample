class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.belongs_to :author, index: true, foreign_key: { to_table: :authors }
      t.string :title
      t.text :content
      t.decimal :upvotes

      t.timestamps
    end
  end
end
