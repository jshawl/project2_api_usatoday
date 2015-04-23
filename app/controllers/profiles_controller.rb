class ProfilesController < ApplicationController

  def edit
  end

  def update
    @profile = current_user.profile
    @profile = Profile.update!(name: params[:name], photo_url: params[:photo_url], hometown: params[:hometown], interests: params[:interests], about_me: params[:about_me])
  end

end
