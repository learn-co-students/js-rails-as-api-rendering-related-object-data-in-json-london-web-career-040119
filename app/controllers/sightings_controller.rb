class SightingsController < ApplicationController

    def index
        @sightings = Sighting.all
        render json: @sightings.to_json(include: [:bird, :location])    end

    def show
        @sighting = Sighting.find(params[:id])
        render json: @sightings.to_json(:include => {:bird => {:only => [:name, :species]},:location => {:only => [:latitude, :longitude]}}
    end
end