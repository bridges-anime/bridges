class WatchController < ApplicationController
  def show
    @video = Episodes.find(params[:id])
  end
end
