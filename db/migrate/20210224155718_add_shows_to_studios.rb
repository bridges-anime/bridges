class AddShowsToStudios < ActiveRecord::Migration[6.0]
  def change
    add_reference :shows, :studios, foreign_key: true
  end
end
