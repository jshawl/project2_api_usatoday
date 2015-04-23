class UsersController < ApplicationController

  def index
  end

  def show
    @places = Place.all
    @profile = current_user.profile
  end

  def create
    @profile = current_user.profile
    @profile = Profile.create!(name: params[:name], photo_url: params[:photo_url], hometown: params[:hometown], interests: params[:interests], about_me: params[:about_me])
  end

end
