class PlacesController < ApplicationController
  before_action :authenticate_user!

  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def create
    @place = Place.create(:location => params[:search])
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
  end


end
