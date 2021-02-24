class ChangeVideosToEpisodes < ActiveRecord::Migration[6.0]
  def change
    rename_table :videos, :episodes
  end
end
