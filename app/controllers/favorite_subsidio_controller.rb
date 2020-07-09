# frozen_string_literal: true

class FavoriteSubsidioController < ApplicationController
  def update
    favorite = FavoriteSubsidio.where(subsidio: Subsidio.find(params[:subsidio]), user: current_user)
    if favorite == []
      FavoriteSubsidio.create(subsidio: Subsidio.find(params[:subsidio]), user: current_user)
      @fav_subsidio_exists = true
    else
      favorite.destroy_all
      @fav_subsidio_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
