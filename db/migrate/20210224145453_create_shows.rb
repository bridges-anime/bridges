class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.date :release_date, null: false

      t.integer :seasons, null: false, default: '0'

      t.timestamps
    end
  end
end
