class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :post_id
      t.references :author, null: false, foreign_key: {
        to_table: :users
      }
      t.references :posts, null: false, foreign_key: true

      t.timestamps
    end
  end
end
