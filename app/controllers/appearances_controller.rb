class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new(guest_id: params[:guest_id])
    @episodes = Episode.all
  end

  def create
    episode = Episode.find_by(date: params[:appearance][:episode_id])
    @appearance = Appearance.new(
      episode_id: episode.id,
      guest_id: params[:appearance][:guest_id],
      rating: params[:appearance][:rating]
    )
    @appearance.save
  end
end
