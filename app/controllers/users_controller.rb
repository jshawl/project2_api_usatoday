class UsersController < ApplicationController

  def index
  end

  def show
    @places = Place.all

  end


end
