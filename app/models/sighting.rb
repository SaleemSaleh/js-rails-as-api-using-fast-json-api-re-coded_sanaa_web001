class Sighting < ApplicationRecord
  belongs_to :bird
  belongs_to :location
end

class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting)
  end
end