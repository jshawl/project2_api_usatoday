# require 'flickraw'
require 'httparty'

class WelcomeController < ApplicationController

  def index
  end

  def search

    secret_key = ENV['secret_key']

    search_value = params[:search].gsub(/\s/,"%20")

    search_results = HTTParty.get("https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=#{secret_key}&tags=#{params[:search]}&format=rest").parsed_response["rsp"]["photos"]["photo"]

    @photos = search_results.first(20)

  end


end
