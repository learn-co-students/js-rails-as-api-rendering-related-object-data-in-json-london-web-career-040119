class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: @birds, only: [:name, :species]
  end
end