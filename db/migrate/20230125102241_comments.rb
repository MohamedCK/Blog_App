class Comments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :comments_counter, default: 0
      t.references :author, null: false, foreign_key: {to_table: :users}
      t.references :post, null: false, foreign_key: {to_table: :posts}
      t.timestamps
    end
  end
end
