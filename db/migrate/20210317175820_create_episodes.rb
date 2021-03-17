class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.date :air_date, null: false
      t.string :thumbnail, null: false

      t.belongs_to :shows, foreign_key: true

      t.timestamps
    end
  end
end
