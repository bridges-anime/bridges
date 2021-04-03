class AddVideoPathToEpisodes < ActiveRecord::Migration[6.1]
  def change
    add_column :episodes, :video_path, :string, null: false, default: ""
  end
end
