class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @guests = Guest.where(guest_id: params[:guest_id])
  end
end
