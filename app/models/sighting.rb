class Sighting < ApplicationRecord
  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end

class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting)
  end
end