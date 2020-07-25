class SightingsController < ApplicationController
   
    def index
        sightings = Sighting.all
        render json: sightings.to_json(include: [:bird, :location])
      end
       
     def show
        sighting = Sighting.find_by(id: params[:id])
        render json: sighting.to_json(include: [:bird, :location])
    end

# render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
# {
#     "id": 2,
#     "bird": {
#       "id": 2,
#       "name": "Grackle",
#       "species": "Quiscalus Quiscula",
#       "created_at": "2019-05-14T11:20:37.177Z",
#       "updated_at": "2019-05-14T11:20:37.177Z"
#     },
#     "location": {
#       "id": 2,
#       "latitude": 30.26715,
#       "longitude": -97.74306,
#       "created_at": "2019-05-14T11:20:37.196Z",
#       "updated_at": "2019-05-14T11:20:37.196Z"
#     }
#   }

# render json: sighting, include: [:bird, :location]

# "id": 2,
# "bird_id": 2,
# "location_id": 2,
# "created_at": "2019-05-14T11:20:37.228Z",
# "updated_at": "2019-05-14T11:20:37.228Z",
# "bird": {
#   "id": 2,
#   "name": "Grackle",
#   "species": "Quiscalus Quiscula",
#   "created_at": "2019-05-14T11:20:37.177Z",
#   "updated_at": "2019-05-14T11:20:37.177Z"
# },
# "location": {
#   "id": 2,
#   "latitude": 30.26715,
#   "longitude": -97.74306,
#   "created_at": "2019-05-14T11:20:37.196Z",
#   "updated_at": "2019-05-14T11:20:37.196Z"
# }
# }