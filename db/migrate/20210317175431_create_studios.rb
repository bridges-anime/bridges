class CreateStudios < ActiveRecord::Migration[6.1]
  def change
    create_table :studios do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :logo, null: false

      t.timestamps
    end
  end
end
