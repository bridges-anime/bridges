class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false

      t.belongs_to :communities, foreign_key: true, null: false
      t.belongs_to :users, foreign_key: true, null: false

      t.timestamps
    end
  end
end
