class ProfileController < ApplicationController

  def new
    # user = current_user.find(params[:id])
    @profile = current_user.build_profile()
  end

  def create
    @profile = current_user.create_profile!(profile_params)
    redirect session[:previous_url] || root_url
  end

  def update
    @profile = current_user.profile.update(profile_params)
    @profile.save
  end

  private
  def profile_params
    params[:profile].permit(:name, :photo_url, :hometown, :interests, :about_me)
  end

end
