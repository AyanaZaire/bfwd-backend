class Api::V1::FavoritesController < ApplicationController

  before_action :find_favorite, only: [:destroy]
  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def create
    @favorite = Favorite.create(favorite_params)
    if @favorite.save
      render json: @favorite, status: :accepted
    else
      render json: { errors: @favorite.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    render json: @favorite.destroy
  end

  def destroy_all_on_load
    @favorites = Favorite.destroy_all
    render json: @favorites
  end

  private

  def favorite_params
    params.permit(:entry_id)
  end

  def find_favorite
    @favorite = Favorite.find(params[:id])
  end

end
