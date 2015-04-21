# require 'flickraw'
require 'httparty'

class WelcomeController < ApplicationController

  def index
  end

  # def search


    # FlickRaw.api_key="04984bb3307b34805b31d3230a5c5b31"
    # FlickRaw.shared_secret="5fc20f0dcb83e30d"
    # flickr.places.find(params[:search])

  #
  #
  # @search = params[:search]
  # @api_call= HTTParty.get("https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=04984bb3307b34805b31d3230a5c5b31&tags=#{@search}&format=rest")




def search
  @search = params[:search]

    @farm_id = HTTParty.get("https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=04984bb3307b34805b31d3230a5c5b31#{@search}&format=json&nojsoncallback=1").parsed_response["photos"]["photo"]["farm"]
    @server_id = HTTParty.get("https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=04984bb3307b34805b31d3230a5c5b31#{@search}&format=json&nojsoncallback=1").parsed_response["photos"]["photo"]["server"]
    @id = HTTParty.get("https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=04984bb3307b34805b31d3230a5c5b31#{@search}&format=json&nojsoncallback=1").parsed_response["photos"]["photo"]["id"]
    @secret = HTTParty.get("https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=04984bb3307b34805b31d3230a5c5b31#{@search}&format=json&nojsoncallback=1").parsed_response["photos"]["photo"]["secret"]
  end



end
