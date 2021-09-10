class Api::V1::EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render json: @entries
  end

  private

  def entry_params
    params.permit(:name, :born, :birthplace, :bio, :source, :author, :death, :image)
  end
end
