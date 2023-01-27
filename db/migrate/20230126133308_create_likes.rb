class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :post_id
      t.references :author, null: false, foreign_key: {
        to_table: :users
      }
      t.references :posts, null: false, foreign_key: true

      t.timestamps
    end
  end
end
