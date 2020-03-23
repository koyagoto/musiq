class FavoritesController < ApplicationController

  before_action :set_variables

  def favorite
    favorite = current_user.favorites.new(music_id: @music.id)
    favorite.save
  end

  def unfavorite
    favorite = current_user.favorites.find_by(music_id: @music.id)
    favorite.destroy
  end

  private

  def set_variables
    @music = Music.find(params[:music_id])
    @id_name = "#favorite-link-#{@music.id}"
  end
end
