class SightingsController < ApplicationController


    # ----> now that the resources are created and connected, we should be able to confirm our data has been created by including a basic show action:

    # def show
    #     @sighting = Sighting.find(params[:id])
    #     render json: @sighting
    #   end  This gives us basic output... oNLY SHOWING SIGHTING ID, BIRD ID AND LOCATION ID... lets include more useful info below using a custom hash as done previously... 

    def show
        @sighting = Sighting.find(params[:id])
        render json: { id: @sighting.id, bird: @sighting.bird, location: @sighting.location }
      end

    #   ---> The below owuld also work but includes timestamps sicne nothing is excluded... 
    #   def show
    #     @sighting = Sighting.find(params[:id])
    #     render json: @sighting, include: [:bird, :location]
    #   end
      


      def index
        @sightings = Sighting.all
        render json: @sightings, include: [:bird, :location]
      end
      
end
