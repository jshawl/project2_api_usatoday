class PlacesController < ApplicationController
  before_action :authenticate_user!

  def index
   @places = Places.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def create
    @place = Place.create(:location => params[:search])
    redirect_to(:back)
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    if @place.update (place_params)
      redirect_to @place
    else
      render :edit
    end
  end


  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to ("/users/show")
    # see users#show for comment
  end

  private

  def place_params
        params.require(:place).permit(:location)
  end

end
