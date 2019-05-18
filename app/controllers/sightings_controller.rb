class SightingsController < ApplicationController
    def show
        @sighting = Sighting.find(params[:id])
        render json: @sighting, include: [:bird, :location], except: [:created_at, :updated_at]
    end
end
