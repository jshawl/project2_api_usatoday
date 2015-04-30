class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @places = Place.all
    @profile = current_user.profile

        redirect_to new_user_profile_path(current_user) unless @profile
    # typically a show action will include a user_id
    # If you only want to show the current user's profile,
    # I recommend removing the users#index method and creating a custom route for the user's profile.
  end

  def create
    @profile = current_user.profile
    # What does the above line do? It is overwritten in the line below.
    @profile = Profile.create!(name: params[:name], photo_url: params[:photo_url], hometown: params[:hometown], interests: params[:interests], about_me: params[:about_me])
  end

end
