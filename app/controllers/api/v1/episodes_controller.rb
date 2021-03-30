# frozen_string_literal: true
class Api::V1::EpisodesController < ApplicationController
  def index
    episode = Episodes.all.order(created_at: :desciption)
    render json: episode
  end

  def create
    episode = Episode.create!(episode_params)
    if episode
      render json: episode
    else
      render json: episode.errors
    end
  end

  def show; end

  def destroy; end
end
