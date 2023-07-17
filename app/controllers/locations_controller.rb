class LocationsController < ApplicationController
  before_action :set_location, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /locations or /locations.json
  def index
    @locations = Location.all
    render json: @locations
  end

  # GET /locations/1 or /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations or /locations.json
  def create
    @location = Location.new(location_params)
    @location.geocode

    if @location.save
      render json: @location, status: :created, location: @location 
    else
      render json: @location.errors, status: :unprocessable_entity 
    end
  end

  # PATCH/PUT /locations/1 or /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.json { render :show, status: :ok, location: @location }
      else
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1 or /locations/1.json
  def destroy
    @location.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_params
      params.require(:location).permit(:street)
    end
end
