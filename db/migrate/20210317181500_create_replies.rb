class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies do |t|
      t.text :body, null: false

      t.belongs_to :users, foreign_key: true, null: false
      t.belongs_to :posts, foreign_key: true, null: false

      t.timestamps
    end
  end
end
