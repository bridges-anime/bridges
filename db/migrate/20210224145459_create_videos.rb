class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.date :air_date, null: false

      t.string :thumbnail, null: false

      t.timestamps
    end
  end
end
