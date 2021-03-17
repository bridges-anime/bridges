class CreateCommunities < ActiveRecord::Migration[6.1]
  def change
    create_table :communities do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :icon, null: false
      t.string :banner, null: false

      t.timestamps
    end
  end
end
