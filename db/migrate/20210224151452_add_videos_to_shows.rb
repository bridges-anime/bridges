class AddVideosToShows < ActiveRecord::Migration[6.0]
  def change
    add_reference :videos, :shows, foreign_key: true
  end
end
