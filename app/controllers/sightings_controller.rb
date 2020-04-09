class SightingsController < ApplicationController
  def show
    sighting = Sighting.find_by(id: params[:id])
    render json: sighting, include: [:bird, :location]
  end

  def index
    sightings = Sighting.all
    if sighting:
      render json: sightings, include: [:bird, :location]
    else
      render json: {message: "Sighting not found"}
    end
  end
end
